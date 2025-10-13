// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50.h,
        margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(42),
          border: Border.all(color: AppColors.black.withOpacity(0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 1,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: navItems.asMap().entries.map((entry) {
            int index = entry.key;
            BottomNavItem item = entry.value;
            bool isSelected = index == selectedIndex;

            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  height: 50.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    color: (isSelected && index == 2)
                        ? AppColors.bgColor
                        : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      isSelected ? item.filledIcon : item.unfilledIcon,
                      width: 18.w,
                      height: 18.h,
                      color: isSelected ? null : AppColors.black,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bottom Nav Screen\nSelected Index: $selectedIndex',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'AR Icon Background: ${selectedIndex == 2 ? "SHOWING" : "HIDDEN"}',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem {
  final String filledIcon;
  final String unfilledIcon;

  BottomNavItem({required this.filledIcon, required this.unfilledIcon});
}
