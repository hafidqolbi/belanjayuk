import 'package:flutter/material.dart';
import 'package:myapp/detail_product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BelanjaYuk",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailProduct(
                            image:
                                "https://cdn.eurekabookhouse.co.id/ebh/product/all/Sba55f636f2594aae8b9ea4d224aae37bs_jpg_720x720q80.jpg",
                            product: "Kaos Hitam",
                            price: "Rp.120.000",
                            description:
                                "Kaos Hitam Berbahan Cotton Combed Yang cocok untuk bersantai ataupun nongkrong dengan teman"),
                      ));
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            fit: BoxFit.cover,
                            height: 150,
                            "https://cdn.eurekabookhouse.co.id/ebh/product/all/Sba55f636f2594aae8b9ea4d224aae37bs_jpg_720x720q80.jpg"),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Kaos Hitam",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("Rp.120.000")
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailProduct(
                            image:
                                "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-71443191/infinide_infinide_t-shirt_kaos_putih_t-shirt_kaos_polos_saku_baju_pria_wanita_distro_infinide_official_store_cotton_combed_24s_premium_full13_p4usykh5.jpg",
                            product: "Kaos Putih",
                            price: "Rp.125.000",
                            description:
                                "Kaos Putih Berbahan Cotton Combed Yang cocok untuk bersantai ataupun nongkrong dengan teman"),
                      ));
                },
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            fit: BoxFit.cover,
                            height: 150,
                            "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-71443191/infinide_infinide_t-shirt_kaos_putih_t-shirt_kaos_polos_saku_baju_pria_wanita_distro_infinide_official_store_cotton_combed_24s_premium_full13_p4usykh5.jpg"),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Kaos Putih",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text("Rp.125.000")
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
