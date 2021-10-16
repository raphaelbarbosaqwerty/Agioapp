import 'package:flutter/material.dart';

class TheButtonWidget extends StatelessWidget {
  const TheButtonWidget({
    Key? key,
    required this.onPressed,
    required this.child,
    this.icon,
    this.color,
  }) : super(key: key);

  final void Function() onPressed;
  final Widget? icon;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton.icon(
          icon: icon ?? Icon(Icons.done),
          onPressed: onPressed,
          label: child,
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }
}
