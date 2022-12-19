import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:ecommerce_app/modules/cart/pressintation/cart_widget.dart';
import 'package:ecommerce_app/modules/common/app_bar.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sharedAppBar(context, isCartView: true),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppPadding.p16
                  ),
                  child: Text(
                    AppStrings.yourCart,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6, // todo
                  itemBuilder: (context, index) => const ProductCartWidget(),
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppPadding.p10
                    ),
                    child: Container(
                      width: double.infinity,
                      height: AppSize.s1,
                      color: ColorManger.gunmetal.withOpacity(.12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
