import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  String greetingMessage = '';

  TextEditingController myController = TextEditingController();
  
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = 'Hello, $userName';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(greetingMessage),
                TextField(
                  controller: myController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type your name...'
                  ),
                ),

                ElevatedButton(
                  onPressed: greetUser,
                  child: const Text('Tap'),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
