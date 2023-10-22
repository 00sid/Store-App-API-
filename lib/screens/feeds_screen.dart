import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/screens/product_detail.dart';

import '../widgets/feed_widget.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Products"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: const ProductDetailScreen(),
                            type: PageTransitionType.fade),
                      );
                    },
                    child: const FeedWidget());
              },
            ),
          ],
        ),
      ),
    );
  }
}
