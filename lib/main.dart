import 'package:chat_gpt_flutter/chat_gpt_flutter.dart';
import 'package:qyza/chat_completion_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//TODO: put your own apiKey
final chatGpt = ChatGpt(apiKey: 'apikey');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
           title: const Text('Spinjet AI'),
          ),
          body: ChatCompletionPage(chatGpt: chatGpt)
        ),
      ),
    );
  }
}