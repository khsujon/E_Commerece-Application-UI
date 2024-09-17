import 'package:e_com_ui/Utils/custom_colors.dart';
import 'package:e_com_ui/Utils/custom_textstyle.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  String categoryName = 'All';

  List<String> categoriesList = [
    'All',
    'Smartphone',
    'Headphone',
    'Laptop',
    'Gaming Console',
    'Accessories'
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.070),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: customTextStyle(size: 18, weight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.070),
                child: const Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: selectionColor),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.06,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      categoryName = categoriesList[index];
                      setState(() {});
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.only(right: width * 0.02),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: categoryName != categoriesList[index]
                                    ? Colors.black
                                    : pageBgColor,
                              ),
                              color: categoryName == categoriesList[index]
                                  ? selectionColor
                                  : pageBgColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            child: Center(
                                child: Text(
                              categoriesList[index].toString(),
                            )),
                          )),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
