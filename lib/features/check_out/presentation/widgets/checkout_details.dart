import 'package:flutter/material.dart';
import 'package:shop_app/core/helper/extensions.dart';

import 'detials_of_amount.dart';

class CheckoutDetails extends StatelessWidget {
  const CheckoutDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          80.0.getVerticalSpacer(),
          const DetailsOfAmount(
            title: 'Order:',
            value: '130\$',
          ),
          20.0.getVerticalSpacer(),
          const DetailsOfAmount(
            title: 'Delevery:',
            value: '50\$',
          ),
          20.0.getVerticalSpacer(),
          const DetailsOfAmount(
            title: 'Order:',
            value: '180\$',
          ),
        ],
      ),
    );
  }
}
