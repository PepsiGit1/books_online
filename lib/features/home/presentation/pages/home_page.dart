import 'package:books_online/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.white, body: const HomeContent());
  }
}
