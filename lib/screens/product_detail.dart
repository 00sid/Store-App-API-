import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:store_app/consts/global_colors.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              const BackButton(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: Text(
                            "Loream tpsum",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              text: "\$",
                              style: const TextStyle(
                                fontSize: 24,
                                color: Color.fromRGBO(33, 150, 243, 1),
                              ),
                              children: [
                                TextSpan(
                                  text: "168.00",
                                  style: TextStyle(
                                      color: lightTextColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.4,
                      child: Swiper(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return FancyShimmerImage(
                            imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
                            width: double.infinity,
                            boxFit: BoxFit.fill,
                          );
                        },
                        autoplay: true,
                        pagination: const SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          builder: DotSwiperPaginationBuilder(
                            activeColor: Colors.red,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Both of these languages use a single data type to handle both integer and floating-point values. The distinction between integers and floating-point numbers is made internally by the language, and the type can adjust to accommodate the appropriate representation based on the assigned value",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
