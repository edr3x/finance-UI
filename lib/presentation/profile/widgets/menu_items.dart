import 'package:flutter/material.dart';

class ProfileMenuItems extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onPress;
  const ProfileMenuItems({
    Key? key,
    required this.title,
    required this.icon,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: ListTile(
        onTap: onPress,
        leading: Icon(
          icon,
          size: 32,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
