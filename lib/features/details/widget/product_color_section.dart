import 'package:deco_ar/decoar.dart';

class ProductColorSection extends StatelessWidget {
  final List<Color> colors;
  final int selectedIndex;
  final ValueChanged<int>? onColorSelected;

  const ProductColorSection({
    super.key,
    required this.colors,
    this.selectedIndex = 0,
    this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color',
            style: AppTextStyles.poppins(
              color: AppColors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12.h),
          Wrap(
            spacing: 12.w,
            children: List.generate(colors.length, (index) {
              final isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: onColorSelected != null
                    ? () => onColorSelected!(index)
                    : null,
                child: _ColorDot(color: colors[index], isSelected: isSelected),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const _ColorDot({required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? AppColors.black : AppColors.transparent,
          width: 1.5,
        ),
      ),
      child: Container(
        height: 36.w,
        width: 36.w,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: isSelected
            ? Icon(Icons.check, size: 18.sp, color: AppColors.black)
            : null,
      ),
    );
  }
}
