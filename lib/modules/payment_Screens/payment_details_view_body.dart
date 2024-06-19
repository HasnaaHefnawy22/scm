import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:scm/modules/payment_Screens/thank_you_view.dart';

import '../../shared/styles/color.dart';
import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // const SliverToBoxAdapter(
        //   child: PaymentMethodsListView(),
        // ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: kPrimarywhiteColor,
                      backgroundColor: Color(0xFF033E6E)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log('payment');
                    } else {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ThankYouView();
                      }));
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  child: Text('Confirm'),
                ),
              )),
        ),
      ],
    );
  }
}
