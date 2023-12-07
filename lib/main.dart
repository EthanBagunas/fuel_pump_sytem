import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final sendController =TextEditingController();
  final literController =TextEditingController();


  

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan[300],
            title: const Text('Fuel Pump System'),
          ),

          body: Center(
              child: Column( // Wrap the existing container and the new button in a Column
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                            TextFormField(
                              controller: sendController,
                              decoration: const InputDecoration(
                                hintText: 'Enter your contact number',
                              ),
                            ),
                            TextFormField(
                              controller: literController ,
                              decoration: const InputDecoration(
                                hintText: 'Enter your number of liters',
                              ),
                            ),
                  const SizedBox(height: 20), // Add some space between the TextField and the Button
                  ElevatedButton (
                    onPressed: () {
                      // Add the desired functionality when the button is pressed
                      
                        FirebaseDatabase.instance.ref().child("info").child(sendController.text).set(int.parse(literController.text));
                      
                      /*CollectionReference collRef= FirebaseFirestore.instance.collection('info');
                      collRef.add({
                        'contact': sendController.text,
                        'liter': literController.text
                      });*/
                      /*
                      String message = "This is a test message!";
                      List<String> recipents = ["1234567890", "5556787676"];

                      _sendSMS(message, recipents);
                    */

                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),

          ),
      );
  }
}
/*
void _sendSMS(String message, List<String> recipents) async {
 String _result = await sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
print*/