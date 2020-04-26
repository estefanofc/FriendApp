import 'dart:isolate';

import './user_model.dart';

class Message {
  final User sender;
  final String
      time; //would usually be type datetime or firebase timestamp in production apps
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
final User currUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/person1.jpg',
);

//USERS
final User user1 = User(
  id: 1,
  name: 'Current User',
  imageUrl: 'assets/images/person1.jpg',
);
final User user2 = User(
  id: 2,
  name: 'User2',
  imageUrl: 'assets/images/person2.jpg',
);
final User user3 = User(
  id: 3,
  name: 'User3',
  imageUrl: 'assets/images/person3.jpg',
);
final User user4 = User(
  id: 4,
  name: 'User4',
  imageUrl: 'assets/images/person4.jpg',
);
final User user5 = User(
  id: 5,
  name: 'User5',
  imageUrl: 'assets/images/person5.jpg',
);
final User user6 = User(
  id: 6,
  name: 'User6',
  imageUrl: 'assets/images/person6.jpg',
);
final User user7 = User(
  id: 7,
  name: 'User7',
  imageUrl: 'assets/images/person7.jpg',
);

//Favorite contacts
List<User> favorites = [user3, user4, user7, user2, user5];

//Example chats on home screens
List<Message> chats = [
  Message(
    sender: user2,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user3,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user4,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: user5,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user6,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: user1,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

//Example messages in chat screen
List<Message> messages = [
  Message(
    sender: user2,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user2,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user2,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user2,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
