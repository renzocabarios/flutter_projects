import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_crud/domain/repositories/index.dart';

part "create_state.dart";

class CreateCubit extends Cubit<CreateState> {
  final UserRepository userRepository;

  CreateCubit({required this.userRepository}) : super(const CreateState());

  void firstNameChanged(String value) {
    emit(state.copyWith(firstName: value));
  }

  void lastNameChanged(String value) {
    emit(state.copyWith(lastName: value));
  }

  void addUser() async {
    print({
      "firstName": state.firstName ?? "",
      "lastName": state.lastName ?? "",
    });
    final data = await userRepository.addUser({
      "firstName": state.firstName ?? "",
      "lastName": state.lastName ?? "",
    });

    emit(state.copyWith(message: data.message));
  }
}
