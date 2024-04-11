part of "./create_cubit.dart";

class CreateState extends Equatable {
  final String? name;
  final bool? success;

  const CreateState({
    this.name = "",
    this.success = false,
  });

  @override
  List<Object?> get props => [name, success];

  CreateState copyWith({
    String? name,
    bool? success,
  }) {
    return CreateState(
      name: name ?? this.name,
      success: success ?? this.success,
    );
  }
}
