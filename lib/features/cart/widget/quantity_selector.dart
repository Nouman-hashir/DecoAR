// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightgreyshade,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onIncrement,
            child: Container(
              width: 32.w,
              height: 32.w,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Center(
                child: Icon(Icons.add, color: AppColors.black, size: 18.sp),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              quantity.toString(),
              style: AppTextStyles.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: onDecrement,
            child: Container(
              width: 32.w,
              height: 32.w,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Center(
                child: Icon(Icons.remove, color: AppColors.black, size: 18.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
