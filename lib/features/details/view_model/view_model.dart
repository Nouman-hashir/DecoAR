import 'package:deco_ar/decoar.dart';

class DetailsViewModel extends ChangeNotifier {
  DetailsViewModel({List<Color>? availableColors})
    : _availableColors = availableColors ?? _defaultColors;

  static const List<Color> _defaultColors = [
    Color(0xFFCFAF93),
    Color(0xFF2E6C51),
    Color(0xFF6B59B1),
    Color(0xFFA93B55),
  ];

  final List<Color> _availableColors;
  List<Color> get availableColors => List.unmodifiable(_availableColors);

  int _selectedColorIndex = 0;
  int get selectedColorIndex => _selectedColorIndex;

  void selectColor(int index) {
    if (index == _selectedColorIndex ||
        index < 0 ||
        index >= _availableColors.length) {
      return;
    }
    _selectedColorIndex = index;
    notifyListeners();
  }
}
