import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'book_info.dart';

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 4), () {
    //   Navigator.pushReplacementNamed(context, '/bookInfo');
    // });
    final List<String> imgList = [
      'assets/images/bookcover/book1.png',
      'assets/images/bookcover/book2.png',
      'assets/images/bookcover/book3.png',
    ];
    final List<Widget> imageSliders = imgList.map((item) => Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                item,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),
          ),
          Positioned(
            bottom: 90,
            right: 30,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_filled_sharp,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    ))
        .toList();

    return Scaffold(
      backgroundColor: Color(0xff100A20),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          child: Row(
            children: [
              Text(
                'BO',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Column(
                children: [
                  Text(
                    'O',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 15,
                    color: Colors.white,
                  )
                ],
              ),
              Text(
                'KLY',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              color: Colors.white,
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.5,
                    aspectRatio: 1.5,
                    height: 350,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    initialPage: 0,
                    autoPlay: true,
                  ),
                  items: imageSliders,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Best Seller',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        color: Color(0xff100A20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/bookInfo');
                          },
                          child: ListTile(
                            contentPadding: EdgeInsets.all(3.0),
                            leading: FractionallySizedBox(
                              heightFactor: 1.6,
                              widthFactor: 0.3, // Adjust the width factor to control the image size
                              child: Image.asset(
                                'assets/images/bookcover/book${index + 1}.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            title: Text(
                              'Book Title ${index + 1}',
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Author ${index + 1}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Category ${index + 1}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Price ${index + 1}\$',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
