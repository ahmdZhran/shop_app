import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/check_out/logic/cubit/checkout_cubit.dart';
import '../../features/check_out/presentation/views/check_out.dart';
import '../../features/check_out/presentation/views/thank_you_view.dart';
import '../../features/cart/presentation/views/cart_view.dart';
import '../../features/check_out/presentation/views/order_not_confirmed_view.dart';
import '../../features/favorites/cubit/favorit_cubit.dart';
import '../../features/main_bottom_nav_bar/presentation/views/main_view.dart';
import '../../features/product_details/presentation/views/product_details.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/sign_up/logic/cubit/signup_cubit.dart';
import '../../features/sign_up/presentation/views/sign_up_view.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );

      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(getIt()),
                  child: const LoginView(),
                ));

      case Routes.signup:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SignupCubit(getIt()),
                  child: const SignUpView(),
                ));

      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => FavoriteCubit(getIt())),
            ],
            child: const MainView(),
          ),
        );

      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case Routes.cart:
        return MaterialPageRoute(builder: (_) => const CartView());

      case Routes.thankYou:
        return MaterialPageRoute(
          builder: (_) => const ThankYouView(),
        );
      case Routes.orderNotConfirmed:
        return MaterialPageRoute(
          builder: (_) => const OrderNotConfirmed(),
        );
      // Product Details
      case Routes.productDetails:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsView(
                  productId: args['id'],
                  images: args['images'],
                  description: args['description'],
                  price: args['price'],
                  nameOfProduct: args['title'],
                  image: args['image'],
                ));
      case Routes.checkout:
        final totalPrice = settings.arguments as double;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => CheckoutCubit(getIt()),
            child: CheckOutView(
              totalPrice: totalPrice,
            ),
          ),
        );
      default:
        return null;
    }
  }
}
