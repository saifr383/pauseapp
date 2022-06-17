import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pauscreen/Screens/ProfilesScreen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'Setting Dialogues/Start_Now.dart';

class Activates extends StatefulWidget {
  const Activates({Key? key}) : super(key: key);

  @override
  _ActivatesState createState() => _ActivatesState();
}

class _ActivatesState extends State<Activates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/Homebacground.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                ListTile(
                    leading: Image.asset('asset/Pauscreen Logo PNG.png'),
                    trailing: CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 30,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                              Profils()
                          ));
                        },
                        child: Icon(
                          Icons.settings,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Text(
                  'Children obey, your parents in everything ,for this pleases the lord .'
                  ' -Colossians  3:20',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Image.asset('asset/Plane.png',width:300,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: new CircularPercentIndicator(
                    startAngle: 200,
                    radius: 140.0,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 30.0,
                    percent: 0.4,
                    center: Padding(
                      padding: const EdgeInsets.only(top: 75,left: 10),
                      child: Column(
                        children: [
                          Text('Remaining  (60%)',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                          ListTile(
                              title: Text(
                                ' 00 : 25: 55',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 40),
                              ),
                              subtitle: Text(
                                '  Hours: minute: second',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize:20),
                              )),
                        ],
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.blue,
                    progressColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: FlatButton(
                    onPressed: () {
                      StartsNow().starts(context);
                    },
                    child: Text(
                      'Deactivate',
                      style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
