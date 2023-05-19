import 'package:company_list/application/riverpod/riverpod_global.dart';
import 'package:company_list/presentation/widget/custom_text.dart';
import 'package:company_list/utils/constant/color_manager.dart';
import 'package:company_list/utils/constant/font_manager.dart';
import 'package:company_list/utils/constant/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widget/custom_dialog.dart';
import '../../widget/custom_list_item.dart';

class HomePage extends ConsumerStatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  final _formKey = GlobalKey<FormState>();

  final _companyNameController = TextEditingController();

  final _passwordController = TextEditingController();

  final _emailController = TextEditingController();

  final _phoneController = TextEditingController();

  ScrollController _scrollController = ScrollController();
  int page = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref.read(companyProvider.notifier).refreshList();
      await ref.read(companyProvider.notifier).getAllCompanyList(1);
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        ++page;
        ref.read(companyProvider.notifier).getAllCompanyList(page);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final company = ref.watch(companyProvider);
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: 'Company List',
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.semiBold),
      ),
      backgroundColor: ColorManager.white,
      body: ListView.separated(
        itemCount: company.company.length,
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return customListItem(
              companyName: company.company[index].company_name,
              email: company.company[index].email,
              phone: company.company[index].phone);
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
                builder: (BuildContext context) => customDialog(
                    context: context,
                    formKey: _formKey,
                    companyController: _companyNameController,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    phoneController: _phoneController,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print(_companyNameController.text);
                        print(_emailController.text);
                        print(_passwordController.text);
                        print(_phoneController.text);
                      }
                    }));
          },
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s30)),
          backgroundColor: ColorManager.primary,
          label: CustomText(text: 'Create Company', color: ColorManager.white)),
    );
  }
}
