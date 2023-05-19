import 'package:company_list/presentation/widget/custom_text.dart';
import 'package:company_list/utils/constant/color_manager.dart';
import 'package:company_list/utils/constant/font_manager.dart';
import 'package:company_list/utils/constant/values_manager.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: 'Company List',
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.semiBold),
      ),
      body: ListView.separated(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return customListItem(
              companyName: 'Apex DMIT Ltd.',
              email: 'apex@mail.com',
              phone: '01999000192');
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0.6,
            thickness: 0.6,
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s30)),
          backgroundColor: ColorManager.primary,
          label: CustomText(text: 'Create Company', color: ColorManager.white)),
    );
  }
}
