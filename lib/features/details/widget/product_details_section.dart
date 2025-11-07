import 'package:deco_ar/decoar.dart';

class ProductDetailsSection extends StatelessWidget {
  final String title;
  final String price;
  final String soldInformation;
  final double rating;
  final String description;
  final bool isBookmarked;
  final VoidCallback? onBookmarkPressed;

  const ProductDetailsSection({
    super.key,
    required this.title,
    required this.price,
    required this.soldInformation,
    required this.rating,
    required this.description,
    this.isBookmarked = false,
    this.onBookmarkPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyles.poppins(
                    color: AppColors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    height: 1.3,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  // color: AppColors.lightgreyshade,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: IconButton(
                  onPressed: onBookmarkPressed,
                  icon: Icon(
                    isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    color: AppColors.black,
                    size: 28.sp,
                  ),
                ),
              ),
            ],
          ),
          Text(
            price,
            style: AppTextStyles.poppins(
              color: AppColors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              _InfoChip(
                label: '$soldInformation | ${rating.toStringAsFixed(1)}',
                leading: Icon(Icons.star, color: AppColors.yellow, size: 16.sp),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            'Description',
            style: AppTextStyles.poppins(
              color: AppColors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            description,
            style: AppTextStyles.poppins(
              color: AppColors.grey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final Widget? leading;

  const _InfoChip({required this.label, this.leading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: AppColors.lightgreyshade,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[leading!, SizedBox(width: 6.w)],
          Text(
            label,
            style: AppTextStyles.poppins(
              color: AppColors.grey,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
