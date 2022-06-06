import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../widgets/navbar.dart';

class NavbarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _MenuModel(),
      child: Scaffold(
        backgroundColor: Color(0xFFDD3643),
        body: Stack(
          children: [_PinterestMenuLocation()],
        ),
      ),
    );
  }
}

class _PinterestMenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final mostrar = Provider.of<_MenuModel>(context).mostrar;

    return Positioned(
      bottom: 0,
      child: Container(
        width: width,
        child: Align(
          child: NavbarMenu(
            mostrar: mostrar,
            //backgroundColor: Colors.green,
            //activeColor: Colors.white,
            //inactiveColor: Colors.grey,
            items: [
              NavbarButton(icon: Icons.shopping_bag_outlined, text: 'Order'),
              NavbarButton(
                  icon: Icons.production_quantity_limits_outlined, text: 'Products'),
              NavbarButton(
                  icon: Icons.list_outlined, text: 'List'),
              NavbarButton(
                  icon: Icons.tv_outlined, text: 'Sneak Peek'),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuModel with ChangeNotifier {
  bool _mostrar = true;

  bool get mostrar => this._mostrar;

  set mostrar(bool valor) {
    this._mostrar = valor;
    notifyListeners();
  }
}