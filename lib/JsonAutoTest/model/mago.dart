import 'package:json_annotation/json_annotation.dart';
import 'feitico.dart';

//Parte de private Members
part 'mago.g.dart';

@JsonSerializable()
class Mago {
  final String nome;
  final int idade;
  final List<Feitico> feiticos;

  Mago({
    required this.nome,
    required this.idade,
    required this.feiticos,
  });

  factory Mago.fromJson(Map<String, dynamic> json) => _$MagoFromJson(json);
  Map<String, dynamic> toJson() => _$MagoToJson(this);
}