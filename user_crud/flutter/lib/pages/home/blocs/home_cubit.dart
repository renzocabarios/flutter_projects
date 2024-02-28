import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_crud/domain/entities/index.dart';
import 'package:user_crud/domain/repositories/index.dart';

part "home_state.dart";

class HomeCubit extends Cubit<HomeState> {
  final UserRepository userRepository;

  HomeCubit({required this.userRepository}) : super(const HomeState());

  void init() async {
    final data = await userRepository.getUsers();
    if (data.status == "success") {
      emit(state.copyWith(
        message: data.message,
        users: data.data,
      ));
    }
  }

  void deleteUser(String id) async {
    final data = await userRepository.deleteUser(id);
    if (data.status == "success") {
      emit(state.copyWith(
        message: data.message,
        users: state.users!.where((element) => element.id != id).toList(),
      ));
    }
  }
}
