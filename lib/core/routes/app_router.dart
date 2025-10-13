import '../../decoar.dart';
import '../../main.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/onboarding',
    routes: [
      GoRoute(
        path: '/onboarding',
        name: Routes.onboarding.name,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: '/login',
        name: Routes.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: Routes.signup.name,
        builder: (context, state) => const SiugnUpScreen(),
      ),
      GoRoute(
        path: '/bottomnav',
        name: Routes.bottomnav.name,
        builder: (context, state) => const BottomNavScreen(),
      ),
    ],
  );
}
