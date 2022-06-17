import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weakend{
 bool switched=false;
 bool sunday=false;
 bool monday=true;
 bool friday=true;
 bool wed=true;
 bool thurd=false;
 bool satur=false;
 bool tuesday=false;
  Future Weakday(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        title: ListTile(
          leading: Text('Days of The Weak',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
          trailing: Icon(Icons.close),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Text('Everyday'),
              trailing:Container(
                  height: 26,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.blue),
                  child: Switch(
                    activeColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    activeTrackColor: Colors.blue,
                    onChanged: (bool value) {}, value: switched,
                    
                  ))
            ),
            Text('- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'),
            ListTile(
                leading: Text('Monday'),
                trailing:Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool value) {}, value: monday,

                    ))
            ),
            ListTile(
                leading: Text('Tuesday'),
                trailing:Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool value) {}, value: tuesday,

                    ))
            ),
            ListTile(
                leading: Text('Wednesday'),
                trailing:Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool value) {}, value: wed,

                    ))
            ),
            ListTile(
                leading: Text('Thursday'),
                trailing:Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool value) {}, value: thurd,

                    ))
            ),
            ListTile(
                leading: Text('Friday'),
                trailing:Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool value) {}, value: friday,

                    ))
            ),
            ListTile(
                leading: Text('Saturday'),
                trailing:Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool value) {}, value:satur,

                    ))
            ),
            ListTile(
                leading: Text('Sunday'),
                trailing:Container(
                    height: 26,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue),
                    child: Switch(
                      activeColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool value) {}, value: sunday,

                    ))
            ),
            SizedBox(height: 20,),
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
        ),
      );
    });
  }
}