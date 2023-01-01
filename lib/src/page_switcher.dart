import 'package:animations/animations.dart';
import 'package:destiny2_app/src/news/news_bloc.dart';
import 'package:destiny2_app/src/news/news_view.dart';
import 'package:destiny2_app/src/settings/settings_view.dart';
import 'package:flutter/material.dart';

class PageSwitcher extends StatefulWidget {
  final NewsBloc newsBloc;

  const PageSwitcher({super.key, required this.newsBloc});

  static const route = '/';

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      NewsView(newsBloc: widget.newsBloc),
      Container(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Destiny 2'),
        actions: [
          IconButton(
            tooltip: 'App settings',
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => Navigator.pushNamed(context, SettingsView.route),
          ),
        ],
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (child, animation, secondaryAnimation) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) => setState(() => _selectedIndex = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.newspaper_outlined),
            selectedIcon: Icon(Icons.newspaper),
            label: 'News',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'My Guardian',
          ),
        ],
      ),
    );
  }
}