import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/icons_manger.dart';
import 'package:ecommerce_app/modules/common/app_bar.dart';
import 'package:ecommerce_app/modules/common/search_text_field.dart';
import 'package:ecommerce_app/modules/home/pressintation/widgets/product_grid_item.dart';
import 'package:ecommerce_app/modules/home/pressintation/widgets/product_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/values_manger.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sharedAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  AppStrings.subTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                  maxLines: 1,
                  minFontSize: FontSizeManger.f14,
                ),
                SearchField(
                    textEditingController: searchController,
                    onChange: (String value) {
                      log(value);
                    },
                    onSubmitted: (String value) {}),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconsManger.viewList),
                      SvgPicture.asset(IconsManger.viewGrid),
                      const Spacer(),
                      Text(
                        AppStrings.filter,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: FontSizeManger.f14),
                      ),
                      const SizedBox(
                        width: AppSize.s12,
                      ),
                      Text(
                        AppStrings.sort,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: FontSizeManger.f14),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
                //   child: ListView.separated(
                //     itemCount: 20,
                //     shrinkWrap: true,
                //     physics: const NeverScrollableScrollPhysics(),
                //     itemBuilder: (context, index) => const ProductListItem(),
                //     separatorBuilder: (context, index) => Container(width: double.infinity, color: ColorManger.darkSilver, height: AppSize.s1,),
                //   ),
                // ),

                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: AppSize.s3,
                  crossAxisSpacing: AppSize.s3,
                  childAspectRatio: AppSize.s_7,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List<Widget>.generate(
                      20, (index) => const ProductGridItem(),
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
