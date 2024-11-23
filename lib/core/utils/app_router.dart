import 'package:bookly/feature/home/presentation/views/book_details_view.dart';
import 'package:bookly/feature/home/presentation/views/home_view.dart';
import 'package:bookly/feature/search/presentation/views/search_view.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = '/homeView';
  static const String bookDetails = '/bookDetails';
  static const String searchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: bookDetails,
      builder: (context, state) => const BookDetailsView(),
    ),
    GoRoute(
      path: searchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
