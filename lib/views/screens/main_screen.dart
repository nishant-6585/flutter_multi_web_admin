import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:flutter_multi_web_admin/views/screens/side_bar_screens/cataegories_screen.dart';
import 'package:flutter_multi_web_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:flutter_multi_web_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:flutter_multi_web_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:flutter_multi_web_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:flutter_multi_web_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:flutter_multi_web_admin/views/screens/side_bar_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget _selectedItems = const DashboardScreen();

  screenSelector(item) {
    switch(item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItems = const DashboardScreen();
        });
        break;
      case VendorsScreen.routeName:
        setState(() {
          _selectedItems = const VendorsScreen();
        });
        break;
      case CategoriesScreen.routeName:
        setState(() {
          _selectedItems = const CategoriesScreen();
        });
        break;
      case OrdersScreen.routeName:
        setState(() {
          _selectedItems = const OrdersScreen();
        });
        break;
      case ProductsScreen.routeName:
        setState(() {
          _selectedItems = const ProductsScreen();
        });
        break;
      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItems = const UploadBannerScreen();
        });
        break;
      case WithdrawalScreen.routeName:
        setState(() {
          _selectedItems = const WithdrawalScreen();
        });
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: const Text('Management'),
      ),
      sideBar: SideBar(items: const [
        AdminMenuItem(title: 'Dashboard', icon: Icons.dashboard, route: DashboardScreen.routeName),
        AdminMenuItem(title: 'Vendors', icon: CupertinoIcons.person_3, route: VendorsScreen.routeName),
        AdminMenuItem(title: 'Withdrawal', icon: CupertinoIcons.money_dollar, route: WithdrawalScreen.routeName),
        AdminMenuItem(title: 'Orders', icon: CupertinoIcons.shopping_cart, route: OrdersScreen.routeName),
        AdminMenuItem(title: 'Categories', icon: Icons.category, route: CategoriesScreen.routeName),
        AdminMenuItem(title: 'Products', icon: Icons.shop, route: ProductsScreen.routeName),
        AdminMenuItem(title: 'Upload Banners', icon: CupertinoIcons.add, route: UploadBannerScreen.routeName),
      ],
        selectedRoute: '',
        onSelected: (item) {
        screenSelector(item);
        },

        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Store Panel',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),

        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: _selectedItems,


    );
  }
}
