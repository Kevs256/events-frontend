import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/selected_provider.dart';
import 'pages/create_event_page.dart';
import 'pages/event_page.dart';
import 'pages/favorite_page.dart';
import 'pages/feed_page.dart';
import 'pages/register_page.dart';
import 'pages/login_page.dart';

List<Widget> pages = const [
  LoginPage(),
  RegisterPage(),
  FeedPage(),
  FavoritesPage(),
  EventPage(),
  CreateEventPage()
];

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<SelectedProvider>(context).selectedPage;
    // int selectedFilter = Provider.of<SelectedProvider>(context).selectedFilter;

    return Scaffold(
      body: pages[selectedPage],
    );
  }
}
