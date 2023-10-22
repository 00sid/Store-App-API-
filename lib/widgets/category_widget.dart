import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: FancyShimmerImage(
                imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
                height: size.height * 0.45,
                width: size.width * 0.45,
                boxFit: BoxFit.fill,
              ),
            ),
            Container(
                color: Colors.grey.withOpacity(0.5),
                child: Text(
                  "Category name",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ))
          ],
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
