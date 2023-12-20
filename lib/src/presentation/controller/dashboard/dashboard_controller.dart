part of '../controller.dart';

@riverpod
class DashboardController extends _$DashboardController {
  @override
  int build() {
    return 1;
  }

  changeIndex(int index) {
    state = index;
  }
}
