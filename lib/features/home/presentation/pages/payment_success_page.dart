import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(),

              // Success icon
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.green.withValues(alpha: 0.12), shape: BoxShape.circle),
                child: const Icon(Icons.check_circle, size: 72, color: Colors.green),
              ),

              const SizedBox(height: 28),

              const Text('Payment Successful', textAlign: TextAlign.center, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

              const SizedBox(height: 12),

              Text(
                'Your payment has been completed successfully.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),

              const SizedBox(height: 32),

              // Book information
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  children: [
                    if (book.coverImageUrl != null && book.coverImageUrl!.isNotEmpty)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          book.coverImageUrl!,
                          width: 64,
                          height: 88,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) {
                            return _bookPlaceholder();
                          },
                        ),
                      )
                    else
                      _bookPlaceholder(),

                    const SizedBox(width: 16),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            book.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                          ),

                          const SizedBox(height: 8),

                          if (book.author != null)
                            Text(
                              book.author!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                            ),

                          const SizedBox(height: 10),

                          Text('${book.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Continue reading
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    // Replace this with your actual reading route.
                    context.router.replace(HomeDetailRoute(book: book));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  ),
                  child: const Text('Continue Reading', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
              ),

              const SizedBox(height: 12),

              // Back to home
              SizedBox(
                width: double.infinity,
                height: 54,
                child: TextButton(
                  onPressed: () {
                    context.router.popUntilRoot();
                  },
                  child: const Text('Back to Home', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bookPlaceholder() {
    return Container(
      width: 64,
      height: 88,
      decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Icon(Icons.menu_book_rounded, color: Colors.grey.shade500, size: 32),
    );
  }
}
