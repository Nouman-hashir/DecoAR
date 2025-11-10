import 'package:deco_ar/decoar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.search, color: AppColors.black, size: 25.sp),
          Image.asset('assets/images/icon.png', width: 35.w, height: 35.h),
          IconButton(
            onPressed: () {
              context.push('/cart');
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: AppColors.black,
              size: 25.sp,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
