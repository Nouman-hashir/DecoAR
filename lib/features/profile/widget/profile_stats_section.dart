// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class ProfileStatsSection extends StatelessWidget {
  final int ordersCount;
  final int savedItemsCount;
  final int reviewsCount;

  const ProfileStatsSection({
    super.key,
    this.ordersCount = 0,
    this.savedItemsCount = 0,
    this.reviewsCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.white, AppColors.secondaryColor.withOpacity(0.05)],
        ),
        borderRadius: BorderRadius.circular(24.r),
        border: Border.all(
          color: AppColors.lightgreyshade.withOpacity(0.5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.06),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
            icon: Icons.shopping_bag_outlined,
            count: ordersCount,
            label: 'Orders',
            color: AppColors.primaryColor,
          ),
          Container(
            width: 1.w,
            height: 50.h,
            color: AppColors.lightgreyshade.withOpacity(0.5),
          ),
          _buildStatItem(
            icon: Icons.favorite_outline,
            count: savedItemsCount,
            label: 'Saved',
            color: AppColors.lightred,
          ),
          Container(
            width: 1.w,
            height: 50.h,
            color: AppColors.lightgreyshade.withOpacity(0.5),
          ),
          _buildStatItem(
            icon: Icons.star_outline,
            count: reviewsCount,
            label: 'Reviews',
            color: AppColors.yellow,
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required int count,
    required String label,
    required Color color,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            color: color.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 22.sp),
        ),
        SizedBox(height: 10.h),
        Text(
          count.toString(),
          style: AppTextStyles.poppins(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: AppTextStyles.poppins(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.greyText,
          ),
        ),
      ],
    );
  }
}
