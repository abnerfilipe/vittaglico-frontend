import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class VittaglicoAuthUser {
  VittaglicoAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<VittaglicoAuthUser> vittaglicoAuthUserSubject =
    BehaviorSubject.seeded(VittaglicoAuthUser(loggedIn: false));
Stream<VittaglicoAuthUser> vittaglicoAuthUserStream() =>
    vittaglicoAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
