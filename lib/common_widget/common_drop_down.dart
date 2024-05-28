import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class CommonDropDownWidget<T> extends StatelessWidget {
  const CommonDropDownWidget({
    super.key,
    this.width = 70,
    this.height = 42,
    this.onChanged,
    required this.items,
    this.value,
  });

  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final double width, height;
  final T? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.23000000417232513),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          items: items,
          value: value,
          onChanged: onChanged,
          padding: EdgeInsets.only(left: Sizes.p12),
          isDense: true,
        ),
      ),
    );
  }
}
