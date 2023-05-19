import 'package:company_list/presentation/widget/custom_text.dart';
import 'package:company_list/utils/constant/color_manager.dart';
import 'package:company_list/utils/constant/font_manager.dart';
import 'package:company_list/utils/constant/values_manager.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_dialog.dart';
import '../../widget/custom_list_item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);


  final _formKey = GlobalKey<FormState>();
  final _companyNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: 'Company List',
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.semiBold),
      ),
      backgroundColor: ColorManager.white,
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
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) =>
                    customDialog(
                        context: context,
                      formKey: _formKey,
                      companyController: _companyNameController,
                      emailController: _emailController,
                      passwordController: _passwordController,
                      phoneController: _phoneController,
                      onTap: (){
                          if(_formKey.currentState!.validate()){
                            print(_companyNameController.text);
                            print(_emailController.text);
                            print(_passwordController.text);
                            print(_phoneController.text);
                          }
                      }
                    ));
          },
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s30)),
          backgroundColor: ColorManager.primary,
          label: CustomText(text: 'Create Company', color: ColorManager.white)),
    );
  }
}
