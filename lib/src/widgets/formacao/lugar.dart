import 'package:flutter/material.dart';

class Lugar extends StatelessWidget {
  const Lugar(
      {super.key,
      required this.nome,
      required this.descricao,
      required this.inicio,
      this.fim,
      required this.imagem,
      this.altura,
      this.largura});

  final String nome, descricao;
  final double? altura, largura;
  final DateTime inicio;
  final DateTime? fim;
  final Uri imagem;
  String get dataTotal => fim != null
      ? '${inicio.month}/${inicio.year} - ${fim!.month}/${fim!.year}'
      : '${inicio.month}/${inicio.year} - Presente';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      alignment: Alignment.centerLeft,
      width: largura,
      child: Row(
        children: [
          Image.network(
            imagem.toString(),
            fit: BoxFit.contain,
          ),
          Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.account_balance_rounded),
                  Text(nome),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.school_rounded),
                  Text(descricao),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.calendar_month_rounded),
                  Text(dataTotal),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
