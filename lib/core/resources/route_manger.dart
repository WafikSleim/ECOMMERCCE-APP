import 'package:ecommerce_app/modules/cart/pressintation/view/cart_view.dart';
import 'package:ecommerce_app/modules/categories/pressintation/view/categories_view.dart';
import 'package:ecommerce_app/modules/checkout_payment/pressintation/view/checkout_payment_view.dart';
import 'package:ecommerce_app/modules/checkout_shipping/pressintation/view/checkout_shipping_view.dart';
import 'package:ecommerce_app/modules/home/pressintation/view/home_view.dart';
import 'package:ecommerce_app/modules/login/pressintation/view/login_view.dart';
import 'package:ecommerce_app/modules/product/pressintation/view/product_view.dart';
import 'package:ecommerce_app/modules/splash/pressintation/view/splash.dart';
import 'package:ecommerce_app/modules/thank_you/pressintation/view/thank_you_view.dart';
import 'package:flutter/material.dart';

class RouteManger {
  static const String splash = '/';
  static const String home = '/home';
  static const String cart = '/cart';
  static const String categories = '/categories';
  static const String checkoutPayment = '/checkoutPayment';
  static const String checkoutShipping = '/checkoutShipping';
  static const String login = '/login';
  static const String product = '/product';
  static const String thankYou = '/thankYou';
}

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch(settings.name) {
      case RouteManger.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteManger.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case RouteManger.product:
        return MaterialPageRoute(builder: (_) => const ProductView());
      case RouteManger.categories:
        return MaterialPageRoute(builder: (_) => const CategoriesView());
      case RouteManger.cart:
        return MaterialPageRoute(builder: (_) => const CartView());
      case RouteManger.login:
        return MaterialPageRoute(builder: (_) => const LogInView());
      case RouteManger.checkoutPayment:
        return MaterialPageRoute(builder: (_) => const CheckoutPaymentView());
      case RouteManger.checkoutShipping:
        return MaterialPageRoute(builder: (_) => const CheckoutShippingView());
      case RouteManger.thankYou:
        return MaterialPageRoute(builder: (_) => const ThankYou());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundRoute());
    }
  }
}

class NotFoundRoute extends StatelessWidget {
  const NotFoundRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ERROR 404'),
    );
  }
}

