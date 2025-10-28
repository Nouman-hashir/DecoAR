// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class BottomNavScreen extends StatelessWidget {
  final Color? backgroundColor;
  const BottomNavScreen({super.key, this.backgroundColor});

  Widget _getBody(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const TrendsScreen();
      case 2:
        return const ARScreen();
      case 3:
        return const SaveScreen();
      case 4:
        return const ProfileScreen();
      default:
        return const HomeScreen();
    }
  }

  Color _getBackgroundColor(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return AppColors.backgrey; // Home screen background
      case 1:
        return AppColors.brown; // Trends screen background (brown)
      case 2:
        return AppColors.backgrey; // AR screen background
      case 3:
        return AppColors.backgrey; // Save screen background
      case 4:
        return AppColors.backgrey; // Profile screen background
      default:
        return AppColors.backgrey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavItem> navItems = [
      BottomNavItem(
        filledIcon: 'assets/images/filled_home.png',
        unfilledIcon: 'assets/images/unfilled_home.png',
      ),
      BottomNavItem(
        filledIcon: 'assets/images/filled_trending.png',
        unfilledIcon: 'assets/images/unfilled_trending.png',
      ),
      BottomNavItem(
        filledIcon: 'assets/images/filled_ar.png',
        unfilledIcon: 'assets/images/unfilled_ar.png',
      ),
      BottomNavItem(
        filledIcon: 'assets/images/filled_save.png',
        unfilledIcon: 'assets/images/unfilled_save.png',
      ),
      BottomNavItem(
        filledIcon: 'assets/images/filled_profile.png',
        unfilledIcon: 'assets/images/unfilled_profile.png',
      ),
    ];

    return Consumer<BottomNavViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor:
              backgroundColor ?? _getBackgroundColor(viewModel.selectedIndex),
          body: Stack(
            children: [
              // Main content
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: 100.h, // Space for bottom navigation
                    ),
                    child: _getBody(viewModel.selectedIndex),
                  ),
                ),
              ),

              // Bottom Navigation Bar positioned at bottom
              Positioned(
                left: 56.w,
                right: 56.w,
                bottom: 24.h,
                child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(0.1),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: navItems.asMap().entries.map((entry) {
                      int index = entry.key;
                      BottomNavItem item = entry.value;
                      bool isSelected = viewModel.isSelected(index);

                      return Expanded(
                        child: GestureDetector(
                          onTap: () => viewModel.setSelectedIndex(index),
                          child: Container(
                            height: 50.h,
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            decoration: BoxDecoration(
                              color: (isSelected && index == 2)
                                  ? AppColors.bgColor
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset(
                                isSelected
                                    ? item.filledIcon
                                    : item.unfilledIcon,
                                width: 18.w,
                                height: 18.h,
                                // color: isSelected ? null : AppColors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class BottomNavItem {
  final String filledIcon;
  final String unfilledIcon;

  BottomNavItem({required this.filledIcon, required this.unfilledIcon});
}
