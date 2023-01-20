import 'package:drawing_apps/feature/drawing_room/presentation/drawing_room_screen.dart';
import 'package:flutter/material.dart';
import '/core/route/app_route_name.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.drawingRoom:
        return MaterialPageRoute(
          builder: (_) => const DrawingRoomScreen(),
          settings: settings,
        );

      case "/template":
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const SizedBox(),
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }

    return null;
  }
}
