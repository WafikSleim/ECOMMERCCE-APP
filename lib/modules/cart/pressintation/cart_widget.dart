import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/icons_manger.dart';
import 'package:ecommerce_app/modules/common/components.dart';
import 'package:ecommerce_app/modules/common/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/resources/values_manger.dart';

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / AppSize.s5,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              ImageWidget(
                  imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/e-commerce-a4306.appspot.com/o/Image.png?alt=media&token=d2f9d3b5-4c70-4036-bb47-9accac1b0220",
                  width: size.width / AppSize.s5,
                  height: size.width / AppSize.s5),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "France Authentic Jersey 2018 (L) (Home)",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                          color: ColorManger.gunmetal,
                        ),
                        maxLines: AppSize.s2.round(),
                        minFontSize: FontSizeManger.f10,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: AppSize.s20,
                      ),
                      Text(
                        'ADIDAS',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorManger.lightSlateGray),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(IconsManger.delete),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        AppStrings.quantity,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                            fontSize: FontSizeManger.f16,
                            color: ColorManger.gunmetal),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: removeButton(() => null),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p5),
                        child: Text(
                          "2",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                              fontSize: FontSizeManger.f22,
                              color: ColorManger.outerSpace),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: addButton(() => null),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                  child: Text(
                    "180\$",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: FontSizeManger.f16,
                        color: ColorManger.gunmetal
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
