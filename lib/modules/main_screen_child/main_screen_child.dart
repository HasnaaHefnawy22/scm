import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../shared/styles/color.dart';
import '../../shared/styles/style.dart';
import '../main_screen_parent/components/transaction_widget.dart';
import 'components/new_child_item.dart';
import 'components/upper_part_widget.dart';

class MainScreenChild extends StatelessWidget {
  const MainScreenChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // upper part for student name and balance
              UpperPartWidget(),
              //icons
              /////////////////////the edit
              NewChildItem(),
              //ChildIcon(),
              //last transactions
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: Text(
                    "Last Transactions",style: Styles.style22
                ),
              ),
              ///////////////////////////////////////////first transaction////////////////////////////////////////////////////////////
              Expanded(
                child: SingleChildScrollView(
                    child: LastTransactionWidget()),
              ),
              ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ]),
      ),
    );
  }
}
