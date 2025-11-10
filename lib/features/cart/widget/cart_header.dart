// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class CartHeader extends StatelessWidget {
  final VoidCallback? onBackPressed;

  const CartHeader({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 16.h,
        bottom: 16.h,
        left: 20.w,
        right: 20.w,
      ),
      color: AppColors.white,
      child: Row(
        children: [
          IconButton(
            onPressed: onBackPressed ?? () => context.pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 20.sp,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
          Expanded(
            child: Center(
              child: Text(
                'My Cart',
                style: AppTextStyles.poppins(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          SizedBox(width: 40.w), // Balance the back button
        ],
      ),
    );
  }
}
