import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/route_manger.dart';
import 'package:ecommerce_app/modules/common/image_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_strings.dart';
import '../../../../core/resources/values_manger.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height / AppSize.s5_5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteManger.product);
              },
              child: ImageWidget(
                  imageUrl:
                      'https://94a3-41-235-149-104.eu.ngrok.io/assets/images/products/1671068297.png',
                  width: size.width / AppSize.s3,
                  height: size.height),
            ),
            const SizedBox(
              width: AppSize.s10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd   Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd ",
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: AppSize.s4.round(),
                    minFontSize: FontSizeManger.f10,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: AppPadding.p8),
                    child: Text(
                      'ADIDAS',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: ColorManger.lightSlateGray),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '180\$',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  fontSize: FontSizeManger.f16,
                                  color: ColorManger.black),
                        ),
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: Text(
                          AppStrings.addToCart,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                              fontSize: FontSizeManger.f12,
                              color: ColorManger.buttonBlue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
