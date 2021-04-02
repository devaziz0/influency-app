class AppState {
  int bottomBarPosition;
  AppState({this.bottomBarPosition});
  static AppState newAppState({int bottomBarPosition}) =>
      new AppState(bottomBarPosition: bottomBarPosition);
}
