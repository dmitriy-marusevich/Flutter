// import 'dart:collection';
//
// import 'package:flutter/foundation.dart';
// import 'package:provider/provider.dart';
//
// class Cart{
//   final String id;
//   final String name;
//   final int points;
//
//   Cart({
//       @required this.id,
//       @required this.name,
//       @required this.points
//     });
// }
//
// // Cart Provider
// class CartDataProvider with ChangeNotifier {
//   Map<String, Cart> _cartItems = {};
//
//   UnmodifiableMapView<String, Cart> get cartItems =>
//       UnmodifiableMapView(_cartItems);
//
//   int get cartItemsCount => _cartItems.length;
//
//   void addItem({id , name, points}){
//     if (_cartItems.containsKey(id)) {
//       _cartItems.update(id, (ex) => Cart(
//           id: ex.id,
//           name: ex.name,
//           points: ex.points));
//     } else {
//       _cartItems.putIfAbsent(id, () => Cart(
//           id: '${DateTime.now()}',
//           name: name,
//           points: 0
//       ));
//     }
//     notifyListeners();
//   }
//
//   void deleteItem(String id) {
//     _cartItems.remove(id);
//     notifyListeners();
//   }
//
// }
