import 'package:flutter/material.dart';
import 'package:si_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> message = [
    Message(text: 'Que Ondas', fromWho: FromWho.mine),
    Message(text: "Ya Regresaste", fromWho: FromWho.other)
  ];
}