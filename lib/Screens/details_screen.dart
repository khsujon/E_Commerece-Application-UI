import 'package:e_com_ui/Model/model_class.dart';
import 'package:e_com_ui/Utils/custom_colors.dart';
import 'package:e_com_ui/Utils/custom_textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatefulWidget {
  ModelData? detailsData;
  DetailsScreen({super.key, required this.detailsData});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String? varientName;

  @override
  void initState() {
    super.initState();
    // Set the initial selected variant to the first one in the list (if available)
    varientName = widget.detailsData!.variants!.isNotEmpty == true
        ? widget.detailsData!.variants![0]
        : null;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: cardBgColor,
      appBar: AppBar(
        backgroundColor: cardBgColor,
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: pageBgColor, borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: pageBgColor, borderRadius: BorderRadius.circular(25)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: pageBgColor, borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_upward,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          //image part
          Container(
              height: height * 0.34,
              width: width,
              color: cardBgColor,
              child: Center(
                  child: Image.asset(
                widget.detailsData!.image.toString(),
                // height: height * 0.20,
                // width: width,
                fit: BoxFit.cover,
              ))),

          //details part
          Container(
            height: height * 0.55,
            width: width,
            decoration: const BoxDecoration(
                color: pageBgColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                )),
            child: Column(
              children: [
                //Title
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.detailsData!.name.toString(),
                        style:
                            customTextStyle(size: 20, weight: FontWeight.w700),
                      ),
                      Container(
                        height: height * 0.045,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text(
                            "% On Sale",
                            style: TextStyle(
                                color: pageBgColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Ratings and Review
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                      ),
                      child: Container(
                          height: height * 0.04,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade300, strokeAlign: 1),
                              borderRadius: BorderRadius.circular(18)),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.02),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  widget.detailsData!.rating.toString(),
                                  style: customTextStyle(
                                      size: 15, weight: FontWeight.w600),
                                ),
                              ],
                            )),
                          )),
                    ),
                    Container(
                        height: height * 0.04,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade300, strokeAlign: 1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.thumb_up,
                                color: selectionColor,
                                size: 15,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                '94%',
                                style: customTextStyle(
                                    size: 15, weight: FontWeight.w600),
                              ),
                            ],
                          )),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        '117 Review',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 13),
                      ),
                    )
                  ],
                ),

                //Details
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.03),
                  child: SizedBox(
                      height: height * 0.15,
                      width: width,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text(
                            widget.detailsData!.details.toString(),
                            style: customTextStyle(
                                size: 15, weight: FontWeight.w500),
                          ))),
                ),

                //varient
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                  ),
                  child: SizedBox(
                    height: height * 0.06,
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.detailsData!.variants?.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              varientName =
                                  widget.detailsData!.variants![index];
                              setState(() {});
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: varientName !=
                                                widget.detailsData!
                                                    .variants![index]
                                            ? Colors.black
                                            : pageBgColor,
                                      ),
                                      color: varientName ==
                                              widget
                                                  .detailsData!.variants![index]
                                          ? selectionColor
                                          : pageBgColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.02),
                                    child: Center(
                                        child: Text(
                                      widget.detailsData!.variants![index]
                                          .toString(),
                                      style: customTextStyle(
                                          size: 15, weight: FontWeight.w600),
                                    )),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Divider(
                    color: Colors.grey.shade300,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Price section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '\$650.00',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '\$ ${widget.detailsData!.price}',
                            style: customTextStyle(
                                size: 25, weight: FontWeight.w600),
                          ),
                        ],
                      ),

                      // Add to Cart button
                      InkWell(
                        onTap: () {
                          // Add product with selected variant to cart
                          widget.detailsData!.selectedVariant = varientName;
                          Navigator.pop(context, widget.detailsData);
                        },
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: Container(
                          height: height * 0.065,
                          width: width * 0.40,
                          decoration: BoxDecoration(
                              color: selectionColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              'Add To Cart',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: pageBgColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
