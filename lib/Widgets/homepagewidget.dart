import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePageWidget extends StatelessWidget {
  Color primarycolor = Color(0xff182a42);
  Color secondarycolor = Color.fromARGB(255, 255, 255, 255);
  Color widgetcolor = Color(0xfff5eee5);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: secondarycolor,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 209, 208, 208),
                blurRadius: 5.0,
                blurStyle: BlurStyle.outer),
          ],
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                   
                    children: [
                      Text(
                        'Name Surname',
                        style: TextStyle(fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20.0,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.black,
                            
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                    child: Container(
                        width: 210,
                        height: 40,
                        color: Color.fromARGB(0, 33, 149, 243),
                        child: Text(
                          'data',
                          style: TextStyle(fontSize: 12),
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
