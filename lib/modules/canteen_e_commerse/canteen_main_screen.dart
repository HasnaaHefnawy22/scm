import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class CanteenMainScreen extends StatelessWidget {
  const CanteenMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CanteenCubit(),
      child: BlocConsumer<CanteenCubit,CanteenStates>(
        listener: (BuildContext context,state){},
        builder: (context,state){
          return Scaffold(
          );
        },

      ),
    );
  }
}
