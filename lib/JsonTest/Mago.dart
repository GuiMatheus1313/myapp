import 'package:flutter/material.dart';
import 'dart:convert';

class Mago {
  //Parte dos Magos
  final String nome;
  final int idade;
  final int nivelMagico;
  final double inteligencia;
  final double mana;
  final int afinidadeFogo;
  final int afinidadeAgua;
  final int afinidadeTerra;
  final int afinidadeAr;
  final String feitico1;
  final String feitico2;
  final String feitico3;

  // Construtor privado
  Mago._({
    required this.nome,
    required this.idade,
    required this.nivelMagico,
    required this.inteligencia,
    required this.mana,
    required this.afinidadeFogo,
    required this.afinidadeAgua,
    required this.afinidadeTerra,
    required this.afinidadeAr,
    required this.feitico1,
    required this.feitico2,
    required this.feitico3,
  });

  // Fábrica para criar Mago a partir de JSON
  factory Mago.fromJson(Map<String, dynamic> json) {
    return Mago._(
      nome: json['nome'],
      idade: json['idade'],
      nivelMagico: json['nivelMagico'],
      inteligencia: (json['inteligencia'] as num).toDouble(),
      mana: (json['mana'] as num).toDouble(),
      afinidadeFogo: json['afinidadeFogo'],
      afinidadeAgua: json['afinidadeAgua'],
      afinidadeTerra: json['afinidadeTerra'],
      afinidadeAr: json['afinidadeAr'],
      feitico1: json['feitico1'],
      feitico2: json['feitico2'],
      feitico3: json['feitico3'],
    );
  }
  static List<Mago> carregarMagos(String jsonMago) {
    final data = jsonDecode(jsonMago); // Converte o JSON em um mapa
    List<dynamic> listaMagos = data['magos'] as List<dynamic>;
    return listaMagos.map((json) => Mago.fromJson(json)).toList();
  }
}
