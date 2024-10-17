import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final String image;
  final String product;
  final String price;
  final String description;
  const DetailProduct(
      {super.key,
      required this.image,
      required this.product,
      required this.price,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          product,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              product,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              price,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green)),
                child: Text(
                  "Beli",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
