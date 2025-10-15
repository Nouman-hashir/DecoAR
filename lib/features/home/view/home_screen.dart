import 'package:deco_ar/decoar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            const CategoryRow(),
            SizedBox(height: 20.h),
            // Add more content here as needed
          ],
        ),
      ),
    );
  }
}
