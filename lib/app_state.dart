import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _signIschecked = false;
  bool get signIschecked => _signIschecked;
  set signIschecked(bool value) {
    _signIschecked = value;
  }

  List<bool> _inviteCheck = [];
  List<bool> get inviteCheck => _inviteCheck;
  set inviteCheck(List<bool> value) {
    _inviteCheck = value;
  }

  void addToInviteCheck(bool value) {
    inviteCheck.add(value);
  }

  void removeFromInviteCheck(bool value) {
    inviteCheck.remove(value);
  }

  void removeAtIndexFromInviteCheck(int index) {
    inviteCheck.removeAt(index);
  }

  void updateInviteCheckAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    inviteCheck[index] = updateFn(_inviteCheck[index]);
  }

  void insertAtIndexInInviteCheck(int index, bool value) {
    inviteCheck.insert(index, value);
  }

  List<InvitecheckStruct> _Invite = [];
  List<InvitecheckStruct> get Invite => _Invite;
  set Invite(List<InvitecheckStruct> value) {
    _Invite = value;
  }

  void addToInvite(InvitecheckStruct value) {
    Invite.add(value);
  }

  void removeFromInvite(InvitecheckStruct value) {
    Invite.remove(value);
  }

  void removeAtIndexFromInvite(int index) {
    Invite.removeAt(index);
  }

  void updateInviteAtIndex(
    int index,
    InvitecheckStruct Function(InvitecheckStruct) updateFn,
  ) {
    Invite[index] = updateFn(_Invite[index]);
  }

  void insertAtIndexInInvite(int index, InvitecheckStruct value) {
    Invite.insert(index, value);
  }

  final _shareListManager = FutureRequestManager<List<UserRecord>>();
  Future<List<UserRecord>> shareList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UserRecord>> Function() requestFn,
  }) =>
      _shareListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearShareListCache() => _shareListManager.clear();
  void clearShareListCacheKey(String? uniqueKey) =>
      _shareListManager.clearRequest(uniqueKey);
}
