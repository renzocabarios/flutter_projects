part of "create_cubit.dart";

class CreateState extends Equatable {
  final String? message;
  final String? firstName;
  final String? lastName;

  const CreateState({this.message, this.firstName, this.lastName});

  @override
  List<Object?> get props => [firstName, lastName, message];

  CreateState copyWith({message, firstName, lastName}) {
    return CreateState(
      message: message ?? this.message,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }
}
