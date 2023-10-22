import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListTile(
      leading: FancyShimmerImage(
        imageUrl:
            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D",
        height: size.width * 0.15,
        width: size.width * 0.15,
        boxFit: BoxFit.fill,
      ),
      title: Text("User Name"),
      subtitle: Text("EMail@gmail.com"),
      trailing: Text("User Role"),
    );
  }
}
