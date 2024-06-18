import 'package:flutter/material.dart';

import '../../features/home/presentation/views/home_view.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shop app',
      home: HomeView(),
    );
  }
}
