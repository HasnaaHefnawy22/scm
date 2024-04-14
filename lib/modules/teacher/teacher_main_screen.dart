import 'package:flutter/material.dart';

import '../../shared/styles/color.dart';
import '../../shared/styles/style.dart';
import 'components/input_teacher.dart';
class TeacherMainScreen extends StatelessWidget {
  const TeacherMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: Styles.style25white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Grades',
                  labelStyle: Styles.styleBold18,
                ),
                style: Styles.styleBold18,
                items: ['Grade 5', 'Grade 6', 'Grade 7', 'Grade 8']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // Do something with the selected value
                },
              ),
              const SizedBox(height: defaultPadding),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Class',
                  labelStyle: Styles.styleBold18,
                ),
                style: Styles.styleBold18,
                items: ['Class 1', 'Class 2', 'Class 3', 'Class 4']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // Do something with the selected value
                },
              ),
              const SizedBox(height: defaultPadding),
              InputTeacher(),
              const SizedBox(height: defaultPadding),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "send".toUpperCase()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
