import 'package:challenge_1/style/horizontal_space.dart';
import 'package:challenge_1/style/ressources.dart';
import 'package:challenge_1/style/vertical_space.dart';
import 'package:challenge_1/views/home/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sticky_headers/sticky_headers.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  ScrollController scrollController = ScrollController();
  bool showProduct = true;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(
      () {
        if (scrollController.position.pixels > 0 &&
            scrollController.position.pixels <=
                scrollController.position.maxScrollExtent) {
          showProduct = false;
        } else {
          showProduct = true;
        }
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.orange[500],
          // gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     colors: [
          //       Color.fromRGBO(255, 153, 0, 1),
          //       Color.fromRGBO(0, 0, 0, 1),
          //     ])
        ),
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.52,
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeWidget(),
                        ));
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              backgroundColor: Colors.orange[500],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.only(top: 64.0, left: 16.0, right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalSpace.vSpace48,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Ressources.package,
                            width: 180,
                          ),
                          Image.asset(
                            Ressources.package,
                            width: 180,
                          )
                        ],
                      ),
                      VerticalSpace.vSpace64,
                      const Text(
                        "Dried apricots",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                      VerticalSpace.vSpace8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Artificial selection - Taste sweet",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 9.0),
                          ),
                          RatingBar(
                              ratingWidget: RatingWidget(
                                  full: const Icon(
                                    Icons.star_rounded,
                                    color: Colors.white,
                                  ),
                                  half: const Icon(
                                    Icons.star_half_rounded,
                                    color: Colors.white,
                                  ),
                                  empty: const Icon(
                                    Icons.star_border_rounded,
                                    size: 12,
                                  )),
                              allowHalfRating: true,
                              initialRating: 4.5,
                              itemSize: 12,
                              onRatingUpdate: (value) {})
                        ],
                      ),
                      VerticalSpace.vSpace16,
                      const Text(
                        "Capacity",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0),
                      ),
                      VerticalSpace.vSpace8,
                      Row(
                        children: [
                          Container(
                            width: 54,
                            height: 54,
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Calories",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                VerticalSpace.vSpace8,
                                const Text(
                                  "90",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          HorizontalSpace.hSpace16,
                          Container(
                            width: 54,
                            height: 54,
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Additive",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                VerticalSpace.vSpace8,
                                const Text(
                                  "3%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          HorizontalSpace.hSpace16,
                          HorizontalSpace.hSpace8,
                          Container(
                            width: 54,
                            height: 54,
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Vitamin",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w400),
                                ),
                                VerticalSpace.vSpace8,
                                const Text(
                                  "8%",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverList.list(children: [
              StickyHeader(
                  overlapHeaders: false,
                  header: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -10,
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.orange[500],
                          )),
                      Positioned(
                          bottom: 0,
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.black,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 209,
                        padding: const EdgeInsets.symmetric(
                            vertical: 28.0, horizontal: 16.0),
                        margin: const EdgeInsets.only(top: 120),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Quantity(300g)",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w600),
                            ),
                            VerticalSpace.vSpace16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 130,
                                  height: 36,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 0.4),
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: null,
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all(
                                                      const EdgeInsets.all(0))),
                                          icon: Icon(
                                            Icons.arrow_left_rounded,
                                            color: Colors.grey[300],
                                          )),
                                      const Text(
                                        "1",
                                        style: TextStyle(
                                          color: Colors.brown,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: null,
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all(
                                                      const EdgeInsets.all(0))),
                                          icon: const Icon(
                                            Icons.arrow_right_rounded,
                                            color: Colors.brown,
                                          ))
                                    ],
                                  ),
                                ),
                                const Text(
                                  "\$9.43",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.brown),
                                )
                              ],
                            ),
                            VerticalSpace.vSpace16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: null,
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            const EdgeInsets.symmetric(
                                                vertical: 6.0,
                                                horizontal: 98.0)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.yellow[700])),
                                    child: const Text(
                                      "Add to cart",
                                      style: TextStyle(
                                          color: Colors.brown,
                                          fontWeight: FontWeight.bold),
                                    )),
                                IconButton(
                                    onPressed: null,
                                    icon: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 32,
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        width: MediaQuery.of(context).size.width,
                        bottom: -64,
                        child: Container(
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                TextButton.icon(
                                    onPressed: null,
                                    icon: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    label: const Text(
                                      "Cart",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                if (showProduct)
                                  Image.asset(
                                    Ressources.package,
                                    width: 48,
                                  )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  content: Column(
                    children: [
                      VerticalSpace.vSpace54,
                      for (int i = 1; i <= 10; i++)
                        Container(
                          color: Colors.black,
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Ressources.package,
                                    width: 64,
                                  ),
                                  HorizontalSpace.hSpace16,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Dried apricots",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      VerticalSpace.vSpace16,
                                      const Text(
                                        "\$9.43",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                "X$i",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 23.0),
                              )
                            ],
                          ),
                        ),
                    ],
                  )),
            ])
          ],
        ),
      ),
      bottomNavigationBar: Visibility(
          visible: !showProduct,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(color: Colors.black),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "10 items",
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Stack(
                    children: [
                      Container(
                        width: 98,
                        height: 45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow),
                            borderRadius: BorderRadius.circular(8.0)),
                        alignment: Alignment.center,
                        child: const Text(
                          "\$38.25",
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        top: 0,
                        bottom: 0,
                        child: InkWell(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(8.0)),
                            child: const Text(
                              "Buy now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
