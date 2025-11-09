import 'package:deco_ar/decoar.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'imagePath': 'assets/images/sofa1.png',
        'backgroundColor': AppColors.green,
      },
      {
        'imagePath': 'assets/images/sofa2.png',
        'backgroundColor': AppColors.brown,
      },
      {
        'imagePath': 'assets/images/sofa3.png',
        'backgroundColor': AppColors.brown,
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Products',
                style: AppTextStyles.poppins(
                  color: AppColors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'see all',
                  style: AppTextStyles.poppins(
                    color: AppColors.grey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          ListView.builder(
            itemCount: (products.length / 2).ceil(),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, rowIndex) {
              final startIndex = rowIndex * 2;
              final endIndex = (startIndex + 2 <= products.length)
                  ? startIndex + 2
                  : products.length;

              final rowProducts = products.sublist(startIndex, endIndex);

              if (rowProducts.length == 1) {
                final product = rowProducts.first;
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: SizedBox(
                    height: 180.h,
                    child: ProductItem(
                      onTap: () {
                        context.push(
                          '/details',
                          extra: {
                            'imagePath': product['imagePath'],
                            'backgroundColor': product['backgroundColor'],
                            'modelPath':
                                'assets/models/tripo_pbr_model_2dce57eb-cc8d-48c1-b3bc-d5f051dfd478.glb',
                          },
                        );
                      },
                      imagePath: product['imagePath'] as String,
                      backgroundColor: product['backgroundColor'] as Color,
                    ),
                  ),
                );
              }
              return Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 160.h,
                        child: ProductItem(
                          onTap: () {
                            context.push(
                              '/details',
                              extra: {
                                'imagePath': rowProducts[0]['imagePath'],
                                'backgroundColor':
                                    rowProducts[0]['backgroundColor'],
                                'modelPath':
                                    'assets/models/tripo_pbr_model_6cf17082-7f32-45dc-9f1c-8400a4c4a8e4.glb',
                              },
                            );
                          },
                          imagePath: rowProducts[0]['imagePath'] as String,
                          backgroundColor:
                              rowProducts[0]['backgroundColor'] as Color,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: SizedBox(
                        height: 160.h,
                        child: ProductItem(
                          onTap: () {
                            context.push(
                              '/details',
                              extra: {
                                'imagePath': rowProducts[1]['imagePath'],
                                'backgroundColor':
                                    rowProducts[1]['backgroundColor'],
                                'modelPath':
                                    'assets/models/tripo_pbr_model_360c7081-45ca-42a6-b3b5-d743a9177cd1.glb',
                              },
                            );
                          },
                          imagePath: rowProducts[1]['imagePath'] as String,
                          backgroundColor:
                              rowProducts[1]['backgroundColor'] as Color,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
