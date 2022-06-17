import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Weakeand_dialogue.dart';

class Wholeday {
  String dropdownvalue = 'Apple';
  var items = [
    'Apple',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple',
  ];
  Future DisplayDays(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Column(
                children: [
                  ListTile(
                      leading: Text(
                        'Start And End Time',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      trailing: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      )),
                  ListTile(
                    leading: Text(
                      'Whole Day',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    trailing: Switched(),
                  ),
                  Text('- - - - - - - - - - - - - - - - - - - - - - - - '),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade500)),
                          height: 30,
                          width: 120,
                          child: FlatButton(
                            onPressed: () {
                              Weakend().Weakday(context);
                            },
                            child: Center(
                                child: Text(
                              'Start with',
                              style: TextStyle(fontSize: 10),
                            )),
                          )),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(
                                width: 1, color: Colors.grey.shade500)),
                        height: 30,
                        width: 126,
                        child: Center(
                            child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 9,
                            ),
                            SizedBox(
                              width: 3,
                             ),
                            Text(
                              'End with time',
                              style: TextStyle(fontSize: 7),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            DropdownButton(
                              value: dropdownvalue,
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 10,
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(fontSize: 10),
                                    ));
                              }).toList(),
                              onChanged: (String? value) {
                                value = dropdownvalue;
                              },
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Save Changes'),
                    ),
                  )
                ],
              ));
        });
  }

  Future ISswitchedoff(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Column(
                children: [
                  ListTile(
                      leading: Text(
                        'Start And End Time',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      trailing: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      )),
                  ListTile(
                    leading: Text(
                      'Whole Day',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    trailing: Switched(),
                  ),
                  Text('- - - - - - - - - - - - - - - - - - - - - - - - '),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(
                                width: 1, color: Colors.grey.shade500)),
                        height: 30,
                        width: 110,
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Center(
                                    child: Text(
                                  'Start with',
                                  style: TextStyle(fontSize: 10),
                                )),
                                Center(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        size: 12,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '8:30  PM',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(
                                width: 1, color: Colors.grey.shade500)),
                        height: 30,
                        width: 120,
                        child: Center(
                            child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'End with',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Save Changes'),
                    ),
                  )
                ],
              ));
        });
  }

}

class Switched extends StatefulWidget {
  const Switched({Key? key}) : super(key: key);

  @override
  _SwitchedState createState() => _SwitchedState();
}

class _SwitchedState extends State<Switched> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 26,
        width: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: Switch(
          activeColor: Colors.white,
          inactiveTrackColor: Colors.grey,
          activeTrackColor: Colors.blue,
          onChanged: (bool value) {
            setState(() {
              if (_switchValue == false) {
                Wholeday().ISswitchedoff(context);
              }
              _switchValue = value;
            });
          },
          value: _switchValue,
        ));
  }
}
