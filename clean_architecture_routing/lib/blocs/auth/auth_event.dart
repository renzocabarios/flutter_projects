part of "./auth_bloc.dart";

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AuthEventInitial extends AuthEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AuthEventLogin extends AuthEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AuthEventLoginFailed extends AuthEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AuthEventLoginSuccess extends AuthEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
