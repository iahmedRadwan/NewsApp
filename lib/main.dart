import 'package:flutter/material.dart';

import 'utils/app_router.dart';
import 'utils/app_theme.dart';
import 'views/home/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRouter.appRouter,
      initialRoute: HomeView.routeName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
