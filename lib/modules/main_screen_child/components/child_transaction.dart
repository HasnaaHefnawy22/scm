import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/shared/styles/style.dart';

import '../../receipt_screen/receipt_screen.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';


class LastTransactionChildWidget  extends StatelessWidget {
  LastTransactionChildWidget({super.key});
  List<String> transactions=['buying process from Hasnaa','buying process from Hasnaa','buying process from Hasnaa','buying process from Hasnaa','buying process from Hasnaa'];
  List<String> payment=['by cash','by wallet','by cash','by wallet','by wallet'];
  List<String> dateTransaction=['08/04/2024','3/04/2024','27/03/2024','22/03/2024','21/03/2024'];
  List<double> money=[10,2.5,10,12.5,8.5];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ChildCubit(),
      child: BlocConsumer<ChildCubit, ChildStates>(
        listener: (BuildContext context, ChildStates state) {
          if (state is ChildInitialState) print('Parent Initial State');
          if (state is ChildChangeState) print('Parent Change State');
        },
        builder: (context, state) {
          return ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context,index)=>SizedBox(height: 10,),
            physics: const NeverScrollableScrollPhysics(),
// number of children
            itemCount: 5, //collections.length,
            itemBuilder: (BuildContext context, int index) {
              return MaterialButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReceiptScreen()));
              }, child: Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(4.0, 4.0),
                      spreadRadius: 1.0,
                      blurRadius: 15,
                    ),
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(-4.0, -4.0),
                      spreadRadius: 1.0,
                      blurRadius: 15,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Spacer(),
                          Row(

                            children: [
                              Text(
                                payment[index],

                                style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                dateTransaction[index],
                                style: TextStyle(
                                    color: Colors.grey.shade600, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        '${money[index]} EGP',
                        style: Styles.styleBold15,
                      )
                    ],),
                ),
              ));
            },
          );
        },
      ),
    );
  }
}
