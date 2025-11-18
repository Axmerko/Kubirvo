import 'dart:io';


import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:kubirovacka_one/screens/dashboard/dashboard_screen.dart';
import 'package:kubirovacka_one/screens/dashboard/lists/lists_screen.dart';
import 'package:kubirovacka_one/screens/dashboard/settings/settings_screen.dart';
import 'package:kubirovacka_one/screens/dashboard/stats/stats_screen.dart'; // Tento by se měl sám opravit
import 'screens/dashboard/calculator/calculator_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/welcome_screen.dart';
import 'services/auth_service.dart';

final getIt = GetIt.instance;

final router = GoRouter(
    initialLocation: GetIt.instance.get<AuthService>().isLoggedIn() ? '/dashboard/calculator' : '/',
    debugLogDiagnostics: true,
    observers: Platform.environment.containsKey('FLUTTER_TEST') ? [] : [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)],
    routes: [
      GoRoute(path: '/', builder: (context, state) => const WelcomeScreen(), routes: [
        GoRoute(path: 'dashboard', builder: (context, state) => const DashboardScreen(), routes: [
          GoRoute(
            path: 'calculator',
            builder: (context, state) => const CalculatorScreen(),
          ),
          GoRoute(
            path: 'lists',
            builder: (context, state) {
              Map<String, dynamic> args = state.extra as Map<String, dynamic>;
              final currentListId = args['current_list_id'] as String?;
              return ListsScreen(currentListId: currentListId);
            },
          ),
          GoRoute(
            path: 'settings',
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: 'stats',
            builder: (context, state) => const StatsScreen(),
          ),
        ]),
        GoRoute(
          path: 'register',
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: 'login',
          builder: (context, state) => const LoginScreen(),
        )
      ])
    ]);
