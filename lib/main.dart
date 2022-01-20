import 'package:flutter/material.dart';
import 'package:order_support/UI/main_page.dart';
import 'UI/OrderForm/order_form.dart';
import 'UI/SalesForm/sales_form.dart';

void main(){
  runApp(
    const MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: MainPage()
      )
    )
  );
}