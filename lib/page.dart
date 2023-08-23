import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 249, 249),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Pro.webp'),
                  radius: 50,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Nada Abdelnasser",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 375,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(242, 242, 242, 11),
                    borderRadius: BorderRadius.circular(35.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Talabat',
                      hintStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                      suffixIcon: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepOrange,
                          ),
                          child: const CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 251, 251, 247),
                          width: 10.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 251, 251, 252),
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 248, 249, 249),
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 375,
              height: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepOrange,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),

                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 7,
                        ),
                        child: Text(
                          "Talabat mart\n20 mins delivery",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 0.5,
                        ),
                        child: Text(
                          "Explore thousands of restaurants \ndelivering to your area",
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 251, 250, 250),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      //button
                      Container(
                        width: 150,
                        height: 40,
                        margin: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(65),
                          color: Colors.white,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Shop Now",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),
                            )),
                      ),
                    ],
                  ),
                  //image
                  const SizedBox(width: 50),
                  Image.asset(
                    "assets/images/Card.jpg",
                    width: 150,
                    height: 100,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Categores",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage("assets/images/download.jpg"),
                  width: 150,
                  height: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage("assets/images/download2.jpg"),
                  width: 137,
                  height: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage("assets/images/download3.jpg"),
                  width: 137,
                  height: 100,
                ),
              ]),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Offers",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage("assets/images/download.jpg"),
                  width: 500,
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage("assets/images/download2.jpg"),
                  width: 500,
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: AssetImage("assets/images/download3.jpg"),
                  width: 500,
                  height: 200,
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Orders", icon: Icon(Icons.shopping_cart_checkout)),
          BottomNavigationBarItem(
              label: "Voucher", icon: Icon(Icons.card_giftcard_sharp)),
          BottomNavigationBarItem(
              label: "Offers", icon: Icon(Icons.local_offer)),
          BottomNavigationBarItem(label: "Progile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
