import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DialougeBox{
    Future ShowDuration(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        title: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: new CircularPercentIndicator(

                    startAngle: 140,
                    radius: 40.0,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 5.0,
                    percent: 0.1,
                    center:CircleAvatar(
                      backgroundColor: Color(0xffDCE6FF),
                      radius: 35,
                      child:  ListTile(
                        title: Text('  00'),
                        subtitle: Text(' Hour'),
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Colors.blue,
                    progressColor: Colors.white,
                  ),
                ),
                SizedBox(width: 20,),
                new CircularPercentIndicator(

                  startAngle: 190,
                  radius: 40.0,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 5.0,
                  percent: 0.2,
                  center:CircleAvatar(
                    backgroundColor: Color(0xffDCE6FF),
                    radius: 35,
                    child:  ListTile(
                      title: Text('  25'),
                      subtitle: Text('minut'),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Colors.blue,
                  progressColor: Colors.white,
                ),

              ],
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
              height: 50,
              width:150,
              child: FlatButton(
                onPressed: (){},
                child: Text('Save  change'),
              ),
            )
          ],
        ),
      );
    });

}
}