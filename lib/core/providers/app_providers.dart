import 'package:deco_ar/decoar.dart';

class AppProviders {
  static final providers = [
    ChangeNotifierProvider<BottomNavViewModel>(
      create: (_) => BottomNavViewModel(),
    ),
    ChangeNotifierProvider<HomeViewModel>(create: (_) => HomeViewModel()),
    ChangeNotifierProvider<DetailsViewModel>(create: (_) => DetailsViewModel()),
    ChangeNotifierProvider<CartViewModel>(create: (_) => CartViewModel()),
  ];
}
