import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components/children_widget.dart';
import 'components/profile_widget.dart';
import 'components/transaction_widget.dart';

class NewMainScreenParent extends StatelessWidget {
  const NewMainScreenParent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Children",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                          // style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  ChildrenWidget(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text("Last Transactions",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)
                              // style: Theme.of(context).textTheme.titleLarge
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
    );
  }
}
