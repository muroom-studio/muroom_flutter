import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouteState extends StateNotifier<String> {
  RouteState() : super('home');

  void setRoute(String route) {
    state = route;
  }
}

final routeProvider =
    StateNotifierProvider<RouteState, String>((ref) => RouteState());
