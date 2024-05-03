import 'package:flutter/material.dart';

import 'ProductList.dart';
class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}
class _cartState extends State<cart> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Navigator.of(context).pop();
        },child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          ...List.generate(cartList.length, (index) => Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          cartList[selectindex]['image'],
                        )
                    )
                ),
              ),
              Column(
                children: [
                  Text(cartList[selectindex]['name'],),
                  Text(cartList[selectindex]['price'].toString(),),
                  InkWell(onTap: () {
                    setState(() {
                      cartList.removeAt(index);
                    });
                  },child: Icon(Icons.delete)),
                ],
              )
            ],
          )
          ),
        ],
      ),
    );
  }
}

