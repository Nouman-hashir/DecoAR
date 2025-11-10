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
        'modelPath':
            'assets/models/tripo_convert_329a8980-075b-47fc-bdd9-37a65ae81d58.glb',
      },
      {
        'title': 'Table',
        'imagePath': 'assets/images/table.png',
        'backgroundColor': AppColors.green, // Dark green color
        'textColor': AppColors.white,
        'modelPath':
            'assets/models/tripo_pbr_model_360c7081-45ca-42a6-b3b5-d743a9177cd1.glb',
      },
      {
        'title': 'Lamp',
        'imagePath': 'assets/images/lamp.png',
        'backgroundColor': AppColors.brown, // Light beige color
        'textColor': AppColors.white,
        'modelPath':
            'assets/models/tripo_pbr_model_2dce57eb-cc8d-48c1-b3bc-d5f051dfd478.glb',
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
            onTap: () {
              context.push(
                '/details',
                extra: {
                  'imagePath': category['imagePath'],
                  'backgroundColor': category['backgroundColor'],
                  'modelPath': category['modelPath'],
                },
              );
            },
          );
        },
      ),
    );
  }
}
