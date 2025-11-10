// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? backgroundColor;
  final Widget? trailing;
  final bool showArrow;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.iconColor,
    this.backgroundColor,
    this.trailing,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Container(
              width: 44.w,
              height: 44.w,
              decoration: BoxDecoration(
                color: (iconColor ?? AppColors.primaryColor).withOpacity(0.15),
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Icon(
                icon,
                color: iconColor ?? AppColors.primaryColor,
                size: 22.sp,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  if (subtitle != null) ...[
                    SizedBox(height: 2.h),
                    Text(
                      subtitle!,
                      style: AppTextStyles.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyText,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null)
              trailing!
            else if (showArrow)
              Icon(Icons.arrow_forward_ios, color: AppColors.grey, size: 14.sp),
          ],
        ),
      ),
    );
  }
}
