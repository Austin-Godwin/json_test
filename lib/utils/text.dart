import 'package:flutter/material.dart';
import 'package:json_test/constants/text_style.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final TextOverflow overflow;
  final Color? color;
  final bool centered;
  final int? maxLines;

  AppText.heading1(this.text,
      {Key? key,
      this.multiText = false,
      this.overflow = TextOverflow.ellipsis,
      this.centered = false,
      this.color,
      this.maxLines})
      : style = headingStyle1.copyWith(color: color),
        super(key: key);

  AppText.heading2(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = headingStyle2.copyWith(color: color),
        super(key: key);

  AppText.heading3(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = headingStyle3.copyWith(color: color),
        super(key: key);

  AppText.heading4(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = headingStyle4.copyWith(color: color),
        super(key: key);

  AppText.heading5(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = headingStyle5.copyWith(color: color),
        super(key: key);

  AppText.heading6(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = headingStyle6.copyWith(color: color),
        super(key: key);

  AppText.body1(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = bodyStyle1.copyWith(color: color),
        super(key: key);

  AppText.body2(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = bodyStyle2.copyWith(color: color),
        super(key: key);

  AppText.caption(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = captionStyle.copyWith(color: color),
        super(key: key);

  AppText.button(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = buttonStyle.copyWith(color: color),
        super(key: key);

  AppText.small(this.text,
      {Key? key,
        this.multiText = false,
        this.overflow = TextOverflow.ellipsis,
        this.centered = false,
        this.color,
        this.maxLines})
      : style = buttonStyle.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText || maxLines != null ? maxLines ?? 99999999999 : 1,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : TextAlign.left,
      style: style,
    );
  }
}
