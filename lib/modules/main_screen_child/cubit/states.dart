abstract class ChildStates {}

class ChildInitialState extends ChildStates{}

class ChildChangeState extends ChildStates{}

class ChildLimitState extends ChildStates{

  final double limit;

  ChildLimitState(this.limit);

}

class ChildLimitSaveState extends ChildStates{

  final double limitSave;

  ChildLimitSaveState(this.limitSave);

}