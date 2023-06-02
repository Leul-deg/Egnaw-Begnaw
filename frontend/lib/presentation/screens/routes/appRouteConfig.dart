import 'package:flutter/material.dart';
import 'package:frontend/presentation/screens/organizer/eventCreate/eventCreate.dart';
import 'package:go_router/go_router.dart';
import 'appRouteConstants.dart';
// import '../onboarding/onBoardingScreen.dart';
import '../welcome/welcomeScreen.dart';
import '../login/loginScreen.dart';
import '../signUp/signUpScreen.dart';
import '../errorPage/errorPage.dart';
import '../user/userScreen.dart';
import '../user/eventDetail/eventDetail.dart';
import '../organizer/organizerScreen.dart';
import '../eventDetail/eventDetail.dart';
import '../organizer/editEvent/editEvent.dart';
import '../organizer/upcomingEvent/upcoming.dart';
import '../organizer/profile/organizerprofile.dart';

class MyAppRoute {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      // GoRoute(
      //   name: MyAppRouteConstants.onBoardingRouteName,
      //   path: '/',
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: Onboarding());
      //   },
      // ),
      GoRoute(
        name: MyAppRouteConstants.organizerScreenRouteName,
        path: '/organizerScreen',
        pageBuilder: (context, state) {
          return MaterialPage(child: OrganizerScreen());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.upComingEventRouteName,
        path: '/upComingEvents',
        pageBuilder: (context, state) {
          return MaterialPage(child: UpcomingEvents());
        },
      ),

      GoRoute(
        name: MyAppRouteConstants.eventCreateRouteName,
        path: '/eventcreate',
        pageBuilder: (context, state) {
          return MaterialPage(child: EventCreate());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.welcomeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Welcome());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.eventDetail1RouteName,
        path: '/eventDetails',
        pageBuilder: (context, state) {
          return const MaterialPage(child: EventDetails());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.eventEditRouteName,
        path: '/eventEdit',
        pageBuilder: (context, state) {
          return const MaterialPage(child: EditEvent());
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
        name: MyAppRouteConstants.signupRouteName,
        path: '/signup',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignUp());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.loginRouteName,
        path: '/login',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Login());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profilePageRouteName,
        path: '/profile',
        pageBuilder: (context, state) {
          return MaterialPage(child: OrganizerProfile());
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
    errorPageBuilder: (context, state) =>
        const MaterialPage(child: ErrorPage()),
  );
}
