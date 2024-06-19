
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main_screen_parent/cubit/states.dart';

class LoginCubit extends Cubit<ParentStates> {
  LoginCubit() : super(ParentInitialState());
  //TeacherCubit cubit = BlocProvider.of(context);

  static LoginCubit get(context)=>BlocProvider.of(context);

  double limit = 20 ;

  void limitValue(value){
    limit=value;
    //emit(ChildLimitState(limit));
  }

}
