import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/icons_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/resources/values_manger.dart';

Widget removeButton(Function() onTap) => InkWell(
  onTap: onTap,
  child: Container(
    width: AppSize.s40,
    height: AppSize.s40,
    decoration: BoxDecoration(
      color: ColorManger.brightGrey.withOpacity(.40),
      borderRadius: BorderRadius.circular(AppSize.s1),
    ),
    alignment: Alignment.center,
    child: SvgPicture.asset(IconsManger.remove, color: ColorManger.lightSlateGray.withOpacity(.40),),
  ),
);

Widget addButton(Function() onTap) => InkWell(
  onTap: onTap,
  child: Container(
    width: AppSize.s40,
    height: AppSize.s40,
    decoration: BoxDecoration(
      color: ColorManger.brightGrey,
      borderRadius: BorderRadius.circular(AppSize.s1),
    ),
    alignment: Alignment.center,
    child: SvgPicture.asset(IconsManger.add,),
  ),
);