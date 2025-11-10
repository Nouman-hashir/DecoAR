// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class FilterOption extends StatelessWidget {
  final VoidCallback? onTap;

  const FilterOption({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        child: Row(
          children: [
            Icon(Icons.tune, color: AppColors.grey, size: 20.sp),
            SizedBox(width: 8.w),
            Text(
              'Filter',
              style: AppTextStyles.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
