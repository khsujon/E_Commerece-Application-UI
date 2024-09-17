import 'package:e_com_ui/Utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:e_com_ui/Model/model_class.dart';

class TopView extends StatefulWidget {
  const TopView({super.key});

  @override
  State<TopView> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  final _list = DiscountProductModel;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var discountProduct = _list[index];

        return Padding(
          padding: EdgeInsets.only(
              left: width * 0.07, right: width * 0.07, top: height * 0.02),
          child: Container(
            decoration: BoxDecoration(
              color: selectionColor,
              borderRadius: BorderRadius.circular(15), // Rounded corners
            ),
            child: Stack(
              clipBehavior: Clip.none, // Allow overflow
              children: [
                const Positioned(
                  top: 10,
                  left: 15,
                  child: Text(
                    "Clearance\nSales", // '\n' adds a new line between the words
                    style: TextStyle(
                        color: pageBgColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ),

                // Image part of the card
                Positioned(
                  right: -30, // Allow overflow on the right
                  top: -70, // Adjust to control vertical overflow
                  child: Image.asset(
                    discountProduct.image.toString(),
                    height: height * 0.50,
                    width: width * 0.5, // Adjust the height as needed
                    fit: BoxFit.contain,
                  ),
                ),
                // Text part of the card
                Positioned(
                  left: 15,
                  bottom: 20,
                  child: Container(
                    height: height * 0.045,
                    width: width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageBgColor,
                    ),
                    child: const Center(
                      child: Text(
                        "% Up to 50%",
                        style: TextStyle(
                            color: selectionColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
