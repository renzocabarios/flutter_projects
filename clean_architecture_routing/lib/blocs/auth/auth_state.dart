part of "./auth_bloc.dart";

class AuthState extends Equatable {
  final bool isAuthenticated;
  final UserEntity user;

  const AuthState({this.isAuthenticated = false, this.user = UserEntity.empty});

  @override
  List<Object?> get props => [isAuthenticated, user];
}
