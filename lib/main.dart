import 'package:events_frontend/config/theme.dart';
import 'package:events_frontend/presentation/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/pages/create_event_page.dart';
import 'presentation/pages/event_page.dart';
import 'presentation/pages/favorite_page.dart';
import 'presentation/pages/feed_page.dart';
import 'presentation/pages/login_page.dart';
import 'presentation/pages/register_page.dart';
import 'providers/selected_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SelectedProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Events',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(),
          '/register': (context) => const RegisterPage(),
          '/login': (context) => const LoginPage(),
          '/feed': (context) => const FeedPage(),
          '/favorites': (context) => const FavoritesPage(),
          '/event': (context) => const EventPage(),
          '/create': (context) => const CreateEventPage()
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeleton();
  }
}
