import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/Provider/main_page_controller.dart';
import 'package:order_support/Provider/supplier_tab_controller.dart';
import 'package:order_support/UI/Common/Text/text_small.dart';
import 'package:order_support/UI/MainPage/drawer_content.dart';

import '../../Model/Supplier/supplier.dart';

class MainPage extends ConsumerWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageProvider);
    final List<Supplier> suppliers =
        ref.watch(supplierTabProvider.select((provider) {
      return provider.suppliers;
    }));

    return DefaultTabController(
      length: suppliers.length,
      child: Scaffold(
        drawer: Drawer(
          width: 150,
          backgroundColor: Colors.white,
          child: Column(
            children: [
              AppBar(),
              Divider(),
              DrawerContent(
                icon: Icon(Icons.attach_money),
                text: "売上",
                onTap: () {
                  ref.read(pageProvider.notifier).changePage(0);
                  Navigator.pop(context);
                },
              ),
              DrawerContent(
                icon: Icon(Icons.shopping_basket_outlined),
                text: "在庫",
                onTap: () {
                  ref.read(pageProvider.notifier).changePage(1);
                  Navigator.pop(context);
                },
              ),
              DrawerContent(
                icon: Icon(Icons.settings),
                text: "設定",
                onTap: () {
                  ref.read(pageProvider.notifier).changePage(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: pageController.pageIndex == 1
              ? TabBar(
                  tabs: [
                    ...suppliers.map((supplier) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextSmall("${supplier.name}"),
                      );
                    })
                  ],
                )
              : null,
        ),
        body: pageController.page,
      ),
    );
  }
}
