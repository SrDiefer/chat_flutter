//imrm
import 'package:flutter/material.dart';

class MyMessageBubbleFriend extends StatelessWidget {
  const MyMessageBubbleFriend({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Soy Diego', 
            style: TextStyle(
              color: Colors.white
            ),
            ),
          ),
        ),
        const SizedBox(height: 5,),
        const _ImageBubble(),
        const SizedBox(height: 10,),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Image.network('https://yesno.wtf/assets/yes/4-c53643ecec77153eefb461e053fb4947.gif',
      width:  size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      // loadingBuilder:(context, child, loadingProgress) {
      //   return Container(
      //   width: size.width * 0.7,
      // height: 150,
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      // child: const Text('Estoy enviando una imagen')
      // );
      // } 
      // (loadingProgress == null) ? 
      ),
    );
  }
}