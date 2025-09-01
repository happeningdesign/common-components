import 'package:flutter/material.dart';

class AppTextMinLines extends StatelessWidget {
  const AppTextMinLines(
    this.text, {
    super.key,
    this.minLines = 2,
    this.maxLines,
    this.style,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign,
    this.strutStyle,
    this.softWrap,
    this.semanticsLabel,
  });

  final String text;
  final int minLines;
  final int? maxLines;
  final TextStyle? style;
  final TextOverflow overflow;
  final TextAlign? textAlign;
  final StrutStyle? strutStyle;
  final bool? softWrap;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    final effectiveStyle = DefaultTextStyle.of(context).style.merge(style);
    final textDirection = Directionality.of(context);
    final textScaler = MediaQuery.textScalerOf(context);

    // Measure a single line’s height using the actual font metrics.
    final tp = TextPainter(
      text: TextSpan(text: ' ', style: effectiveStyle),
      textDirection: textDirection,
      textScaler: textScaler,
      maxLines: 1,
    )..layout(); // no maxWidth needed for line height

    final minHeight = tp.preferredLineHeight * minLines;

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight),
      child: Text(
        text,
        maxLines: maxLines ?? minLines,
        overflow: overflow,
        style: effectiveStyle,
        textAlign: textAlign,
        strutStyle: strutStyle,
        softWrap: softWrap,
        semanticsLabel: semanticsLabel ?? text,
      ),
    );
  }
}
