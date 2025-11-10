// ignore_for_file: deprecated_member_use

import 'package:deco_ar/decoar.dart';
import 'dart:async';

enum ToastType { success, error, info, warning }

class CustomToast {
  static OverlayEntry? _overlayEntry;
  static Timer? _timer;
  static bool _isVisible = false;

  static void show(
    BuildContext context, {
    required String message,
    ToastType type = ToastType.info,
    Duration duration = const Duration(seconds: 2),
    IconData? icon,
  }) {
    // Hide previous toast if visible
    if (_isVisible) {
      hide();
    }

    _isVisible = true;

    // Create overlay entry
    _overlayEntry = _createOverlayEntry(context, message, type, icon);

    // Insert overlay
    Overlay.of(context).insert(_overlayEntry!);

    // Auto hide after duration
    _timer = Timer(duration, () {
      hide();
    });
  }

  static OverlayEntry _createOverlayEntry(
    BuildContext context,
    String message,
    ToastType type,
    IconData? customIcon,
  ) {
    final Color backgroundColor;
    final Color iconColor;
    final Color textColor;
    final IconData iconData;

    switch (type) {
      case ToastType.success:
        backgroundColor = AppColors.green;
        iconColor = AppColors.white;
        textColor = AppColors.white;
        iconData = customIcon ?? Icons.check_circle;
        break;
      case ToastType.error:
        backgroundColor = AppColors.lightred;
        iconColor = AppColors.white;
        textColor = AppColors.white;
        iconData = customIcon ?? Icons.error;
        break;
      case ToastType.warning:
        backgroundColor = AppColors.yellow;
        iconColor = AppColors.green;
        textColor = AppColors.white;
        iconData = customIcon ?? Icons.warning;
        break;
      case ToastType.info:
        backgroundColor = AppColors.green;
        iconColor = AppColors.white;
        textColor = AppColors.white;
        iconData = customIcon ?? Icons.info;
        break;
    }

    return OverlayEntry(
      builder: (context) => _ToastWidget(
        message: message,
        backgroundColor: backgroundColor,
        iconColor: iconColor,
        textColor: textColor,
        iconData: iconData,
      ),
    );
  }

  static void hide() {
    if (!_isVisible) return;

    _timer?.cancel();
    _overlayEntry?.remove();
    _overlayEntry = null;
    _isVisible = false;
  }

  // Convenience methods
  static void showSuccess(BuildContext context, String message) {
    show(context, message: message, type: ToastType.success);
  }

  static void showError(BuildContext context, String message) {
    show(context, message: message, type: ToastType.error);
  }

  static void showInfo(BuildContext context, String message) {
    show(context, message: message, type: ToastType.info);
  }

  static void showWarning(BuildContext context, String message) {
    show(context, message: message, type: ToastType.warning);
  }
}

class _ToastWidget extends StatefulWidget {
  final String message;
  final Color backgroundColor;
  final Color iconColor;
  final Color textColor;
  final IconData iconData;

  const _ToastWidget({
    required this.message,
    required this.backgroundColor,
    required this.iconColor,
    required this.textColor,
    required this.iconData,
  });

  @override
  State<_ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<_ToastWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -1.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final safeAreaTop = mediaQuery.padding.top;

    return Positioned(
      top: safeAreaTop + 20.h,
      left: 20.w,
      right: 20.w,
      child: SlideTransition(
        position: _slideAnimation,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.25),
                    blurRadius: 25,
                    offset: const Offset(0, 10),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      color: widget.iconColor.withOpacity(0.25),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      widget.iconData,
                      color: widget.iconColor,
                      size: 22.sp,
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Expanded(
                    child: Text(
                      widget.message,
                      style: AppTextStyles.poppins(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: widget.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
