import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tester/fetures/users/data/entity.dart';
import 'package:flutter_tester/fetures/users/domain/user_provider.dart';

import '../screens/user_detail_screen.dart';

class UserCard extends ConsumerWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void navigateToDetail(User detail) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => UserDetailScreen(userDetail: detail),
        ),
      );
    }

    return ListTile(
      onTap: () async {
        final detail =
            await ref.read(userNotifierProvider.notifier).getUser(user.id);
        navigateToDetail(detail);
      },
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Text(
          '${user.id}',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      title: Text(user.name),
      subtitle: Text(user.username),
    );
  }
}
