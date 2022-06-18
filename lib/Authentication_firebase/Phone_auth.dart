import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 80,
            width:100 ,
            child: Padding(
              padding: const EdgeInsets.only(left: 5,top: 40),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios,color: Colors.blue,),),
                  const Text('Back',textAlign: TextAlign.start,style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),)

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180,left: 20),
            child: ListView(
              children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Verify',style: TextStyle(color: Colors.blue,fontSize: 30),),

                Text('Enter Verification code send to ',style: TextStyle(color: Colors.blue),),
                Text('example@gmail.com',style: TextStyle(color: Colors.blue,),),
              ],
            ),
          ),

               SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        height: 50,
                        width: 60,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              fillColor: Color(0xffDCE6FF),
                              filled: true
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        height: 50,
                        width: 60,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              fillColor: Color(0xffDCE6FF),
                              filled: true
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        height: 50,
                        width: 60,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              fillColor: Color(0xffDCE6FF),
                              filled: true
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        height: 50,
                        width: 60,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Color(0xffDCE6FF),
                            filled: true
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Text("Didn't get the code? "),
                   TextButton(
                     onPressed: (){},
                     child: Text('Resend',style: TextStyle(decoration: TextDecoration.underline),),
                   )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80,right: 40),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 34,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20,bottom: 20),
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.check,color: Colors.white,size: 50,),),
                    ),
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


