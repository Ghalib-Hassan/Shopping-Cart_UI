import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:dynamic_widget/home.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const Profile());
// }
class Profile extends StatefulWidget {
  final productName;
  const Profile({super.key, required this.productName});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController controller = TextEditingController();
  String changes = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.amber),
          title: Text(
            'Write a Review',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage('asset/G_Pic_38.jpeg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                      children: [
                        TextSpan(text: 'How was your experience\n with '),
                        TextSpan(
                            text: '${widget.productName}',
                            style: TextStyle(color: Colors.amber))
                      ])),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 165,
                child: RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  onRatingChanged: (value) => debugPrint('$value'),
                  initialRating: 3,
                  maxRating: 5,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     Text(
              //       'Write a requirement ',
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              //     ),
              //     Text(
              //       'data',
              //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              //     )
              //   ],
              // ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    changes = value.toString();
                    print('Your changes, $changes');
                  },
                  textAlign: TextAlign.center,
                  textCapitalization: TextCapitalization.sentences,
                  // style: TextStyle(fontSize: 20),
                  // autofocus: true,
                  // readOnly: true,
                  cursorColor: Colors.black,
                  maxLength: 250,
                  keyboardType: TextInputType.text,
                  maxLines: 3,
                  decoration: InputDecoration(
                      // border: UnderlineInputBorder(
                      //     borderRadius: BorderRadius.circular(300)
                      //     ),
                      focusedBorder: OutlineInputBorder(
                          // gapPadding: 89,
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Write your comment',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      contentPadding: EdgeInsets.all(20),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 183, 78),
                      borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    onPressed: () {
                      print(
                          'Your Response, $controller, when you click on \"Submit"\ button');
                      print(
                          'Your Changes, $changes, when you click on \"Submit"\ button');
                    },
                    child: Text('Submit'),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
