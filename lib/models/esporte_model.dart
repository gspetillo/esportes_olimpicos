import 'package:flutter/material.dart';

class EsporteModel {
 
  String nome;
  String icone;
  String imagem;
  Color corBase;
  String regiaoSurgimento;
  String dataCriacao;
  String equipamentoBase;
  String federacaoInternacional;
  String siteFederacao;
  String categorias;
  String descricao;


 EsporteModel({
    this.nome,
    this.icone,
    this.imagem,
    this.corBase,
    this.federacaoInternacional,
    this.siteFederacao,
    this.regiaoSurgimento,
    this.dataCriacao,
    this.equipamentoBase,
    this.categorias,
    this.descricao
  });

}