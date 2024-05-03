import 'package:flutter/material.dart';

import 'ProductList.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 55),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.search,
                    size: 35,
                  ),
                  Text(
                    'search',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    width: 215,
                  ),
                  Icon(
                    Icons.mic,
                    size: 40,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    menuLine.length,
                        (index) => Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(25)),
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            menuLine[index],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Wrap(children: [
              ...List.generate(ProductDataList.length, (index) =>  InkWell(onTap: () {
                setState(() {
                  selectindex=index;
                  Navigator.of(context).pushNamed('/Details');
                });
              },child: homepage(image: ProductDataList[index]['image'], name: ProductDataList[index]['name'], price: ProductDataList[index]['price'],)),)
            ],
            )
          ],
        ),
      ),
    );
  }

  Widget homepage(
      {required String image,required String name, required int price}
      ) {

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.black),
            color: Colors.black,
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16),
          child: Text(

            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 16),
            child: Text('$price',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
      ],
    );
  }
}

