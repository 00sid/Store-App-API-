import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_app/screens/category_screen.dart';
import 'package:store_app/screens/feeds_screen.dart';
import 'package:store_app/screens/users_list_screen.dart';
import 'package:store_app/widgets/app_bar_icons.dart';
import 'package:store_app/widgets/feed_widget.dart';
import 'package:store_app/widgets/sale_widget.dart';
import 'package:store_app/widgets/text_field.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: AppBarIcon(
            function: () {
              Navigator.push(
                context,
                PageTransition(
                  child: const CategoryScreen(),
                  type: PageTransitionType.leftToRight,
                ),
              );
            },
            icon: IconlyBold.category,
          ),
          title: const Text("Home"),
          actions: [
            AppBarIcon(
              function: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const UserListScreen(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
              icon: IconlyBold.user3,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SearchTextField(
                  hintText: "Search",
                  textEditingController: _controller,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.25,
                        child: Swiper(
                          autoplay: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return const SaleWidget();
                          },
                          pagination: const SwiperPagination(
                            alignment: Alignment.bottomCenter,
                            builder: DotSwiperPaginationBuilder(
                              activeColor: Colors.red,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              "Latest Product",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            AppBarIcon(
                              function: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: const FeedsScreen(),
                                        type: PageTransitionType.fade));
                              },
                              icon: IconlyBold.arrowRight2,
                            ),
                          ],
                        ),
                      ),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const FeedWidget();
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
