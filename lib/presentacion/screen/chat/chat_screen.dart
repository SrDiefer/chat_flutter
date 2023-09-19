
import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/bubble_message.dart';
import 'package:si_no_app/presentacion/widgets/chat/bubble_message_friend.dart';
import 'package:si_no_app/presentacion/widgets/chat/shared/maessage_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage:  NetworkImage(
                'https://th.bing.com/th/id/R.31a623ad82c9f3d0097a581b4eef41ea?rik=r%2fF5%2bwb%2bTGYc%2bw&pid=ImgRaw&r=0'
            )
          ), 
        ),
          title: const Text('Daniel Urbina🐒'),
          centerTitle: false,
      ),
      body:_ChatView() ,
    );
  }
}

class _ChatView extends StatelessWidget{

@override
Widget build(BuildContext buildContext){
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
      children: [
      Expanded(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index){
            return (index % 2 ==0) ? const MyMessageBubbleFriend() : MyMessageBubble();
          },
          )
      ),
      //Caja de texto de mensajes
      const MessageFieldBox(),
    ]
    ),
    )
    
   
  );
}

}