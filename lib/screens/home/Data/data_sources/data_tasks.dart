import 'package:get_storage/get_storage.dart';

void storeData() {
  final box = GetStorage();
  box.write('username', 'john.doe');
  box.write('age', 30);
  box.write('is_logged_in', true);
}

void retrieveData() {
  final box = GetStorage();
  final username = box.read('username');
  final age = box.read('age');
  final isLoggedIn = box.read('is_logged_in');
  print('Username: $username');
  print('Age: $age');
  print('Is Logged In: $isLoggedIn');
}
