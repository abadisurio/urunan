import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:urunan/router/urunan_router.dart';

class UrunanGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      resolver.next();
    } else {
      router.push(const SignInRoute());
    }
  }
}
