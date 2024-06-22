import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/modules/teacher/cubit/cubit.dart';
import 'package:scm/modules/teacher/cubit/states.dart';
import 'package:scm/shared/components/custom_app_par.dart';

import '../../shared/styles/style.dart';

class HomeworkMainScreen extends StatelessWidget {
  HomeworkMainScreen({super.key});

  List<String> subject = ['Arabic', 'Arabic', 'Math', 'Science', 'English'];
  List<String> teacherName = [
    'Hager Mohamed',
    'Hager Mohamed',
    'Mayar ahmed',
    'Ahmed Mohamed',
    'Esraa Yasser'
  ];
  List<String> subjectDate = [
    '18/6/2024',
    '17/6/2024',
    '17/6/2024',
    '16/6/2024',
    '16/6/2024'
  ];
  List<String> subjectContent = [
    'homework from page 5 to page 17 + write paragraph about the important of grammar',
    'writing exam next monday in the first three chapters + answer the sheet and the deadline of this sheet will be the next friday',
    'homework from page 22 to page 30 ',
    'download the sheet and answer only the first 5 questions',
    'write paragraph about summer + answer the questions in page 20'
  ];

  List subjectSheet = [
    null,
    'Tap to download the sheet',
    null,
    'Tap to download the sheet',
    null
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TeacherCubit(),
      child: BlocConsumer<TeacherCubit, TeacherStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: buildAppBar(title: 'HomeWork'),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5, //collections.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: double.infinity,
                          //height: 90,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      subject[index],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Styles.styleBold18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '(${teacherName[index]})',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Text(subjectContent[index]),
                                if (subjectSheet[index] != null)
                                  Text(subjectSheet[index],
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      )),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text(
                                      subjectDate[index],
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ));
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
