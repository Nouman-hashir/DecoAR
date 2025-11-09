import 'package:deco_ar/decoar.dart';

class DetailsScreen extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final String modelPath;
  const DetailsScreen({
    super.key,
    required this.imagePath,
    required this.backgroundColor,
    required this.modelPath,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DetailsViewModel>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 330.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32.h, left: 4.w),
                    child: IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.white,
                        size: 20.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Hero(
                          tag: imagePath,
                          child: Image.asset(imagePath, fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            ProductDetailsSection(
              title: 'Futuristic Chair',
              price: 'Rp.1.250.000',
              soldInformation: '250 Terjual',
              rating: 4.7,
              description:
                  'Kursi futuristik yang menarik ini memiliki desain yang unik dan modern, menggabungkan elemen-elemen bentuk dan warna yang tidak mencolok. Kursi ini memiliki struktur yang kokoh dan berkualitas tinggi, yang membuatnya nyaman duduk dan tahan lama.',
            ),
            ProductColorSection(
              colors: viewModel.availableColors,
              selectedIndex: viewModel.selectedColorIndex,
              onColorSelected: viewModel.selectColor,
            ),
            ProductActionSection(
              onAddToCart: () {},
              onArTap: () {
                context.push('/ar', extra: {'modelPath': modelPath});
              },
              arBackgroundColor:
                  viewModel.availableColors[viewModel.selectedColorIndex],
            ),
          ],
        ),
      ),
    );
  }
}
