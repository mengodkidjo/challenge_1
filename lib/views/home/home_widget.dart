import 'package:challenge_1/style/horizontal_space.dart';
import 'package:challenge_1/style/ressources.dart';
import 'package:challenge_1/style/vertical_space.dart';
import 'package:challenge_1/views/cart/cart_widget.dart';
import 'package:challenge_1/views/home/widget/choosed_product.dart';
import 'package:challenge_1/views/home/widget/taste_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: null,
            icon: Image.asset(
              Ressources.leftIcon,
              color: Colors.brown,
              width: 24,
            )),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.brown,
                size: 24,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, ledoc",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            VerticalSpace.vSpace8,
            const Text(
              "What's today's taste ? 😋",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900),
            ),
            VerticalSpace.vSpace32,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TasteIcon(
                          title: "Dried fruit",
                          icon: Image.asset(
                            Ressources.coconut,
                            color: Colors.brown[900],
                            width: 18,
                            height: 18,
                          ),
                          isActive: true),
                      HorizontalSpace.hSpace32,
                      TasteIcon(
                          title: "nuts",
                          icon: Image.asset(
                            Ressources.nuts,
                            color: Colors.brown[900],
                            width: 18,
                            height: 18,
                          ),
                          isActive: false),
                    ]),
                const Spacer(),
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.search_rounded,
                      color: Colors.brown,
                      size: 32,
                    ))
              ],
            ),
            VerticalSpace.vSpace32,
            Container(
              alignment: Alignment.center,
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: MediaQuery.sizeOf(context).width * 0.8,
                    padding: const EdgeInsets.only(left: 33),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange[500],
                        borderRadius: BorderRadius.circular(300)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dried apricots",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0),
                        ),
                        VerticalSpace.vSpace8,
                        const Text.rich(
                          textAlign: TextAlign.start,
                          TextSpan(
                              text: "\$9.43",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                              children: [
                                TextSpan(
                                    text: " / 300g",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12.0))
                              ]),
                        ),
                        VerticalSpace.vSpace8,
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 12,
                          wrapAlignment: WrapAlignment.start,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 12.0,
                          ),
                          onRatingUpdate: (rating) {
                            // print(rating);
                          },
                        ),
                        VerticalSpace.vSpace8,
                        TextButton.icon(
                            onPressed: () {
                              Navigator.of(context).push(_createRoute());
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            icon: const Icon(
                              Icons.shopping_cart_rounded,
                              color: Colors.brown,
                            ),
                            label: const Text(
                              "Add to card",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ).animate(effects: [
                    ScaleEffect(curve: Curves.easeIn),
                  ], controller: animationController),
                  Positioned(
                      left: -45,
                      top: 50,
                      bottom: 50,
                      child: Image.asset(
                        Ressources.package,
                        width: 150,
                      )),
                  Positioned(
                      right: -33,
                      top: 50,
                      bottom: 50,
                      child: IconButton(
                          onPressed: null,
                          icon: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 32,
                            ),
                          )))
                ],
              ),
            ),
            VerticalSpace.vSpace32,
            VerticalSpace.vSpace32,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ChoosedProduct(
                  isActive: false,
                  icon: SizedBox(
                    width: 18,
                    height: 18,
                    // padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      Ressources.package,
                      width: 18,
                    ),
                  )),
              ChoosedProduct(
                  isActive: true,
                  icon: Image.asset(
                    Ressources.package,
                  )),
              ChoosedProduct(
                  isActive: false,
                  icon: SizedBox(
                    width: 24,
                    height: 24,
                    // padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      Ressources.package,
                    ),
                  )),
              IconButton(
                  onPressed: null,
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(64, 64)),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.grey))),
                  icon: const Icon(Icons.add))
            ])
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const CartWidget(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
