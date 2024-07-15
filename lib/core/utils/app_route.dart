import 'package:go_router/go_router.dart';
import 'package:plants/features/details_feature/presentation/screens/details_screen.dart';
import 'package:plants/features/home_feature/presentation/screens/home_view.dart';

class AppRoute {
  static const kDetailsView = '/detailsView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kDetailsView,
      builder: (context, state) {
        var map = state.extra as Map;
        return DetailsScreen(
            name: map['name'],
            imageUrl: map['imageUrl']
        );
      }
    ),
  ]);
}
