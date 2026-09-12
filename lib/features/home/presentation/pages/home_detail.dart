import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/core/utils/format_duration.dart';
import 'package:books_online/core/widgets/bottom_sheet.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/data/model/create_paypal_order_model.dart';
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:books_online/features/home/presentation/widgets/audio_reading.dart';
import 'package:books_online/features/home/presentation/cubit/cubit_bank/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeDetailPage extends StatelessWidget implements AutoRouteWrapper {
  final BookModel book;
  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<HomeCubit>()..loadBookDetail(book)), BlocProvider(create: (_) => getIt<PaymentCubit>())],
      child: this,
    );
  }

  const HomeDetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: AppColors.creamLight,
        actions: [
          if (book.isPremium)
            IconButton(
              onPressed: () {
                showPaymentPopup(
                  context,
                  methods: [
                    PaymentMethod(
                      title: 'BCEL OnePay',
                      subtitle: 'Pay with BCEL OnePay',
                      icon: const Icon(Icons.qr_code_scanner_sharp, color: Colors.red),
                      onTap: () async {
                        final paymentCubit = context.read<PaymentCubit>();

                        final payment = await paymentCubit.generateBcelQr(amount: book.price);

                        if (!context.mounted) return;

                        if (payment == null) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text(paymentCubit.state.mess.isNotEmpty ? paymentCubit.state.mess : 'Payment failed')));

                          return;
                        }

                        final transactionId = payment.transactionId;

                        if (transactionId == null || transactionId.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid transaction ID')));

                          return;
                        }

                        await context.router.push(PaymentRoute(payment: payment, book: book));
                      },
                    ),

                    PaymentMethod(
                      title: 'JDB',
                      subtitle: 'Pay with JDB',
                      icon: const Icon(Icons.account_balance, color: Colors.blue),
                      onTap: () async {
                        final paymentCubit = context.read<PaymentCubit>();

                        final payment = await paymentCubit.generateJdbQr(amount: book.price);

                        if (!context.mounted) return;

                        if (payment == null) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text(paymentCubit.state.mess.isNotEmpty ? paymentCubit.state.mess : 'Payment failed')));

                          return;
                        }

                        final transactionId = payment.transactionId;

                        if (transactionId == null || transactionId.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid transaction ID')));

                          return;
                        }

                        await context.router.push(PaymentRoute(payment: payment, book: book));
                      },
                    ),

                    PaymentMethod(
                      title: 'IB',
                      subtitle: 'Pay with IB',
                      icon: const Icon(Icons.account_balance, color: Colors.green),
                      onTap: () {
                        // IB payment
                      },
                    ),

                    PaymentMethod(
                      title: 'PayPal',
                      subtitle: 'Pay with PayPal',
                      icon: const Icon(Icons.paypal, color: Colors.blue),
                      onTap: () {
                        final paypal = CreatePaypalOrderModel(
                          value: book.price.toStringAsFixed(2),
                          referenceId: book.productId,
                          description: book.title,
                          customId: 'book_${book.id}',
                        );

                        cubit.createPaymentPayPal(paypal);
                      },
                    ),

                    PaymentMethod(
                      title: 'Other Payment',
                      subtitle: 'Pay with another method',
                      icon: const Icon(Icons.payment, color: Colors.orange),
                      onTap: () {
                        // Fifth payment
                      },
                    ),
                  ],
                );
              },
              icon: const Icon(Icons.payment),
            ),

          IconButton(
            onPressed: () {
              cubit.shareText(book);
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),

      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.4,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            color: AppColors.creamLight,
                            height: size.height * 0.35,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 60,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: size.width * 0.3,
                                        height: size.height * 0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          boxShadow: [BoxShadow(color: Colors.black.withOpacity(.18), blurRadius: 15, offset: const Offset(0, 8))],
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(4),
                                          child: Image.network(
                                            '${ApiEndpoints.baseUrl}${book.coverImageUrl ?? ''}',
                                            fit: BoxFit.cover,
                                            errorBuilder: (_, __, ___) {
                                              return Container(color: Colors.grey.shade300, child: const Icon(Icons.book, size: 50));
                                            },
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 18),

                                      Text(
                                        book.title,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF111111)),
                                      ),

                                      const SizedBox(height: 5),

                                      Text(book.author ?? '', style: const TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                            left: 20,
                            right: 20,
                            top: size.height * 0.3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 2))],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    _StatItem(value: '${book.rating ?? 0}', label: 'Rating'),

                                    const _StatItem(value: '262', label: 'Number Of Page'),

                                    const _StatItem(value: 'Eng', label: 'Language'),

                                    _StatItem(value: DurationUtils.format(state.duration), label: 'Audio'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  top: size.height * 0.4,
                  bottom: 0,
                  child: AudioReadingSync(book: book, state: state, onPlayPause: cubit.playPause, onSeek: cubit.seek),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.bronze)),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, color: AppColors.grey)),
      ],
    );
  }
}
