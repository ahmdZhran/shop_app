// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shop_app/core/di/dependency_injection.dart';
// import 'package:shop_app/features/check_out/logic/cubit/checkout_cubit.dart';
// import '../widgets/checkout_details.dart';
// import '../widgets/custom_checkout_app_bar.dart';
// import '../widgets/lottie_cart_shopping.dart';

// class CheckOutView extends StatelessWidget {
//   const CheckOutView({super.key, required this.totalPrice});
//   final double totalPrice;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const CustomCheckouAppBar(),
//             const LottieCartShopping(),
//             BlocProvider(
//               create: (context) => CheckoutCubit(getIt()),
//               child: CheckoutDetails(
//                 totalPrice: totalPrice,
//               ),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
