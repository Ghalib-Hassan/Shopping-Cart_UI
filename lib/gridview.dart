import 'package:dynamic_widget/checkout.dart';
import 'package:dynamic_widget/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Gridview());
}

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double widthofscreen = MediaQuery.of(context).size.width;
    double heigthofscreen = MediaQuery.of(context).size.width;

    // List colors = [
    //   Colors.red,
    //   Colors.blue,
    //   Colors.cyan,
    //   Colors.brown,
    //   Colors.pink,
    //   Colors.amber,
    //   Colors.purple,
    //   Colors.green,
    //   Colors.black,
    //   Colors.orange,
    //   Colors.red,
    //   Colors.blue,
    //   Colors.cyan,
    //   Colors.brown,
    //   Colors.pink,
    //   Colors.amber,
    //   Colors.purple,
    //   Colors.green,
    //   Colors.black,
    //   Colors.orange,
    // ];

    List shirts = [
      'asset/shirt1.jpg',
      'asset/shirt2.jpg',
      'asset/shirt3.jpg',
      'asset/shirt4.jpg',
      'asset/shirt5.jpg',
      'asset/shirt6.jpg'
    ];
    List tnames = [
      'Polo',
      'Amazon',
      'Sneakers',
      'Tocksuit',
      'Gucci',
      'Cluemang'
    ];
    List prices = [
      "\$3.76",
      '\$5.67',
      '\$6.21',
      '\$8.545',
      '\$3.254',
      '\$5.32'
    ];
    List shop = [
      'Buy Now',
      'Buy Now',
      'Buy Now',
      'Buy Now',
      'Buy Now',
      'Buy Now',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                  width: widthofscreen * .05,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child:
                      Center(child: Center(child: Icon(Icons.arrow_back_ios)))),
            ),
            Text('T-Shirt Shop'),
            Container(
                width: widthofscreen * .05,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.3),
                ),
                child: Icon(Icons.menu)),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
                itemCount: shirts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.9),
                itemBuilder: (context, index) {
                  // if (index % 2 == 0) {
                  //   return Container(
                  //     color: Colors.amber,
                  //     child: Text('item ${index + 1}'),
                  //   );
                  // } else {
                  //   return Container(
                  //     color: Colors.blue,
                  //     child: Text('item ${index + 1}'),
                  //   );
                  // }

                  // return Container(
                  //   color: colors[index],
                  //   child: Center(
                  //       child: Text(
                  //     '${index + 1}',
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.bold, color: Colors.white),
                  //   )),
                  // );
                  return Column(
                    children: [
                      Container(
                        width: widthofscreen * .3,
                        height: heigthofscreen * .4,
                        decoration: BoxDecoration(
                            // color: Colors.grey.withOpacity(.5),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 50, 50, 50),
                                width: 1),
                            color: Colors.grey.withOpacity(.2)),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _Favicon(),
                            Image.asset(
                              '${shirts[index]}',
                              // width: 280,
                              height: heigthofscreen * .20,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: heigthofscreen * .001,
                            ),
                            Text(
                              '${tnames[index]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: heigthofscreen * .02),
                            ),
                            Text(
                              '${prices[index]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: heigthofscreen * .025,
                                  color: Colors.red),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: heigthofscreen * 0.01,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Checkout(
                                      shirt: shirts[index],
                                      name: tnames[index],
                                      price: prices[index])));
                        },
                        child: Container(
                          width: widthofscreen * .2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                                child: Text(
                              shop[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: heigthofscreen * .02),
                            )),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ))
        ],
      ),
    );
  }
}

class _Favicon extends StatefulWidget {
  @override
  __FaviconState createState() => __FaviconState();
}

class __FaviconState extends State<_Favicon> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              fav = !fav;
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .042,
            height: MediaQuery.of(context).size.height * .08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 255, 253, 253),
                border: Border.all(color: Colors.grey)),
            child: Center(
              child: Icon(
                Icons.favorite,
                size: MediaQuery.of(context).size.height * .035,
                color: fav ? Colors.red : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
