import 'package:equatable/equatable.dart';

class Genres extends Equatable {
  final int id;
  final String name;

  const Genres(this.id, this.name);

  @override
  // TODO: implement props
  List<Object?> get props => [id, name];
}