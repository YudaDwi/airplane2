import 'package:airplane2/model/model.dart';
import 'package:airplane2/services/services.dart';
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
      UserModel user = await AuthServices()
          .signUp(name: name, email: email, password: password, hobby: hobby);
      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthServices.signOut();
      //so after this moment .this state back to auth initial
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void getCurrentUser(String id) async {
    try {
      //buat objek baru yg berdasarkan blueprint/usermodel dan dipasangkan dgn userservices
      UserModel user = await UserServices().getUserById(id);
      emit(AuthSucces(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
