import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/consts/global_colors.dart';
import 'package:store_app/screens/product_detail.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(2),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).cardColor,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                  child: const ProductDetailScreen(),
                  type: PageTransitionType.fade),
            );
          },
          borderRadius: BorderRadius.circular(8),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                            text: "\$",
                            style: const TextStyle(
                              color: Color.fromRGBO(33, 150, 243, 1),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "168.00",
                                  style: TextStyle(
                                      color: lightTextColor,
                                      fontWeight: FontWeight.w600))
                            ]),
                      ),
                    ),
                    Icon(
                      IconlyBold.heart,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
                  height: size.height * 0.2,
                  width: double.infinity,
                  boxFit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Title",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              )
            ],
          ),
        ),
      ),
    );
  }
}
