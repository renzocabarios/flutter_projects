import 'package:bloc/bloc.dart';
import 'package:clean_architecture/domain/repositories/todo_repository.dart';
import 'package:equatable/equatable.dart';

part "./create_state.dart";

class CreateCubit extends Cubit<CreateState> {
  final TodoRepository todoRepository;

  CreateCubit({
    required this.todoRepository,
  }) : super(const CreateState());

  void nameChange(String value) async {
    emit(state.copyWith(name: value));
  }

  void onCreate() async {
    final response =
        await todoRepository.create(body: {"name": state.name ?? ""});

    if (response.data!.status == "success") {
      emit(state.copyWith(success: true));
    }
  }
}
