import 'package:deco_ar/decoar.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onTap;

  const CategoryItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.backgroundColor,
    this.textColor = AppColors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120.w,
        height: 80.h,
        margin: EdgeInsets.only(right: 12.w),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(26.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
          child: Row(
            children: [
              Text(
                title,
                style: AppTextStyles.poppins(
                  color: textColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 2.w),
              Image.asset(imagePath, width: 50.w, height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
