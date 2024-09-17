import 'package:flutter/material.dart';
import 'package:e_com_ui/Widgets/appbar.dart';
import 'package:e_com_ui/Widgets/category.dart';
import 'package:e_com_ui/Widgets/show_product.dart';
import 'package:e_com_ui/Widgets/top_view.dart';
import 'package:e_com_ui/Model/model_class.dart'; // Import your ModelData class
import '../Utils/custom_colors.dart';

class HomeScreen extends StatefulWidget {
  final List<ModelData>? cartItems; // New field to hold cart items

  const HomeScreen({super.key, this.cartItems});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String categoryName = 'All';
  int selectedIndex = 0; // To keep track of the selected item in the navbar

  List<String> categoriesList = [
    'All',
    'Smartphone',
    'Headphone',
    'Laptop',
    'Gaming Console',
    'Accessories'
  ];

  // List of icons and texts for bottom navbar
  final List<Map<String, dynamic>> _navItems = [
    {"icon": Icons.home, "text": "Home"},
    {"icon": Icons.search, "text": "Search"},
    {"icon": Icons.favorite_border_sharp, "text": "Favorites"},
    {"icon": Icons.person_2_outlined, "text": "Profile"},
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: pageBgColor,
          automaticallyImplyLeading: false,
          flexibleSpace: Appbar(),
        ),
        body: Column(
          children: [
            SizedBox(height: height * 0.03),

            // Search bar
            Container(
              height: height * 0.06,
              width: width * 0.87,
              decoration: BoxDecoration(
                  color: cardBgColor, borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Text(
                      "Search",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.05),
                    child: const Icon(
                      Icons.search_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),

            // Top view
            Container(
              height: height * 0.25,
              width: width,
              color: pageBgColor,
              child: const TopView(),
            ),

            // Categories
            Padding(
              padding: EdgeInsets.only(top: height * 0.03),
              child: SizedBox(
                height: height * 0.13,
                width: width,
                child: const CategoryWidget(),
              ),
            ),

            // Products
            SizedBox(
              height: height * 0.3,
              child: const ShowProduct(),
            ),

            // Bottom navigation bar
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(_navItems.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Update selected index
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _navItems[index]["icon"],
                            color: selectedIndex == index
                                ? selectionColor // Change to green if selected
                                : Colors.black, // Default color
                          ),
                          Text(
                            _navItems[index]["text"],
                            style: TextStyle(
                              color: selectedIndex == index
                                  ? selectionColor // Change to green if selected
                                  : Colors.black, // Default color
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
