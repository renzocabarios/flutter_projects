part of "home_cubit.dart";

class HomeState extends Equatable {
  final String? message;
  final List<UserEntity>? users;

  const HomeState({this.message, this.users});

  @override
  List<Object?> get props => [users, message];

  HomeState copyWith({message, users}) {
    return HomeState(
      message: message ?? this.message,
      users: users ?? this.users,
    );
  }
}
