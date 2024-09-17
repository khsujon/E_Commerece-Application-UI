import 'package:e_com_ui/Model/model_class.dart';
import 'package:e_com_ui/Utils/custom_colors.dart';
import 'package:e_com_ui/Utils/custom_textstyle.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final _list = CartProductModel;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: pageBgColor,
      appBar: AppBar(
        backgroundColor: pageBgColor,
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              height: height * 0.04,
              width: width * 0.085,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.0425),
                color: pageBgColor,
                border: Border.all(
                  color: cardBgColor, // Set the border color
                  width: 2.0, // Set the border width
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width * .01),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                ),
              )),
        ),
        actions: [
          Text(
            'My Cart',
            style: customTextStyle(size: 18, weight: FontWeight.w600),
          ),
          SizedBox(
            width: width * 0.32,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
                height: height * 0.04,
                width: width * 0.085,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.0425),
                  color: pageBgColor,
                  border: Border.all(
                    color: cardBgColor, // Set the border color
                    width: 2.0, // Set the border width
                  ),
                ),
                child: const Icon(
                  Icons.more_horiz,
                  size: 20,
                )),
          ),
        ],
      ),
      body: Container(
        color: pageBgColor,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: height * 0.04),
              height: height * 0.55,
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      height: height * 0.22,
                      width: width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: height * 0.14,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.04),
                                    color: cardBgColor,
                                  ),
                                  child: Image.asset('${_list[index].image}')),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.02),
                                child: SizedBox(
                                  height: height * 0.16,
                                  width: width * 0.67,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, right: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _list[index].name.toString(),
                                              style: customTextStyle(
                                                  size: 16,
                                                  weight: FontWeight.w600),
                                            ),
                                            Icon(
                                              Icons.close,
                                              size: 18,
                                              color: Colors.grey.shade400,
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 3.0),
                                        child: Text(
                                          _list[index]
                                              .selectedVariant
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 14),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.03,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$ ${_list[index].price}",
                                            style: customTextStyle(
                                                size: 16,
                                                weight: FontWeight.w600),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                    height: height * 0.05,
                                                    width: width * 0.12,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.03),
                                                        border: Border.all(
                                                          color: cardBgColor,
                                                          width: 2,
                                                        )),
                                                    child: const Icon(
                                                      Icons.remove,
                                                      size: 18,
                                                    )),
                                                const Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: Text('1'),
                                                ),
                                                Container(
                                                    height: height * 0.05,
                                                    width: width * 0.12,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(width *
                                                                    0.03),
                                                        border: Border.all(
                                                            color:
                                                                selectionColor,
                                                            width: 2)),
                                                    child: const Icon(
                                                      Icons.add,
                                                      size: 18,
                                                      color: selectionColor,
                                                    ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Divider(
                              color: cardBgColor,
                              thickness: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.1,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height * .015),
                child: Container(
                  height: height * 0.08,
                  width: width * 0.98,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.04,
                        ),
                        child: Text(
                          'ADJ3AK',
                          style: customTextStyle(
                              size: 16, weight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Promocode applied',
                            style: TextStyle(
                                color: selectionColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: width * 0.04, left: 10),
                            child: Container(
                                height: height * 0.020,
                                width: width * 0.04,
                                decoration: BoxDecoration(
                                    color: selectionColor,
                                    borderRadius:
                                        BorderRadius.circular(width * 0.02)),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.15,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal:',
                          style: customTextStyle(
                              size: 15, weight: FontWeight.w600),
                        ),
                        Text(
                          '\$800',
                          style: customTextStyle(
                              size: 15, weight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Fee:',
                          style: customTextStyle(
                              size: 15, weight: FontWeight.w600),
                        ),
                        Text(
                          '\$5',
                          style: customTextStyle(
                              size: 15, weight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount:',
                          style: customTextStyle(
                              size: 15, weight: FontWeight.w600),
                        ),
                        Text(
                          '40%',
                          style: customTextStyle(
                              size: 15, weight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.09,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: Container(
                  height: height * 0.08,
                  width: width * .8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.04),
                    color: selectionColor,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Checkout for ',
                          style: customTextStyle(
                              size: 15, weight: FontWeight.w500),
                        ),
                        Text('\$480.00',
                            style: customTextStyle(
                                size: 16, weight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
