import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/shared/styles/color.dart';
import 'package:scm/shared/styles/style.dart';

import 'components/children_widget.dart';
import 'components/profile_widget.dart';
import 'components/transaction_widget.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class NewMainScreenParent extends StatelessWidget {
  const NewMainScreenParent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>ParentCubit(),
      child: BlocConsumer<ParentCubit,ParentStates>(
        listener: (BuildContext context,ParentStates state){
          if (state is ParentInitialState) print('Parent Initial State');
          if (state is ParentChangeState) print('Parent Change State');
        },
        builder: (context,state){
          return Scaffold(
            body: Column(
              children: [
                ProfileWidget(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: defaultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Children",style: Styles.style22,
                              ),
                            ],
                          ),
                        ),
                        ChildrenWidget(),
                        Padding(
                          padding: const EdgeInsets.only(left: defaultPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text("Last Transactions",style: Styles.style22
                                ),
                              ),
                            ],
                          ),
                        ),
                        LastTransactionWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ) ;
        },
      ),
    );
  }
}
