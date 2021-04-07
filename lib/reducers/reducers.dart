import 'package:my_app/reducers/general-state-reducers.dart';
import 'package:my_app/store/app-state.dart';

AppState appStateReducers(AppState state, dynamic action) {
  return AppState(generalState: generalReducer(state.generalState, action));
}
