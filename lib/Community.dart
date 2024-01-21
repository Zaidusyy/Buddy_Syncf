import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gemini AI Chatbot'),
        ),
        body: MyTwoColumnLayout(),
      ),
    );
  }
}

class MyTwoColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // First Column (Chat History)
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blueGrey,
            child: Center(
              child: Text('Chat History'),
            ),
          ),
        ),

        // Second Column (Chatbot)
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.green,
            child: Center(
              child: SimpleChatbot(),
            ),
          ),
        ),
      ],
    );
  }
}

class SimpleChatbot extends StatefulWidget {
  @override
  _SimpleChatbotState createState() => _SimpleChatbotState();
}

class _SimpleChatbotState extends State<SimpleChatbot> {
  TextEditingController _messageController = TextEditingController();
  List<String> chatHistory = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Display chat history
        Expanded(
          child: ListView.builder(
            itemCount: chatHistory.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(chatHistory[index]),
              );
            },
          ),
        ),

        // Input field and send button
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: 'Type your message...',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  sendMessage(_messageController.text);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void sendMessage(String message) {
    // Process the user's message, and get the chatbot's response
    String response = getChatbotResponse(message);

    // Update the chat history
    setState(() {
      chatHistory.add('User: $message');
      chatHistory.add('Chatbot: $response');
    });

    // Clear the input field
    _messageController.clear();
  }

  String getChatbotResponse(String message) {
    // Replace this with the logic for interacting with your Gemini AI chatbot
    // For a simple example, just return a static response
    return 'I am a simple chatbot. You said: $message';
  }
}
