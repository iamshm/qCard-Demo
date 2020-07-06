import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CheckOutPage(),
    );
  }
}

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Subscriptions"),
        leading: Icon(Icons.settings),
        actions: <Widget>[
          Icon(Icons.calendar_today),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.add_circle),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                CheckoutItems(
                  date: "30 MAY",
                  itemColor: Colors.black,
                  itemName: "Netflix",
                  imageUrl: "assets/images/netflix.png",
                  isDisney: false,
                ),
                CheckoutItems(
                  date: "30 MAY",
                  itemColor: Color(0xff080c2a),
                  itemName: "Disney Plus",
                  imageUrl: "assets/images/disneyplus.png",
                  isDisney: true,
                ),
                CheckoutItems(
                  date: "30 JUL",
                  itemColor: Colors.green[300],
                  itemName: "Spotify",
                  imageUrl: "assets/images/spotify.png",
                  isDisney: false,
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff212121),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Total Expenses (Per Month)",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$ 44.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CheckoutItems extends StatelessWidget {
  final String imageUrl;
  final Color itemColor;
  final String itemName;
  final String date;
  final bool isDisney;

  const CheckoutItems(
      {Key key,
      this.imageUrl,
      this.itemColor,
      this.itemName,
      this.date,
      this.isDisney})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 7,
      ),
      child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: itemColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          // color: Colors.pink,
                          image: DecorationImage(image: AssetImage(imageUrl))),
                    ),
                  ),
                  Text(
                    itemName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      date,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    (isDisney)
                        ? Text(
                            "\$ 22.00",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        : Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xffff5721),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Trial Period",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
