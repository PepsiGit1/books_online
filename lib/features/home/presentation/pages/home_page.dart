import 'package:flutter/material.dart';

import '../widgets/home_content.dart';

/// Home page with BLoC state management
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: const HomeContent(),
    );
  }
}
