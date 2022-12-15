import 'package:ecommerce_app/core/resources/app_strings.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:ecommerce_app/core/resources/icons_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SearchField extends StatefulWidget {
  const SearchField({Key? key, required this.textEditingController, required this.onChange, required this.onSubmitted}) : super(key: key);

  final TextEditingController textEditingController;
  final Function(String value) onChange;
  final Function(String value) onSubmitted;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {

  bool isEmpty = true;

  @override
  void initState() {
    super.initState();
    widget.textEditingController.addListener(() {
      if(widget.textEditingController.text.isNotEmpty) {
        setState(() {
          isEmpty = false;
        });
      } else {
        setState(() {
          isEmpty = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: false,
        controller: widget.textEditingController,
        onChanged: widget.onChange,
        onFieldSubmitted: widget.onSubmitted,
        decoration: InputDecoration(
          hintText: AppStrings.search,
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: ColorManger.gunmetal.withOpacity(.38),
          ),
          labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(color: ColorManger.black),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: SvgPicture.asset(isEmpty ? IconsManger.search : IconsManger.searchActive,),
          ),
          prefixIconConstraints: const BoxConstraints(
            maxWidth: AppSize.s50,
            maxHeight: AppSize.s50,
            minHeight: AppSize.s30,
            minWidth: AppSize.s30,
          ),
          suffixIconConstraints: const BoxConstraints(
            maxWidth: AppSize.s50,
            maxHeight: AppSize.s50,
            minHeight: AppSize.s30,
            minWidth: AppSize.s30,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: AppPadding.p5),
          suffixIcon: isEmpty ?  null : GestureDetector(onTap: () {widget.textEditingController.clear();},child: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: SvgPicture.asset(IconsManger.clear),
          )),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManger.buttonBlue,
              ),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManger.gunmetal.withOpacity(.12),
              ),
          ),
        ),
      ),
    );
  }
}
