import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:ecommerce_app/modules/common/image_widget.dart';
import 'package:flutter/material.dart';

class SmallProductViewWidget extends StatelessWidget {
  const SmallProductViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / AppSize.s1_5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(
              imageUrl:
              'https://firebasestorage.googleapis.com/v0/b/e-commerce-a4306.appspot.com/o/Image.png?alt=media&token=d2f9d3b5-4c70-4036-bb47-9accac1b0220',
              width: double.infinity,
              height: size.height / AppSize.s3),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: AutoSizeText(
              'Brasil Home 2018',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: FontSizeManger.f16,
                color: ColorManger.gunmetal,
              ),
              minFontSize: FontSizeManger.f10,
              overflow: TextOverflow.ellipsis,
              maxLines: AppSize.s2.round(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
            child: Text(
              '180\$',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: ColorManger.lightSlateGray
              ),
            ),
          )
        ],
      ),
    );
  }
}
