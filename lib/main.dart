import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/router/app_router.dart';
import 'package:riverpod_app/config/theme/app_theme.dart';
import 'package:riverpod_app/providers/state_providers.dart';



void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext contex, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      title: 'Riverpod Providers',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme(isDarkmode: isDarkMode).getTheme(),
    );
  }
}
