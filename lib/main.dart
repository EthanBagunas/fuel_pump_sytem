//import 'package:firebase_database/firebase_database.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                  Container(
                    margin: const EdgeInsets.all(100),
                    padding: const EdgeInsets.all(10),
                    color: const Color.fromARGB(255, 209, 205, 255),
                    height: 100,
                    width: 500,
                    child: const Column(
                        children: [
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your contact number',
                              ),
                            ),
                            /*TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter your number of liters',
                              ),
                            ),*/
                        ],
                      ),
                  ),
                  const SizedBox(height: 20), // Add some space between the TextField and the Button
                  ElevatedButton(
                    onPressed: () {
                      // Add the desired functionality when the button is pressed
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