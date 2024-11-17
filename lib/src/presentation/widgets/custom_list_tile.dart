import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Widget? subTitle;
  final TextStyle style;
  final Widget? leading;
  const CustomListTile({
    super.key,
    required this.title,
    required this.style,
    this.leading,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: style),
      subtitle: subTitle,
      leading: leading,
    );
  }
}