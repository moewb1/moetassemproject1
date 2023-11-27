import 'package:flutter/material.dart';
import 'package:moetassemproject1/CompanyListPage.dart';
import 'Company.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Catalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CompanyListPage(
        companies: [
          Company(
            name: 'Apple',
            figureUrl: 'https://www.apple.com/newsroom/images/default/apple-logo-og.jpg?202311180046',
          ),

          Company(
            name: 'Samsung',
            figureUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq4IB8v-qiE9o17oGp4KPv6eOT-4ofex1G6b38Ip-p6VrNJY-qV1ZXCHxv43Z7XxygILQ&usqp=CAU',
          ),
          Company(
            name: 'Xiaomi',
            figureUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Xiaomi_logo_%282021-%29.svg/512px-Xiaomi_logo_%282021-%29.svg.png',
          ),
          Company(
            name: 'Huawei',
            figureUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Huawei_Standard_logo.svg/2016px-Huawei_Standard_logo.svg.png',
          ),

          Company(
            name: 'Oppo',
              figureUrl:  'https://assets.mspimages.in/gear/wp-content/uploads/2019/12/oppo-m1.jpg',
          ),
          Company(
            name: 'Honor',
            figureUrl: 'https://static.vecteezy.com/system/resources/previews/020/927/207/original/honor-brand-logo-phone-symbol-name-white-design-china-mobile-illustration-with-blue-background-free-vector.jpg',
          ),
        ],
      ),
    );
  }
}

