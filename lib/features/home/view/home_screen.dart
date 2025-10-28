import 'package:deco_ar/decoar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(height: 20.h),
          const CategoryRow(),
          SizedBox(height: 20.h),
          const SofaOfferCard(),
          SizedBox(height: 20.h),
          const ProductsSection(),
        ],
      ),
    );
  }
}
