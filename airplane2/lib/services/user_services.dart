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

  Future<UserModel> getUserById(String id) async {
    try {
      //buat objek snapshot yg berisi menunggu objek userreference yang akan men get
      //dan di return ke user model yg mengambil dgn snapshot key tsb
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
          id: id,
          name: snapshot['name'],
          email: snapshot['email'],
          hobby: snapshot['hobby'],
          balance: snapshot['balance']);
    } catch (e) {
      throw e;
    }
  }
}
