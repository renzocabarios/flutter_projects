part of "./home_cubit.dart";

class HomeState extends Equatable {
  final List<TodoModel>? todos;

  const HomeState({
    this.todos = const [],
  });

  @override
  List<Object?> get props => [todos];

  HomeState copyWith({
    List<TodoModel>? todos,
  }) {
    return HomeState(
      todos: todos ?? this.todos,
    );
  }
}
