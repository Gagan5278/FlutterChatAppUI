import 'package:chat_app_local/model/users.dart';
import 'package:intl/intl.dart';

class Message {
  final User user;
  final String dateTime;
  final String message;
  bool isLiked;
  final bool unreadMessage;

  Message(
      {this.user,
      this.dateTime,
      this.message,
      this.isLiked,
      this.unreadMessage});

  //Create users here as we are working offline mode not from server
  var dateTimeCurrent = DateTime.now();
  // EXAMPLE CHATS ON HOME SCREEN
  static List<Message> allChats = [
    Message(
      user: User.userslist[1],
      dateTime: DateFormat()
          .add_MMMEd()
          .format(DateTime.now().add(Duration(seconds: -70))),
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist[2],
      dateTime: DateFormat()
          .add_Hms()
          .format(DateTime.now().add(Duration(seconds: -60))),
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist[3],
      dateTime: DateFormat()
          .add_Hms()
          .format(DateTime.now().add(Duration(seconds: -50))),
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unreadMessage: false,
    ),
    Message(
      user: User.userslist[4],
      dateTime: DateFormat()
          .add_Hms()
          .format(DateTime.now().add(Duration(seconds: -40))),
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist[5],
      dateTime: DateFormat()
          .add_Hms()
          .format(DateTime.now().add(Duration(seconds: -30))),
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unreadMessage: false,
    ),
    Message(
      user: User.userslist[6],
      dateTime: DateFormat()
          .add_Hms()
          .format(DateTime.now().add(Duration(seconds: -20))),
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unreadMessage: false,
    ),
    Message(
      user: User.userslist[7],
      dateTime: DateFormat()
          .add_Hms()
          .format(DateTime.now().add(Duration(seconds: -10))),
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: false,
      unreadMessage: false,
    ),
    Message(
      user: User.userslist[8],
      dateTime: DateFormat().add_Hms().format(DateTime.now()),
      message: 'Hey, Whats up. How are you doing.',
      isLiked: false,
      unreadMessage: true,
    ),
  ];

  //
  // EXAMPLE MESSAGES IN CHAT SCREEN
  static List<Message> messages = [
    Message(
      user: User.userslist[1],
      dateTime: '5:30 PM',
      message: 'Hey, how\'s it going? What did you do today?',
      isLiked: true,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist.first,
      dateTime: '4:30 PM',
      message:
          'Just walked my doge. She was super duper cute. The best pupper!!',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist[1],
      dateTime: '3:45 PM',
      message: 'How\'s the doggo?',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist[1],
      dateTime: '3:15 PM',
      message: 'All the food',
      isLiked: true,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist.first,
      dateTime: '2:30 PM',
      message: 'Nice! What kind of food did you eat?',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist[1],
      dateTime: '2:00 PM',
      message: 'I ate so much food today.',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist.first,
      dateTime: '2:30 PM',
      message: 'Nice! What kind of food did you eat?',
      isLiked: false,
      unreadMessage: true,
    ),
    Message(
      user: User.userslist[1],
      dateTime: '2:00 PM',
      message: 'I ate so much food today.',
      isLiked: false,
      unreadMessage: true,
    ),
  ];
}
