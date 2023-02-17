import 'package:flutter/material.dart';
import 'package:order_support/UI/SettingPage/Supplier/supplier_setting_page.dart';

import 'package:order_support/UI/SettingPage/setting_content.dart';
import 'package:order_support/UI/SettingPage/store_setting_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingContent(
          icon: Icons.store,
          text: "店舗",
          form: StoreSettingPage(),
        ),
        SettingContent(
          icon: Icons.card_giftcard,
          text: "発注先",
          form: SupplierSettingPage(),
        ),
      ],
    );
  }
}
