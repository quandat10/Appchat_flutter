
import 'package:appchatdemo/Model/user_model.dart';
import 'package:flutter/cupertino.dart';

import 'domain.dart';
///-----***Created by Dat Tran***------///

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}




// YOU - current user

final User currentUser = User(
  id: 0,
  username: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User greg = User(
  id: 1,
  username: 'User1',
  imageUrl: 'assets/images/greg.jpg',
);
final User james = User(
  id: 2,
  username: 'User2',
  imageUrl: 'assets/images/james.jpg',
);
final User john = User(
  id: 3,
  username: 'User3',
  imageUrl: 'assets/images/john.jpg',
);
final User olivia = User(
  id: 4,
  username: 'User4',
  imageUrl: 'assets/images/olivia.jpg',
);
final User sam = User(
  id: 5,
  username: 'User5',
  imageUrl: 'assets/images/sam.jpg',
);
final User sophia = User(
  id: 6,
  username: 'User6',
  imageUrl: 'assets/images/sophia.jpg',
);
final User steven = User(
  id: 7,
  username: 'User7',
  imageUrl: 'assets/images/steven.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'alooooo',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'dang lam gi dooo',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'jkahsd',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'kkkkahhshjf',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'alooooooooo',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'an com chuaaaaa',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'an roi  a?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPILE MESSAGES N CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'oh???',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'khong an com ok',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'AN COM, con may?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'An cai gi?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'An roi',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'An com chua cau ?',
    isLiked: false,
    unread: true,
  ),
];
