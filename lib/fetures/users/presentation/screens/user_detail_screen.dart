import 'package:flutter/material.dart';
import 'package:flutter_tester/fetures/users/data/entity.dart';

class UserDetailScreen extends StatelessWidget {
  final User userDetail;
  const UserDetailScreen({super.key, required this.userDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Detail"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(userDetail.email),
        ],
      ),
    );
  }
}
