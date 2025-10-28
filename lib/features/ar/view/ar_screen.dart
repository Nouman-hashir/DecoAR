import 'package:deco_ar/decoar.dart';

class ARScreen extends StatelessWidget {
  const ARScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'AR Screen',
        style: AppTextStyles.poppins(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
      ),
    );
  }
}
