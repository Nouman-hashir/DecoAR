import 'package:deco_ar/decoar.dart';

class ProductActionSection extends StatelessWidget {
  final VoidCallback onAddToCart;
  final VoidCallback? onArTap;
  final String addToCartLabel;
  final String? arIconAsset;
  final Color addToCartColor;
  final Color addToCartTextColor;
  final Color arBackgroundColor;

  const ProductActionSection({
    super.key,
    required this.onAddToCart,
    this.onArTap,
    this.addToCartLabel = 'Add to cart',
    this.arIconAsset = 'assets/images/ar.png',
    this.addToCartColor = AppColors.black,
    this.addToCartTextColor = AppColors.white,
    this.arBackgroundColor = const Color(0xFFCFAF93),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onAddToCart,
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  color: addToCartColor,
                  borderRadius: BorderRadius.circular(18.r),
                ),
                child: Center(
                  child: Text(
                    addToCartLabel,
                    style: AppTextStyles.poppins(
                      color: addToCartTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 14.w),
          GestureDetector(
            onTap: onArTap,
            child: Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                color: arBackgroundColor,
                borderRadius: BorderRadius.circular(18.r),
              ),
              child: arIconAsset != null
                  ? Center(
                      child: Image.asset(
                        arIconAsset!,
                        height: 26.h,
                        width: 26.h,
                        fit: BoxFit.contain,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
