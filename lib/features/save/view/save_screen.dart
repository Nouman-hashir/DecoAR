import 'package:deco_ar/decoar.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
            ),
            Text(
              'Saved',
              style: AppTextStyles.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: AppColors.black, size: 24.sp),
            ),
          ],
        ),
        SaveCard(
          imagePath: 'assets/images/sofa1.png',
          title: 'Futuristic Chair',
        ),
        10.verticalSpace,
        SaveCard(
          imagePath: 'assets/images/sofa2.png',
          title: 'Futuristic Chair',
        ),
      ],
    );
  }
}
