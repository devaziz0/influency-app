import 'general-state.dart';

class AppState {
  GeneralState generalState;
  AppState({this.generalState});
  static AppState newAppState({GeneralState generalState}) =>
      new AppState(generalState: GeneralState(bottomBarPosition: 0));

  AppState copyWith({GeneralState generalState}) =>
      new AppState(generalState: generalState ?? this.generalState);
}
