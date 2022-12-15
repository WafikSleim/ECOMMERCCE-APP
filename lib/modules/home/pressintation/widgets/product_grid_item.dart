import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/route_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:ecommerce_app/modules/common/image_widget.dart';
import 'package:flutter/material.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p4),
      child: Card(
        margin: const EdgeInsets.all(AppSize.s0),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 3,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteManger.product);
                },
                child: const ImageWidget(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/e-commerce-a4306.appspot.com/o/Image.png?alt=media&token=d2f9d3b5-4c70-4036-bb47-9accac1b0220',
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: AppPadding.p8),
                      child: AutoSizeText(
                        "Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd   Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd Argentina sdvi dosvk svlks vlks vvfdinvofdn kfdn f ldkd ",
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: AppSize.s2.round(),
                        minFontSize: FontSizeManger.f10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppPadding.p3),
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
                                    color: ColorManger.black),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            AppStrings.addToCart,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    fontSize: FontSizeManger.f10,
                                    color: ColorManger.buttonBlue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
