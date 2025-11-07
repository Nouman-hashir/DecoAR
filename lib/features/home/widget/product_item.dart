// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const ProductItem({
    super.key,
    required this.imagePath,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(45.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Hero(
          transitionOnUserGestures: true,
          tag: imagePath,
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
