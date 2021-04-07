class GeneralState {
  int bottomBarPosition;
  GeneralState({this.bottomBarPosition});
  GeneralState copyWith({int bottomBarPosition}) => new GeneralState(
      bottomBarPosition: bottomBarPosition ?? this.bottomBarPosition);
}
