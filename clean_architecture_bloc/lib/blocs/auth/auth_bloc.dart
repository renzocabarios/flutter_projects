import 'package:bloc/bloc.dart';
import 'package:clean_architecture_data_layer/domain/repositories/index.dart';
import 'package:equatable/equatable.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';
import 'package:clean_architecture_data_layer/domain/entities/user.dart';

part "./auth_event.dart";
part "./auth_state.dart";

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(const AuthState()) {
    on<AuthEventLogin>(_onLogin);
  }

  void _onLogin(AuthEventLogin event, Emitter<AuthState> emit) {}
}
