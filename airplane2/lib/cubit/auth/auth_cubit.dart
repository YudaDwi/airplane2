import 'package:airplane2/model/model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  //karena memang beda dgn cubit yg lain ini menggunakan parameter yg sesuai dgn signUp page
  void signUp(
      {required String name,
      required String email,
      required String password,
      String hobby = ''}) async {
    try {
      AuthLoading();
      //buat objek baru yg berdasarkan blueprint/usermodel dan dipaskan dgn userservices
    } catch (e) {}
  }
}
