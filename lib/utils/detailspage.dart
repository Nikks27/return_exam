import 'package:flutter/material.dart';
import 'ProductList.dart';
class detailspage extends StatefulWidget {
  const detailspage({super.key});

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {
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
          Container(
            margin: EdgeInsets.all(20),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      ProductDataList[selectindex]['image'],
                    )
                )
            ),
          ),
          Column(
            children: [
              Text( ProductDataList[selectindex]['name'],style: TextStyle(fontSize: 20),),
              Text( ProductDataList[selectindex]['price'].toString(),style: TextStyle(fontSize: 20),),
              FloatingActionButton(onPressed: () {
                setState(() {
                  bool start=false;
                  int index=0;
                  for(int i=0; i<cartList.length;i++)
                  {
                    if(cartList[i]['name']==ProductDataList[index]['name'])
                    {
                      start=true;
                      index=i;
                    }
                  }
                  if(start)
                  {
                    cartList[index]['qyt']++;
                  }
                  else
                  {
                    cartList.add(ProductDataList[selectindex]);
                  }
                });
                Navigator.of(context).pushNamed('/cart');
              },child: Icon(Icons.add),)
            ],
          )
        ],
      ),
    );
  }
}