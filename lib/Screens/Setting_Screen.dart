import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pauscreen/Screens/Setting%20Dialogues/Social_Application.dart';
import 'Setting Dialogues/Language.dart';
import 'Setting Dialogues/Notification_Screen.dart';
import 'Setting Dialogues/Set_ParentsPasscode.dart';
import 'Setting Dialogues/Usage_Duration.dart';
import 'Setting Dialogues/Whole_Day.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var weight =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue);
  bool isswitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/Homebacground.jpeg'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15),
              child: ListTile(
                trailing: CircleAvatar(
                  radius: 20,
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },icon: Icon(Icons.close),)
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white),
                        child: ListTile(
                          title: Text(
                            'Activate',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                          trailing: Container(
                            height: 26,
                            width: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue),
                            child: Switch(
                              inactiveTrackColor: Colors.grey,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.blue,
                              onChanged: (bool value) {
                                setState(() {
                                  if (isswitched == false) {
                                    // Showbox(context);
                                  }
                                  isswitched = value;
                                });
                              },
                              value: isswitched,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 620,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: ListView(
                            children: [
                              FlatButton(
                                  onPressed: () {
                                    DialougeBox().ShowDuration(context);
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Usage Duration',
                                      style: weight,
                                    ),
                                    trailing: Text(
                                      '30 minutes',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Set the duration for who long you like to ',
                                      textAlign: TextAlign.justify,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              FlatButton(
                                  onPressed: () {
                                    DialougeBox().ShowDuration(context);
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Interval Duration',
                                      style: weight,
                                    ),
                                    trailing: Text(
                                      '1 hour',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Set the duration for who long you woul you like',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Wholeday().DisplayDays(context);
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Start And End Time',
                                      style: weight,
                                    ),
                                    trailing: Text(
                                      'Whole day',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w900),
                                    ),
                                    subtitle: Text(
                                      'Time of the day when setting start and end',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: ListTile(
                                    title: Text(
                                      'Days Of The Week',
                                      style: weight,
                                    ),
                                    trailing: Text(
                                      'Mon,Fri,Wed',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      "Select Sepecific's day apply  setting",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Notifi().notification(context);
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Notification',
                                      style: weight,
                                    ),
                                    trailing: Text(
                                      '1 minutes',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      'Select notification time before useage duration bounds',textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: ListTile(
                                    title: Text(
                                      'Sound Alarm ',
                                      style: weight,
                                    ),
                                    trailing: Container(
                                      height: 26,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue),
                                      child: Switch(
                                        inactiveTrackColor: Colors.grey,
                                        activeColor: Colors.white,
                                        activeTrackColor: Colors.blue,
                                        onChanged: (bool value) {
                                          setState(() {
                                            if (isswitched == false) {
                                              // Showbox(context);
                                            }
                                            isswitched = value;
                                          });
                                        },
                                        value: isswitched,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Turn on Alarm when usage and interval duration',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Passccode().Modifypaascode(context);
                                    Passccode().Temporiraly(context);
                                    Passccode().ParentsPasscode(context);
                                    Passccode().ConfirmPasscode(context);
                                  },
                                  child: ListTile(
                                    title: Text(
                                  "Set Parent's Passcode",
                                      style: weight,
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                    subtitle: Text(
                                      'Set passcode so you can bypass current setting temporarilly',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                              FlatButton(
                                  onPressed: () {
                                      Application().applicationApp(context);
                                    },
                                  child: ListTile(
                                    title: Text(
                                      'Select Applications',
                                      style: weight,
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                    subtitle: Text(
                                      'Slect apps to witch pause screen setting will apply',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                              Text(
                                '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                              FlatButton(
                                  onPressed: () {
                                    Language().languages(context);
                                  },
                                  child: ListTile(
                                    title: Text(
                                      'Language',
                                      style: weight,
                                    ),
                                    trailing: Icon(Icons.arrow_forward_ios),
                                    subtitle: Text(
                                      'select your language',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }


}
