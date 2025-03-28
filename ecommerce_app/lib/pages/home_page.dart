import 'package:ecommerce_app/components/BottomNavbar.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  List<Widget> _pages = [const ShopPage(), const CartPage()];

  void NavigateBottombar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 212, 212),
      appBar: AppBar(
          leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      )),
      drawer: Drawer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "lib/images/logo1.png",
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text("About"),
                    ),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavbar(onTabChange: (index) => NavigateBottombar(index)),
      body: _pages[_selectedindex],
    );
  }
}
