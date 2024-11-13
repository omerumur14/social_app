import 'package:auto_route/auto_route.dart';
import 'package:social_app/feature/chat/view/chat_view.dart';
import 'package:social_app/feature/home/view/home_view.dart';
import 'package:social_app/feature/notification/view/notification_view.dart';
import 'package:social_app/feature/profile/view/profile_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)

/// Project router information
final class AppRouter extends RootStackRouter {
  static const _replaceInRouteName = 'View,Route';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: NotificationRoute.page),
      ];
}
