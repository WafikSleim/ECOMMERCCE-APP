import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/icons_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:ecommerce_app/modules/common/app_bar.dart';
import 'package:ecommerce_app/modules/common/components.dart';
import 'package:ecommerce_app/modules/common/image_widget.dart';
import 'package:ecommerce_app/modules/product/pressintation/widgets/small_product_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final PageController pageController = PageController();

  double currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: sharedAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height / AppSize.s2,
                child: Stack(
                  children: [
                    PageView.builder(
                      itemCount: 3,
                      controller: pageController,
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index.toDouble();
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => ImageWidget(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/e-commerce-a4306.appspot.com/o/Image.png?alt=media&token=d2f9d3b5-4c70-4036-bb47-9accac1b0220",
                          width: size.width,
                          height: double.infinity),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p10),
                          child: SvgPicture.asset(IconsManger.expand),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: DotsIndicator(
                        dotsCount: 3,
                        position: currentIndex,
                        decorator: const DotsDecorator(
                          activeColor: ColorManger.lightSlateGray,
                          color: ColorManger.lightSilver,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AutoSizeText(
                      "France Authentic Home Jersey 2018",
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: FontSizeManger.f24,
                                color: ColorManger.gunmetal,
                              ),
                      maxLines: 2,
                      minFontSize: FontSizeManger.f14,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p5),
                child: Text(
                  'ADIDAS',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: ColorManger.lightSlateGray),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p5),
                child: Text(
                  "180\$",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: FontSizeManger.f20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
                child: Container(
                  width: size.width / AppSize.s1_1,
                  height: AppSize.s1,
                  color: ColorManger.lightSilver,
                ),
              ),
              const SizedBox(
                height: AppSize.s10,
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
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
              ExpansionTile(
                title: Text(
                  AppStrings.productDetails,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: ColorManger.outerSpace,
                      fontSize: FontSizeManger.f16),
                ),
                tilePadding: const EdgeInsets.all(AppPadding.p8),
                childrenPadding: const EdgeInsets.all(AppPadding.p8),
                children: [
                  AutoSizeText(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 8,
                    minFontSize: FontSizeManger.f12,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p5),
                child: ExpansionTile(
                  title: Text(
                    AppStrings.shippingAndReturns,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: ColorManger.outerSpace,
                        fontSize: FontSizeManger.f16),
                  ),
                  tilePadding: const EdgeInsets.all(AppPadding.p8),
                  childrenPadding: const EdgeInsets.all(AppPadding.p8),
                  children: [
                    AutoSizeText(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 8,
                      minFontSize: FontSizeManger.f12,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
                child: Container(
                  width: size.width / AppSize.s1_1,
                  height: AppSize.s1,
                  color: ColorManger.lightSilver,
                ),
              ),
              const SizedBox(
                height: AppSize.s10,
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    AppStrings.youMayAlsoLike,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: FontSizeManger.f18,
                          color: ColorManger.lightSlateGray,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / AppSize.s2_5,
                child: ListView.separated(
                  // TODO
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => const SmallProductViewWidget(),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: AppSize.s20,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s80,
              )
            ],
          ),
        ),
      ),
      /// TODO remove comment
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: size.width / AppSize.s1_25,
        height: AppSize.s40,
        child: Container(
          decoration: BoxDecoration(
            color: ColorManger.turquoiseSurf,
            borderRadius: BorderRadius.circular(AppSize.s25)
          ),
          child: MaterialButton(
            onPressed: (){},

            child: Text(
              AppStrings.addToCart,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: FontSizeManger.f14,
                color: ColorManger.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
