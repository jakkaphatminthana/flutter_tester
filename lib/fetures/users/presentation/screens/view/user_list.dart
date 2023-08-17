import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tester/fetures/users/presentation/widgets/user_card.dart';

import '../../../domain/user_provider.dart';

class UserListsView extends ConsumerWidget {
  const UserListsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(userNotifierProvider);

    if (users.isNotEmpty) {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) {
          final data = users[index];

          return UserCard(user: data);
        },
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
