import 'package:flutter/cupertino.dart';
import 'package:project1/models/cart.dart';
import 'package:project1/models/shoe.dart';
import 'package:provider/provider.dart';

import '../Components/Cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('My Cart',
        style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.bold),),
          const SizedBox(height: 30),
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
              itemBuilder: (context,index)
          {
            Shoe individualShoe = value.getUserCart()[index];
            return CartItem(shoe: individualShoe,);
          })
          )
        ],
      ),
    ),);
  }
}
