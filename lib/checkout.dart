import 'package:dynamic_widget/gridview.dart';
import 'package:dynamic_widget/home.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  final name;
  final shirt;
  final price;
  const Checkout(
      {super.key,
      required this.name,
      required this.price,
      required this.shirt});

  @override
  Widget build(BuildContext context) {
    double widthofscreen = MediaQuery.of(context).size.width;
    double heigthofscreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gridview()));
              },
              child: Container(
                  width: widthofscreen * .05,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Center(child: Icon(Icons.arrow_back_ios))),
            ),
            Text(name),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Container(
                  width: widthofscreen * .08,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Icon(Icons.home)),
                  )),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: widthofscreen * .5,
          height: heigthofscreen * .5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              // Text(
              //   price,
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              // ),
              SizedBox(
                height: heigthofscreen * .01,
              ),
              Image.asset(
                shirt,
                height: heigthofscreen * .28,
              ),
              Text(
                price,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: heigthofscreen * .02),
              ),
              SizedBox(
                height: heigthofscreen * .01,
              ),
              increment(),
              SizedBox(
                height: heigthofscreen * .01,
              ),
              Container(
                width: widthofscreen * .3,
                height: heigthofscreen * .03,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 236, 97, 97), Colors.red],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red),
                child: Center(
                  child: Text(
                    'BUY NEW',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: heigthofscreen * .02),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class increment extends StatefulWidget {
  const increment({
    super.key,
  });

  @override
  State<increment> createState() => _incrementState();
}

class _incrementState extends State<increment> {
  // int count = 0;
  // int maxcount = 45;
  // int reset = 30;
  // void incrementCount() {
  //   if (count < maxcount) {
  //     setState(() {
  //       count++;
  //     });
  //   }
  // }

  // void resetCount() {
  //   setState(() {
  //     count = reset;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .04,
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(.2)),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 1)
              ]),
          // child: FloatingActionButton(
          //   onPressed: incrementCount,
          //   backgroundColor: const Color.fromARGB(255, 219, 235, 243),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(50),
          //     // side: BorderSide(color: Colors.grey)
          //   ),
          child: Center(
            child: Text(
              '32',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * .026),
            ),
          ),
          // ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .04,
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(.2)),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 1)
              ]),
          child: Center(
            child: Text(
              '33',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * .026),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .04,
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(.2)),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 1)
              ]),
          child: Center(
            child: Text(
              '34',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * .026),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .04,
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(.2)),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 3, spreadRadius: 1)
              ]),
          child: Center(
            child: Text(
              '35',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * .026),
            ),
          ),
        ),
      ],
    );
  }
}
