// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class ProfileActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const ProfileActionButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.poppins(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
