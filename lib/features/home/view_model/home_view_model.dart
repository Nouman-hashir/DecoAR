import 'package:deco_ar/decoar.dart';

class HomeViewModel extends ChangeNotifier {
  // Search functionality
  String _searchQuery = '';
  String get searchQuery => _searchQuery;

  void updateSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void clearSearch() {
    _searchQuery = '';
    notifyListeners();
  }

  // Cart functionality
  int _cartItemCount = 0;
  int get cartItemCount => _cartItemCount;

  void addToCart() {
    _cartItemCount++;
    notifyListeners();
  }

  void removeFromCart() {
    if (_cartItemCount > 0) {
      _cartItemCount--;
      notifyListeners();
    }
  }

  // Navigation functionality
  void navigateToSearch() {
    // TODO: Implement search navigation
  }

  void navigateToCart() {
    // TODO: Implement cart navigation
  }
}
