import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:ecommerce_app/modules/common/image_widget.dart';
import 'package:flutter/material.dart';

class SmallProductItemWidget extends StatelessWidget {
  const SmallProductItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWidget(
          imageUrl: "https://firebasestorage.googleapis.com/v0/b/e-commerce-a4306.appspot.com/o/Image.png?alt=media&token=d2f9d3b5-4c70-4036-bb47-9accac1b0220",
          width: size.width / AppSize.s2_5,
          height: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
          child: AutoSizeText(
            "Customize Your Jersey",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontSize: FontSizeManger.f16,
              color: ColorManger.gunmetal
            ),
            maxLines: AppSize.s1.round(),
            overflow: TextOverflow.ellipsis,
            minFontSize: FontSizeManger.f10,
          ),
        ),
        Text(
          "180\$",
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}