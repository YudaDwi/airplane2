part of 'services.dart';

class AuthService {
  //buat objek auth yg berdasarkan dari package firebaseAuth
  static FirebaseAuth _auth = FirebaseAuth.instance;

  //buat fungsi yg mengembalikan usermode

  static Future<UserModel> signUp(
      {required String name,
      required String email,
      required String password,
      String hobby = ''}) async {
    try {
      //buat objek dari usercredential
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      //menambahkan ke cloud firestore
      UserModel user = UserModel(
          //id ini diambil dari objek usercredential
          //dan user ini memang di cek apakah dia null atau tidak tapi user ini dipkasa yakin bahwa tidak null
          id: userCredential.user!.uid,
          name: name,
          email: email,
          hobby: hobby,
          balance: 28000000);

      //menunggu userservices yg punya data
      await UserServices().setUser(user);
      return user;
    } catch (e) {
      throw e;
    }
  }
}
