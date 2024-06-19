import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/styles/color.dart';
import '../cubit/cubit.dart';
import '../cubit/states.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    super.key,
  });
  List<String> parentName = [
    'Ahmed Mohamed Elhefnawy',
    'Ahmed Abdelaker',
    'Shady Ashrf'
  ];
  List<String> schoolName = ['Maria Ozilea School', 'Nabwya Mosa', 'EGC'];
  List<dynamic> studentBalance = [
    [150.50, 30.00],
    [70.00, 103.50],
    [242.00, 170.50]
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ParentCubit(),
      child: BlocConsumer<ParentCubit, ParentStates>(
        listener: (BuildContext context, ParentStates state) {
          if (state is ParentInitialState) print('Parent Initial State');
          if (state is ParentChangeState) print('Parent Change State');
        },
        builder: (context, state) {
          return Stack(
            children: [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kPrimaryOldColor, kPrimaryLightColor]),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: defaultPadding),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                          top: 60.0,
                          left: defaultPadding,
                          right: defaultPadding,
                          bottom: 10.0),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 5.0,
                        color: kPrimarywhiteColor,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 40.0,
                            ),
//name of parent
                            Text(
                              parentName[0],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(
                              height: 3.0,
                            ),
//name of the school
                            Text(
                              schoolName[0],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              height: 40.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
//balance in the all children
                                  Expanded(
                                    child: ListTile(
                                      title: const Text(
                                        "180.5 EGP",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text("balance".toUpperCase(),
                                          textAlign: TextAlign.center,
                                          style:
                                              const TextStyle(fontSize: 12.0)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            elevation: 5.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              radius: 40.0,
//backgroundImage:  AssetImage("assets/last/bussiness-man.png") ,
                            ),
                          ),
                        ],
                      ),
                    ),
//Expanded(child: Image.asset('assets/last/man.png',width:15),)
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
