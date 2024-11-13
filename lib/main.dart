import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/product/navigation/app_router.dart';
import 'package:social_app/product/provider/app_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: const _MyAppContent(),
    );
  }
}

class _MyAppContent extends StatelessWidget {
  const _MyAppContent();

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Social Media',
      themeMode: Provider.of<AppProvider>(context).darkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
