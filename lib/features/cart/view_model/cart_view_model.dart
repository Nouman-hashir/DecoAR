import 'package:deco_ar/decoar.dart';

class CartItem {
  final String id;
  final String name;
  final String imagePath;
  final String price;
  final int quantity;
  final Color? backgroundColor;

  CartItem({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.price,
    this.quantity = 1,
    this.backgroundColor,
  });

  CartItem copyWith({
    String? id,
    String? name,
    String? imagePath,
    String? price,
    int? quantity,
    Color? backgroundColor,
  }) {
    return CartItem(
      id: id ?? this.id,
      name: name ?? this.name,
      imagePath: imagePath ?? this.imagePath,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}

class CartViewModel extends ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  int get itemCount => _cartItems.length;

  bool get isEmpty => _cartItems.isEmpty;

  // Initialize with sample data
  CartViewModel() {
    _cartItems.addAll([
      CartItem(
        id: '1',
        name: 'Yozu Chair',
        imagePath: '', // No image shown in design
        price: 'Rp.1.250.000',
        quantity: 1,
        backgroundColor: AppColors.secondaryColor,
      ),
      CartItem(
        id: '2',
        name: 'Table',
        imagePath: 'assets/images/table.png',
        price: 'Rp.2.500.000',
        quantity: 1,
        backgroundColor: AppColors.brown,
      ),
      CartItem(
        id: '3',
        name: 'Futuristic Chair',
        imagePath: 'assets/images/chair.png',
        price: 'Rp.1.250.000',
        quantity: 1,
        backgroundColor: AppColors.secondaryColor,
      ),
    ]);
  }

  void incrementQuantity(String itemId) {
    final index = _cartItems.indexWhere((item) => item.id == itemId);
    if (index != -1) {
      _cartItems[index] = _cartItems[index].copyWith(
        quantity: _cartItems[index].quantity + 1,
      );
      notifyListeners();
    }
  }

  void decrementQuantity(String itemId) {
    final index = _cartItems.indexWhere((item) => item.id == itemId);
    if (index != -1 && _cartItems[index].quantity > 1) {
      _cartItems[index] = _cartItems[index].copyWith(
        quantity: _cartItems[index].quantity - 1,
      );
      notifyListeners();
    }
  }

  void removeItem(String itemId) {
    _cartItems.removeWhere((item) => item.id == itemId);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  void addItem(CartItem item) {
    final existingIndex = _cartItems.indexWhere(
      (cartItem) => cartItem.id == item.id,
    );
    if (existingIndex != -1) {
      incrementQuantity(item.id);
    } else {
      _cartItems.add(item);
      notifyListeners();
    }
  }
}
