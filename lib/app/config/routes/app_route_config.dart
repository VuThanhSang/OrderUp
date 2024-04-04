import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:order_up/app/config/routes/app_route_constants.dart';
import 'package:order_up/app/features/home/screen/home_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/home',
    routes: <RouteBase>[
      ShellRoute(
          builder: (context, state, child) => NestedScrollView(
                floatHeaderSlivers: true,
                headerSliverBuilder: (BuildContext context, bool isScrolled) {
                  return [
                    SliverAppBar(
                      snap: true,
                      automaticallyImplyLeading: false,
                      floating: true,
                      toolbarHeight: 70,
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: TextField(
                                  enabled: false,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(8),
                                    suffixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    hintText:
                                        "What would you like to drink today?",
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(Icons.notifications_none_outlined)
                          ],
                        ),
                      ),
                      bottom: const PreferredSize(
                        preferredSize: Size.fromHeight(1),
                        child: Divider(height: 1),
                      ),
                    )
                  ];
                },
                body: child,
              ),
          routes: [
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => const HomeScreen(),
            ),
          ]),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Route not found: ${state.uri.path}'),
      ),
    ),
  );
  GoRouter get router => _router;
}
