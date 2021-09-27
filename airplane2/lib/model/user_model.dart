part of 'model.dart';

//buat models terlebih dahulu setelah itu mengatur services(opsional) - set cubit(state management)
class UserModel extends Equatable {
  final String id;
  final String name;
  final String email;
  final String hobby;
  final int balance;

  UserModel(
      {required this.id,
      required this.name,
      this.email = '',
      this.hobby = '',
      this.balance = 0});

  @override
  List<Object?> get props => [id, name, email, hobby, balance];
}
