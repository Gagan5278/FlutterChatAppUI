class User {
  final int id;
  final String name;
  final String imageName;
  final String dob;
  final String bImage;

  User({this.id, this.name, this.imageName, this.dob, this.bImage});

  static List<User> userslist = [
    User(
        id: 0,
        name: 'James M',
        imageName: 'assets/images/p0.jpeg',
        dob: "Aug 7, 1988",
        bImage: 'assets/images/b0.png'),
    User(
        id: 1,
        name: 'Priayanka Nakesi',
        imageName: 'assets/images/p1.jpeg',
        dob: "Mar 23, 1987",
        bImage: 'assets/images/b1.jpeg'),
    User(
        id: 2,
        name: 'Rolles daes',
        imageName: 'assets/images/p2.jpeg',
        dob: "Dec 13, 1985",
        bImage: 'assets/images/b2.jpeg'),
    User(
        id: 3,
        name: 'Bianaca prets',
        imageName: 'assets/images/p3.jpeg',
        dob: "May 7, 1988",
        bImage: 'assets/images/b3.png'),
    User(
        id: 4,
        name: 'Peter gomes',
        imageName: 'assets/images/p4.jpeg',
        dob: "Mar 7, 1978",
        bImage: 'assets/images/b4.jpeg'),
    User(
        id: 5,
        name: 'Aranal Roar',
        imageName: 'assets/images/p5.jpeg',
        dob: "Aug 23, 1998",
        bImage: 'assets/images/b5.jpeg'),
    User(
        id: 6,
        name: 'Sandels rosy',
        imageName: 'assets/images/p6.jpeg',
        dob: "Mar 24, 1988",
        bImage: 'assets/images/b6.jpg'),
    User(
        id: 7,
        name: 'Pure Chinakul',
        imageName: 'assets/images/p7.jpeg',
        dob: "Aug 17, 1978",
        bImage: 'assets/images/b7.jpg'),
    User(
        id: 8,
        name: 'Rosy sandra',
        imageName: 'assets/images/p8.jpeg',
        dob: "Mar 27, 1988",
        bImage: 'assets/images/b8.jpg'),
    User(
        id: 9,
        name: 'Catty Girl',
        imageName: 'assets/images/p9.jpeg',
        dob: "Aug 17, 1988",
        bImage: 'assets/images/b9.jpg'),
  ];
}
