
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/main_screen_parent/cubit/states.dart';

import '../../login_new/cubit/states.dart';

class ParentCubit extends Cubit<ParentStates> {
  ParentCubit() : super(ParentInitialState());

  static ParentCubit get(context)=>BlocProvider.of(context);

  double limit = 20 ;

  void limitValue(value){
    limit=value;
    //emit(ChildLimitState(limit));
  }

}
