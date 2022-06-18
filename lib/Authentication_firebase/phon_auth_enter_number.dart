import 'package:flutter/material.dart';
import 'package:pauscreen/Authentication_firebase/PhoneController.dart';

class EnterPhoneNumberScreen extends StatefulWidget {
  EnterPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<EnterPhoneNumberScreen> createState() => _EnterPhoneNumberScreenState();
}

class _EnterPhoneNumberScreenState extends State<EnterPhoneNumberScreen> {
  final GlobalKey<FormState> _signUpFormKey = GlobalKey();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: loading ? Center(
          child: CircularProgressIndicator(),
        ) : Form(
          key: _signUpFormKey,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/Homebacground.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:   CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 70, 100, 20),
                        child: Image.asset("asset/Pauscreen Logo PNG.png"),
                      ),
                      Text('Email',textAlign: TextAlign.start,),
                      TextFormField(
                        validator: (value){
                          if (value==null) {
                            return 'field is required';
                          }
                          if(value.isEmpty){
                            return 'field is required';
                          }
                          return null;

                        },
                        controller: PhoneController.phoneController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(

                          hintText: "Enter Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular((5)),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container( child: FlatButton(
                          onPressed: () async{
                            if(_signUpFormKey.currentState!.validate()){
                              setState((){
                                loading = true;
                              });
                              await PhoneController.verifyPhoneNumber();
                              if(mounted){
                                        setState(() {
                                          loading = false;
                                        });
                                      }
                                    }

                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (BuildContext context) => Setting()));


                          }, child: const Text('SEND CODE',style: TextStyle(fontSize: 20,color: Colors.white),),),
                          height: 50, width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
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
