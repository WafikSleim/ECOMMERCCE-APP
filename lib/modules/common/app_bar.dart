import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/icons_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar sharedAppBar(BuildContext context) => AppBar(
  title: Text(
    AppStrings.appBarTitle,
    style: Theme.of(context)
        .textTheme
        .headlineLarge!
        .copyWith(fontSize: FontSizeManger.f16, color: ColorManger.black),
  ),
  leading: const Icon(
    Icons.menu,
    color: ColorManger.lightSlateGray,
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.all(AppPadding.p10),
      child: SvgPicture.asset(IconsManger.cart),
    ),
  ],
);