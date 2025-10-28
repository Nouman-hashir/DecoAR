import 'package:deco_ar/decoar.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Products',
                style: AppTextStyles.poppins(
                  color: AppColors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'see all',
                  style: AppTextStyles.poppins(
                    color: AppColors.grey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          // Products grid
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 160.h,
                      child: const ProductItem(
                        imagePath: 'assets/images/sofa1.png',
                        backgroundColor: AppColors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  // Second product (beige background)
                  Expanded(
                    child: SizedBox(
                      height: 160.h,
                      child: const ProductItem(
                        imagePath: 'assets/images/sofa2.png',
                        backgroundColor: AppColors.brown,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),

              // Bottom row with one product spanning full width
              SizedBox(
                height: 180.h,
                child: const ProductItem(
                  imagePath: 'assets/images/sofa3.png',
                  backgroundColor: AppColors.brown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
