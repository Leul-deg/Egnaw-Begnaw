import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'appRouteConstants.dart';
// import '../onboarding/onBoardingScreen.dart';
import '../welcome/welcomeScreen.dart';
import '../login/loginScreen.dart';
import '../signUp/signUpScreen.dart';
import '../errorPage/errorPage.dart';
import '../user/userScreen.dart';
import '../user/eventDetail/eventDetail.dart';
import '../user/eventComment/eventComment.dart';

class MyAppRoute {
  final GoRouter router = GoRouter(
    initialLocation: '/userscreen',
    routes: [
      // GoRoute(
      //   name: MyAppRouteConstants.onBoardingRouteName,
      //   path: '/',
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: Onboarding());
      //   },
      // ),
      GoRoute(
        name: MyAppRouteConstants.welcomeRouteName,
        path: '/welcome',
        pageBuilder: (context, state) {
          return MaterialPage(child: Welcome());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.userScreenRouteName,
        path: '/userscreen',
        pageBuilder: (context, state) {
          return MaterialPage(child: UserScreen());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.eventCommentRouteName,
        path: '/eventComment',
        pageBuilder: (context, state) {
          return MaterialPage(child: EventComment());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.eventDetailRouteName,
        path: '/eventDetail',
        pageBuilder: (context, state) {
          return MaterialPage(child: EventDetail());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.signupRouteName,
        path: '/signup',
        pageBuilder: (context, state) {
          return MaterialPage(child: SignUp());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.loginRouteName,
        path: '/login',
        pageBuilder: (context, state) {
          return MaterialPage(child: Login());
        },
      ),
      // GoRoute(
      //   name: MyAppRouteConstants.profileRouteName,
      //   path: '/profile/:userName/:userID', // Added ':userID' to the path
      //   pageBuilder: (context, state) {
      //     String userName = state.pathParameters['userName']!;
      //     int userID = int.parse(
      //         state.pathParameters['userID']!); // Parse the value as 'int'
      //     return MaterialPage(
      //       child: Profile(
      //         userName: userName,
      //         userID: userID,
      //       ),
      //     );
      //   },
      // ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(child: ErrorPage()),
  );
}
