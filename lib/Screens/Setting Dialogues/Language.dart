import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Language {
  Future languages(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Text(
                      'Lanuguage',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue,fontSize: 20),
                    ),
                    trailing: Icon(Icons.close),
                  ),
                  ListTile(
                    title: Text('English'),
                    trailing: Icon(Icons.check,color: Colors.green,),
                  ),
                  ListTile(
                    title: Text('Japenese'),
                  ),
                  ListTile(
                    title: Text('Chinese'),
                  ),
                  ListTile(
                    title: Text('Korean'),
                  ),
                  ListTile(
                    title: Text('Dutch'),
                  ),
                  ListTile(
                    title: Text('French'),
                  ),
                  ListTile(
                    title: Text('spanish'),
                  ),
                  ListTile(
                    title: Text('Italian'),
                  ),
                  ListTile(
                    title: Text('Indonesia'),
                  ),
                  ListTile(
                    title: Text('Arabic'),
                  ),

                ],
              ));
        });
  }
}
