//import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final contactController =TextEditingController();
  final literController =TextEditingController();
  

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan[300],
            title: const Text('Fuckin FLutter '),
          ),

          body: Center(
              child: Column( // Wrap the existing container and the new button in a Column
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                            TextFormField(
                              controller: contactController,
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
                  ElevatedButton(
                    onPressed: () {
                      // Add the desired functionality when the button is pressed
                      CollectionReference collRef= FirebaseFirestore.instance.collection('info');
                      collRef.add({
                        'contact': contactController.text,
                        'liter': literController.text
                      });
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