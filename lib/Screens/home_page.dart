import 'package:ecom_cf_2/utils/all_product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mycolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "HomePage",
          style: TextStyle(color: mycolor),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: mycolor,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "SmartPhones",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "smartphones")
                        ? GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detail_Screen()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 20),
                              height: h * 0.392,
                              width: MediaQuery.of(context).size.width * 0.495,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(1, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.grey)
                                ],
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                        image: DecorationImage(
                                            image: NetworkImage(e['thumbnail']),
                                            fit: BoxFit.cover),
                                      ), // child: Image.network(
                                      //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                      // ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 15),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e['title'],
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "\$ ${e['price']}",
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          RatingBarIndicator(
                                            rating: e['rating'].toDouble(),
                                            itemBuilder: (context, i) {
                                              return Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                            itemCount: 5,
                                            itemSize: 25,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Laptops",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "laptops")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Fragrances",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "fragrances")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "SkinCare",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "skincare")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Groceries",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "groceries")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Home Decoration",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "home-decoration")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Furniture",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "furniture")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Tops",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "tops")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Dresses",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-dresses")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Shoes",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-shoes")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Mens Shirts",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "mens-shirts")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Mens Shoes",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "mens-shoes")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Mens Watches",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "mens-watches")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Watches",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-watches")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Bags",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-bags")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Womens Jewellery",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "womens-jewellery")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Sunglasses",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "sunglasses")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Automotive",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "automotive")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Motorcycle",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "motorcycle")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Lighting",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...AllProducts.map(
                    (e) => (e["category"] == "lighting")
                        ? Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            height: h * 0.392,
                            width: MediaQuery.of(context).size.width * 0.495,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.grey)
                              ],
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(e['thumbnail']),
                                          fit: BoxFit.cover),
                                    ), // child: Image.network(
                                    //   "https://media.licdn.com/dms/image/C5603AQFlTT8xZqtK0w/profile-displayphoto-shrink_800_800/0/1620211968028?e=2147483647&v=beta&t=X2TyH4NVL0DtEGNvdnVNOBE_fvP8zFS_bcyefWa9lmg",
                                    // ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e['title'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "\$ ${e['price']}",
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarIndicator(
                                          rating: e['rating'].toDouble(),
                                          itemBuilder: (context, i) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          itemCount: 5,
                                          itemSize: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
