import 'package:deco_ar/decoar.dart';

class SaveCard extends StatelessWidget {
  final String imagePath;
  final String title;
  const SaveCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 20.w,
            right: 20,
            top: 20,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    title,
                    style: AppTextStyles.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 2,
            child: Image.asset(
              imagePath,
              height: 100.h,
              width: 160.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
