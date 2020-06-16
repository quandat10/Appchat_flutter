import 'package:appchatdemo/Model/user_model.dart';
///-----***Created by Dat Tran***------///

class Profile{
  final User user;
  final int age;
  final String local;
  final int status;
  final int sex;

  Profile( this.user,this.age, this.local, this.status, this.sex);

}

// USERS
final User Mai = User(
  id: 1,
  username: 'Mai',
  imageUrl: 'assets/images/greg.jpg',
);
final User Long = User(
  id: 2,
  username: 'Long',
  imageUrl: 'assets/images/james.jpg',
);
final User Tran = User(
  id: 3,
  username: 'Tran',
  imageUrl: 'assets/images/john.jpg',
);
final User Thuy = User(
  id: 4,
  username: 'Thuy',
  imageUrl: 'assets/images/olivia.jpg',
);
final User Diem = User(
  id: 5,
  username: 'Diem',
  imageUrl: 'assets/images/sam.jpg',
);
final User Ha = User(
  id: 6,
  username: 'Ha',
  imageUrl: 'assets/images/sophia.jpg',
);
final User Nga = User(
  id: 7,
  username: 'Nga',
  imageUrl: 'assets/images/steven.jpg',
);
List<User> favorites = [Mai, Long, Tran, Thuy, Diem, Ha, Nga];
List<Profile> profiles = [
  Profile(Mai, 18, "Ha Noi", 1, 0),
  Profile(Long, 20, "Ha Nam", 1, 1),
  Profile(Tran, 31, "bac Ninh", 1, 1),
  Profile(Thuy, 14, "Hai Phong", 1, 2),
  Profile(Diem, 25, "Ha Giang", 1, 0),
  Profile(Ha, 16, "Hung Yen", 1, 1),
  Profile(Nga, 25, "Ha Noi", 1, 0),

];