import 'package:deco_ar/decoar.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        'title': 'Chair',
        'imagePath': 'assets/images/chair.png',
        'backgroundColor': AppColors.brown, // Light beige color
        'textColor': AppColors.white,
      },
      {
        'title': 'Table',
        'imagePath': 'assets/images/table.png',
        'backgroundColor': AppColors.green, // Dark green color
        'textColor': AppColors.white,
      },
      {
        'title': 'Lamp',
        'imagePath': 'assets/images/lamp.png',
        'backgroundColor': AppColors.brown, // Light beige color
        'textColor': AppColors.white,
      },
    ];

    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryItem(
            title: category['title'],
            imagePath: category['imagePath'],
            backgroundColor: category['backgroundColor'],
            textColor: category['textColor'],
            onTap: () {},
          );
        },
      ),
    );
  }
}
