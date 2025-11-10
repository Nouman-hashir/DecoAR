// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class ProfileHeader extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  final VoidCallback? onBackPressed;
  final VoidCallback? onEditPressed;

  const ProfileHeader({
    super.key,
    this.name,
    this.imageUrl,
    this.onBackPressed,
    this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50.h,
        bottom: 30.h,
        left: 20.w,
        right: 20.w,
      ),
      color: AppColors.white,
      child: Column(
        children: [
          // Back arrow
          SizedBox(height: 40.h),
          // Profile picture
          Container(
            width: 100.w,
            height: 100.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.grey,
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          // Name with edit icon
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name ?? 'User Name',
                style: AppTextStyles.poppins(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              SizedBox(width: 8.w),
              GestureDetector(
                onTap: onEditPressed,
                child: Icon(Icons.edit, color: AppColors.grey, size: 18.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDefaultAvatar() {
    return Container(
      color: AppColors.secondaryColor,
      child: Center(
        child: Icon(Icons.person, size: 50.sp, color: AppColors.grey),
      ),
    );
  }
}
