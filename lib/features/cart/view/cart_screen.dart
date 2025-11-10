// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Consumer<CartViewModel>(
        builder: (context, viewModel, child) {
          return Column(
            children: [
              // Header
              const CartHeader(),

              // Filter Option
              const FilterOption(
                onTap: null, // Add filter functionality later
              ),

              // Cart Items List
              Expanded(
                child: viewModel.isEmpty
                    ? _buildEmptyCart(context)
                    : ListView.separated(
                        itemCount: viewModel.cartItems.length,
                        separatorBuilder: (context, index) => const Divider(
                          height: 1,
                          color: AppColors.lightgreyshade,
                        ),
                        itemBuilder: (context, index) {
                          final item = viewModel.cartItems[index];
                          return CartItemCard(
                            item: item,
                            onIncrement: () {
                              viewModel.incrementQuantity(item.id);
                              CustomToast.showInfo(context, 'Quantity updated');
                            },
                            onDecrement: () {
                              viewModel.decrementQuantity(item.id);
                              CustomToast.showInfo(context, 'Quantity updated');
                            },
                            onRemove: () {
                              viewModel.removeItem(item.id);
                              CustomToast.showSuccess(
                                context,
                                'Item removed from cart',
                              );
                            },
                          );
                        },
                      ),
              ),

              // Checkout Button
              if (!viewModel.isEmpty)
                CheckoutButton(
                  onTap: () {
                    CustomToast.showSuccess(context, 'Proceeding to checkout');
                    // Navigate to checkout screen
                  },
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildEmptyCart(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            size: 80.sp,
            color: AppColors.grey,
          ),
          SizedBox(height: 20.h),
          Text(
            'Your cart is empty',
            style: AppTextStyles.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Add items to get started',
            style: AppTextStyles.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.greyText,
            ),
          ),
        ],
      ),
    );
  }
}
