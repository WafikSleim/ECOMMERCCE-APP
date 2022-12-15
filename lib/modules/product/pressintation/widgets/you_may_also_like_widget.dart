import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:ecommerce_app/modules/product/pressintation/widgets/small_product_item_widget.dart';
import 'package:flutter/material.dart';

class YouMayAlsoLike extends StatelessWidget {
  const YouMayAlsoLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / AppSize.s3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const SmallProductItemWidget(),
        separatorBuilder: (context, index) => const SizedBox(width: AppSize.s16,),
      ),
    );
  }
}
