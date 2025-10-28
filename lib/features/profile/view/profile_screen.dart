import 'package:deco_ar/decoar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Screen',
        style: AppTextStyles.poppins(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
      ),
    );
  }
}
