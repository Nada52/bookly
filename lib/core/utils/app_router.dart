import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const SplashView();
        },
        //     routes: <RouteBase>[
        //       GoRoute(
        //         path: 'details',
        //         builder: (BuildContext context, GoRouterState state) {
        //           return const DetailsScreen();
        //         },
        //       ),
        //     ],
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
