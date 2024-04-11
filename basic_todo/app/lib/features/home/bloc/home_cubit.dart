import 'package:bloc/bloc.dart';
import 'package:clean_architecture/domain/repositories/todo_repository.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/todo_model.dart';

part "./home_state.dart";

class HomeCubit extends Cubit<HomeState> {
  final TodoRepository todoRepository;

  HomeCubit({
    required this.todoRepository,
  }) : super(const HomeState());

  void init() async {
    final response = await todoRepository.getAll();
    emit(state.copyWith(todos: response.data!.data));
  }

  void delete(String id) async {
    final response = await todoRepository.delete(id: id);

    if (response.data!.status == "success") {
      emit(state.copyWith(
          todos: state.todos!.where((element) => element.id != id).toList()));
    }
  }
}
