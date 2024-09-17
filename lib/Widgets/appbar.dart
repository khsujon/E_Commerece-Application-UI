import 'package:e_com_ui/Screens/cart_screen.dart';
import 'package:e_com_ui/Utils/custom_colors.dart';
import 'package:e_com_ui/Utils/custom_textstyle.dart';
import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        color: pageBgColor,
        height: height * 0.2,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Text(
                "Discover",
                style: customTextStyle(size: 25, weight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.05),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ));
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        height: height * 0.06,
                        width: width * 0.085,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: pageBgColor,
                          border: Border.all(
                            color: cardBgColor, // Set the border color
                            width: 2.0, // Set the border width
                          ),
                        ),
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                          size: 20,
                        )),
                    Positioned(
                      right: -1,
                      top: -6,
                      child: Container(
                          height: height * 0.03,
                          width: width * 0.043,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectionColor,
                          ),
                          child: Center(child: Text('3'))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
