import 'package:my_app/actions/app-state-action.dart';
import 'package:my_app/store/app-state.dart';
import 'package:my_app/store/general-state.dart';
import 'package:redux/redux.dart';

Reducer<GeneralState> generalReducer = combineReducers([
  TypedReducer<GeneralState, ChangeNavBarAction>(setPostsChanged),
]);

GeneralState setPostsChanged(GeneralState state, ChangeNavBarAction action) {
  return state.copyWith(bottomBarPosition: action.index);
}
