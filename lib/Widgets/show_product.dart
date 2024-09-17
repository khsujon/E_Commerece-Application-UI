import 'package:e_com_ui/Model/model_class.dart';
import 'package:e_com_ui/Screens/details_screen.dart';
import 'package:e_com_ui/Utils/custom_colors.dart';
import 'package:flutter/material.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({super.key});

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GridView.builder(
      itemCount: productModel.length,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items per row
        mainAxisSpacing: 1, // Vertical spacing
        crossAxisSpacing: 15, // Horizontal spacing
        childAspectRatio: 0.7, // Adjust this ratio to control item height
      ),
      itemBuilder: (context, index) {
        var product = productModel[index];

        // Adjusting the height and width manually (based on grid layout)
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(detailsData: product),
                ));
          },
          child: SizedBox(
            height: height * 0.17,
            width: width * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: height * 0.17,
                    width: width * 0.35,
                    decoration: BoxDecoration(
                      color: cardBgColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Image.asset(
                        product.image.toString(),
                        height: height * 0.18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          product.name.toString(),
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey.shade500),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.orange,
                          ),
                          Text(
                            product.rating.toString(),
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.06),
                  child: Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black,
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
}
