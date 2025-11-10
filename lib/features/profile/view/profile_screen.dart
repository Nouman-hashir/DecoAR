// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [
          // Profile Header with back arrow
          const ProfileHeader(name: 'Kaila'),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 40.h),

                // Edit profile button
                ProfileActionButton(
                  text: 'Edit profile',
                  onTap: () {
                    CustomToast.showInfo(context, 'Edit profile');
                    // Navigate to edit profile
                  },
                ),

                SizedBox(height: 16.h),

                // History button
                ProfileActionButton(
                  text: 'History',
                  onTap: () {
                    CustomToast.showInfo(context, 'Opening history');
                    // Navigate to history/orders
                  },
                ),

                SizedBox(height: 16.h),

                // Alamat (Address) button
                ProfileActionButton(
                  text: 'Alamat',
                  onTap: () {
                    CustomToast.showInfo(context, 'Opening addresses');
                    // Navigate to addresses
                  },
                ),
              ],
            ),
          ),

          // Spacer to push logout button down
          SizedBox(height: 80.h),

          // Logout button at bottom
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GestureDetector(
              onTap: () => _showLogoutDialog(context),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.lightgreyshade,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: Text(
                    'logout',
                    style: AppTextStyles.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightred,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          title: Text(
            'Logout',
            style: AppTextStyles.poppins(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          content: Text(
            'Are you sure you want to logout?',
            style: AppTextStyles.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.greyText,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: AppTextStyles.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                CustomToast.showSuccess(context, 'Logged out successfully');
                // Implement logout logic here
                // For example: context.goNamed(Routes.login.name);
              },
              child: Text(
                'Logout',
                style: AppTextStyles.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.lightred,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
