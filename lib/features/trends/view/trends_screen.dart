import 'package:deco_ar/decoar.dart';

class TrendsScreen extends StatelessWidget {
  const TrendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),

          // "Trends" text
          Align(
            alignment: Alignment.center,
            child: Text(
              'Trends',
              style: AppTextStyles.poppins(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),

          SizedBox(height: 20.h),

          // Image grid layout
          _buildImageGrid(),
        ],
      ),
    );
  }

  Widget _buildImageGrid() {
    return Column(
      children: [
        // Top row - two images
        Row(
          children: [
            Expanded(
              child: _buildTrendImage('assets/images/trends1.png', 150.h),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildTrendImage('assets/images/trends4.png', 180.h),
            ),
          ],
        ),

        SizedBox(height: 16.h),

        // Middle row - two images
        Row(
          children: [
            Expanded(
              child: _buildTrendImage('assets/images/trends3.png', 180.h),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildTrendImage('assets/images/trends2.png', 200.h),
            ),
          ],
        ),

        SizedBox(height: 16.h),

        // Bottom row - two images
        Row(
          children: [
            Expanded(
              child: _buildTrendImage('assets/images/trends5.png', 170.h),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: _buildTrendImage('assets/images/trends6.png', 190.h),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTrendImage(String imagePath, double height) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.r),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
