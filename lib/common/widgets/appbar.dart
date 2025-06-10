import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pawly/utils/device/device_utility.dart';
import 'package:pawly/utils/helpers/navigation_utils.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    required this.showBackArrow,
    this.backgroundColor,
    this.titleColor = Colors.white,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color? backgroundColor;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 102,
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? null // Leading is handled in the title row
            : leadingIcon != null
            ? IconButton(
                onPressed: leadingOnPressed,
                icon: Icon(leadingIcon, color: Colors.white),
              )
            : null,
        title: Row(
          children: [
            if (showBackArrow)
              IconButton(
                onPressed: () => NavigationUtils.goBack(),
                icon: const Icon(Iconsax.arrow_left, color: Colors.white),
              ),
            DefaultTextStyle(
              style: TextStyle(
                color: titleColor,
                fontWeight: FontWeight.w600,
                fontSize: 20,
                height: 1.0,
                letterSpacing: -0.17,
              ),
              textAlign: TextAlign.center,
              child: title ?? Container(),
            ),
            const Spacer(),
            if (actions != null) ...actions!,
          ],
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceUtils.getAppBarHeight());
}
