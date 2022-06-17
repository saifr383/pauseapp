import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Usage_Data_Permission.dart';

class Application {
  Future applicationApp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Permission().DataPermission(context);

                          }, icon: Icon(Icons.arrow_back_ios)),
                      Text(
                        'Social Applications',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 600,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Permission().DataPermission(context);

                      }, icon:  Icon(
                        Icons.check_box,
                        color: Colors.blue,
                      ),),                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'A Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Permission().DataPermission(context);

                      }, icon:  Icon(
                        Icons.check_box,
                        color: Colors.blue,
                      ),),                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'B Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                     IconButton(onPressed: (){
                       Permission().DataPermission(context);

                     }, icon:  Icon(
                       Icons.check_box,
                       color: Colors.blue,
                     ),),
                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'C Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Permission().DataPermission(context);
                      },icon: Icon(Icons.check_box_outline_blank_rounded),),
                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'D Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Permission().DataPermission(context);
                      },icon: Icon(Icons.check_box_outline_blank_rounded),),
                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'E Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Permission().DataPermission(context);
                      },icon: Icon(Icons.check_box_outline_blank_rounded),),
                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'F Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Permission().DataPermission(context);
                      },icon: Icon(Icons.check_box_outline_blank_rounded),),
                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'G Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Permission().DataPermission(context);
                      },icon: Icon(Icons.check_box_outline_blank_rounded),),
                      Image.asset(
                        'asset/WhatsApp Image 2022-05-10 at 18.27.10.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'H Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
