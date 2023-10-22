import 'package:flutter/material.dart';
import 'package:store_app/widgets/users_widget.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({super.key});

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Users"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          return UserWidget();
        }),
      ),
    );
  }
}
