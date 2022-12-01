import 'package:flutter/material.dart';

class CreateNewPostButton extends StatelessWidget {
  const CreateNewPostButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      iconSize: 30,
      icon: const Icon(
        Icons.add_a_photo_outlined,
      ),
      onPressed: () {},
    );
  }
}

class AccountButton extends StatelessWidget {
  const AccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black,
      iconSize: 30,
      icon: const Icon(
        Icons.account_circle_outlined,
      ),
      onPressed: () {},
    );
  }
}

class EmptyButton extends StatelessWidget {
  const EmptyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 25,
    );
  }
}
