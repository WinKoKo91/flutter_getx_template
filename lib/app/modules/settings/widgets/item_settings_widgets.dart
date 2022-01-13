import 'package:flutter/material.dart';
import '/app/core/base/base_widget_mixin.dart';
import '/app/core/values/app_colors.dart';
import '/app/core/values/app_values.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/asset_image_view.dart';
import '/app/core/widget/ripple.dart';

class ItemSettings extends StatelessWidget with BaseWidgetMixin {
  ItemSettings({
    required this.prefixImage,
    required this.suffixImage,
    required this.title,
    required this.onTap,
  });
  final String prefixImage;
  final String suffixImage;
  final String title;
  final Function()? onTap;

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.padding),
      child: Ripple(
        onTap: onTap,
        child: Row(
          children: [
            AssetImageView(
              fileName: prefixImage,
              height: AppValues.iconSize_20,
              width: AppValues.iconSize_20,
            ),
            const SizedBox(width: AppValues.smallPadding),
            Text(title, style: titleStyle),
            const Spacer(),
            AssetImageView(
              fileName: suffixImage,
              color: AppColors.suffixImageColor,
              height: AppValues.iconSize_20,
              width: AppValues.iconSize_20,
            ),
          ],
        ),
      ),
    );
  }
}