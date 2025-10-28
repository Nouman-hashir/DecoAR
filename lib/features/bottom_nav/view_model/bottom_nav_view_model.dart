import 'package:deco_ar/decoar.dart';

class BottomNavViewModel extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  bool isSelected(int index) => _selectedIndex == index;
}
