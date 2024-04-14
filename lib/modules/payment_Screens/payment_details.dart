import 'package:flutter/material.dart';
import 'package:scm/modules/payment_Screens/payment_details_view_body.dart';

import '../../shared/styles/color.dart';
import '../../shared/components/custom_app_par.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
