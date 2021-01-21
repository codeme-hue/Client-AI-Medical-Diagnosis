import 'package:flutter/services.dart';

class ReplyArray {
  final List<Reply> replies;

  ReplyArray({
    this.replies,
});

  factory ReplyArray.fromJson(List<dynamic> parsedJson) {

    List<Reply> photos = new List<Reply>();
    photos = parsedJson.map((i)=>Reply.fromJson(i)).toList();

    return new ReplyArray(
      replies: photos,
    );
  }
}

class Reply{
  final String recipientId;
  final String text;
  // List<Buttons> buttons;

  Reply({
    this.recipientId,
    this.text,
    // this.buttons
}) ;

  factory Reply.fromJson(Map<String, dynamic> json){
    return new Reply(
      recipientId: json['recipient_id'],
      text: json['text'],
      // buttons: json['buttons']
    );
  }

}

// class Buttons {
//   final String payload;
//   final String title;

//   Buttons({
//     this.payload,
//     this.title
//   });

//   factory Buttons.fromJson(Map<String, dynamic> json){
//    return new Buttons(
//       payload: json['payload'],
//       title: json['title']
//    ) ;  
//   }
// }