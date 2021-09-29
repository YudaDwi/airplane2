part of 'services.dart';

class UserServices {
  //buat objek reference yg berfungsi untuk menunjukan di firebase cloud firestore bahwa memiliki collection/data
  //yg bernama users
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  //ini seperti mengatur key dan value pd cloudfirestore
  Future<void> setUser(UserModel user) async {
    try {
      //mengembalikan documentreference dengan meminta param string dicek apakah ada
      //dan set disini meminta key dan value dari model user
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance
      });
    } catch (e) {
      throw e;
    }
  }
}
