import 'package:esportes_olimpicos/models/esporte_model.dart';
import 'package:flutter/material.dart';
import 'database.dart';

class EsporteRepository {


  Future<List<EsporteModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<EsporteModel> esportes = new List<EsporteModel>();

    if (db.created) {
      esportes = new List<EsporteModel>();

      esportes.add(
        new EsporteModel(
          nome: 'Atletismoflutter ',
          corBase: Colors.lightGreen,
          icone: 'assets/images/jogging_white.png',
          imagem: 'assets/images/atletismo.jpg',
          dataCriacao: '776 a.C.',
          equipamentoBase: 'Pista',
          categorias: '100m rasos, Salto com Vara, Maratona...',
          federacaoInternacional: 'IAAF',
          siteFederacao: 'https://www.worldathletics.org/HOME',
          regiaoSurgimento: 'Grécia',
          descricao: 'Atletismo é um conjunto de esportes constituído por varias modalidades: corrida, marcha, lançamentos e saltos. De modo geral, o atletismo é praticado em estádios, vias públicas ou no campo, como a maratona.'
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Futebol',
          corBase: Colors.green,
          icone: 'assets/images/football_white.png',
          imagem: 'assets/images/futebol.jpg',
          dataCriacao: 'Séc. 19',
          equipamentoBase: 'Campo',
          categorias: 'Torneio Masculino e Feminino',
          federacaoInternacional: 'FIFA',
          regiaoSurgimento: 'Inglaterra',
          descricao: 'O futebol é um esporte de equipe jogado entre dois times de 11 jogadores cada um e um árbitro que se'+
          ' ocupa da correta aplicação das normas. É considerado o desporto mais popular do mundo, pois cerca de 270 milhões'+
          ' de pessoas participam das suas várias competições.'
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Vôlei',
          corBase: Colors.orange,
          icone: 'assets/images/volleyball_white.png',
          imagem: 'assets/images/volei.jpg',
          dataCriacao: '1895',
          equipamentoBase: 'Quadra',
          categorias: 'Toneio Eliminatório',
          federacaoInternacional: 'FIVB',
          regiaoSurgimento: 'Estados Unidos',
          descricao: 'O Vôlei é um esporte praticado numa quadra dividida em duas partes por uma rede, possuindo duas equipes de '+
          'seis jogadores em cada lado. O objetivo da modalidade é fazer a bola passar sobre a rede de modo a que a bola toque no '+
          'chão dentro da quadra adversária.'
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Basquete',
          corBase: Colors.orange,
          icone: 'assets/images/basketball_white.png',
          imagem: 'assets/images/basquete.jpg',
          dataCriacao: '1891',
          equipamentoBase: 'Quadra',
          categorias: 'Torneio Eliminatório',
          federacaoInternacional: 'FIBA',
          regiaoSurgimento: 'Estados Unidos',
          descricao: 'O Basquete é um esporte disputado por duas equipes de 12 jogadores (5 em campo e 7 suplentes) que têm como objetivo passar a '+
          'bola por dentro de um cesto e evitar que a bola entre no seu cesto colocado nas extremidades da quadra, seja num ginásio ou '+
          'ao ar livre.'
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Boxe',
          corBase: Colors.red,
          icone: 'assets/images/boxing_white.png',
          imagem: 'assets/images/boxe.jpg',
          dataCriacao: '3000 a.C.',
          equipamentoBase: 'Ringue',
          categorias: 'Peso Mosca, Peso Leve, Peso Médio...',
          federacaoInternacional: 'IBF',
          regiaoSurgimento: 'Mesopotâmia',
          descricao: 'O boxe ou pugilismo é um esporte de combate, no qual os lutadores usam apenas os punhos, tanto para a defesa, quanto para o ataque.'+
          ' A palavra deriva do inglês box, ou pugilismo (bater com os punhos), expressão utilizada na Inglaterra entre 1000 e 1850. Ao contrário do que '+
          'muitos dizem, o boxe não surgiu na Grécia Antiga mas sim na Mesopotâmia, mais precisamente na Suméria.'
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Esgrima',
          corBase: Colors.lightBlue,
          icone: 'assets/images/fencing_white.png',
          imagem: 'assets/images/esgrima.jpg',
          dataCriacao: '1170 a.C.',
          equipamentoBase: 'Ringue',
          categorias: 'Sabre Individual, Sabre Equipes, Espada Individual, Espada Equipes, Florete Individual',
          federacaoInternacional: 'IFF',
          regiaoSurgimento: 'Japão',
          descricao: 'A esgrima (do antigo provençal esgrima do vocábulo germânico skirmjan, "proteger") é um desporto que evoluiu da antiga forma de combate,'+
          ' em que o objetivo é tocar no adversário com uma lâmina ao mesmo tempo que se evita ser tocado por ele. Existem três disciplinas de esgrima: o florete,'+
          ' a espada e o sabre, diferindo não só no formato da lâmina mas também nas zonas do corpo onde um toque é válido e também como as armas funcionam.'
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Handebol',
          corBase: Colors.red,
          icone: 'assets/images/handball_white.png',
          imagem: 'assets/images/handball.jpg',
          dataCriacao: '1919',
          equipamentoBase: 'Quadra',
          categorias: 'Torneio Eliminatório (12 equipes)',
          federacaoInternacional: 'IHF',
          regiaoSurgimento: 'Alemanha',
          descricao: 'O Handebol é um esporte coletivo que envolve passes de bola com as mãos. Praticado entre duas equipes, o nome dessa modalidade esportiva é proveniente da língua inglesa, visto que hand significa “mão”. A bola do handebol é feita de couro e para as equipes masculinas ela possui um diâmetro maior. Sendo assim, para homens ela tem 58,4 cm de circunferência e massa de 453,6 gramas. Já para mulheres, ela tem 56,4 cm de circunferência e massa de 368,5 gramas.',
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Tênis de Mesa',
          corBase: Colors.blue,
          icone: 'assets/images/table-tennis_white.png',
          imagem: 'assets/images/tenis_de_mesa.jpg',
          dataCriacao: 'Séc. 19',
          equipamentoBase: 'Mesa',
          categorias: 'Individual e Duplas',
          federacaoInternacional: 'ITTF',
          regiaoSurgimento: 'Inglaterra',
          descricao: 'O Tênis de Mesa é um esporte de raquete inventado no Reino Unido, mais precisamente na Inglaterra no século XIX onde era conhecido como ping-pong, até se tornar uma marca registrada e por isso mudou-se o nome na Europa para tênis de mesa, sendo o nome ping-pong atualmente usado apenas para fins recreativos. É um dos esportes mais populares do mundo em termos de número de jogadores. O tênis de mesa é conhecido como sendo o esporte com o tipo de bola mais rápida do mundo, sendo o esporte de raquete que mais produz efeito (rotação) na bola.'
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Tênis',
          corBase: Colors.lightGreen,
          icone: 'assets/images/tennis_white.png',
          imagem: 'assets/images/tenis.jpg',
          dataCriacao: '1234',
          equipamentoBase: 'Quadra',
          categorias: 'Lorem, Ipsum, Dolor, Sit, Amet',
          federacaoInternacional: 'LOREM',
          regiaoSurgimento: 'Lorem Ipsum',
          descricao: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a risus vel neque volutpat tristique viverra a magna.'+
          ' Fusce lobortis malesuada quam, a molestie justo scelerisque ultrices. Maecenas interdum turpis a metus laoreet, et tempus lacus '+
          'tristique. Quisque leo risus, auctor sit amet mi eu, consequat varius felis. Proin gravida, odio vitae auctor semper, elit diam ti'+
          'ncidunt lectus, a pharetra odio nulla et neque.',
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Natação',
          corBase: Colors.blue[700],
          icone: 'assets/images/swimming_white.png',
          imagem: 'assets/images/natacao.jpg',
          dataCriacao: '1234',
          equipamentoBase: 'Piscina',
          categorias: 'Lorem, Ipsum, Dolor, Sit, Amet',
          federacaoInternacional: 'LOREM',
          regiaoSurgimento: 'Lorem Ipsum',
          descricao: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a risus vel neque volutpat tristique viverra a magna.'+
          ' Fusce lobortis malesuada quam, a molestie justo scelerisque ultrices. Maecenas interdum turpis a metus laoreet, et tempus lacus '+
          'tristique. Quisque leo risus, auctor sit amet mi eu, consequat varius felis. Proin gravida, odio vitae auctor semper, elit diam ti'+
          'ncidunt lectus, a pharetra odio nulla et neque.',
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Judô',
          corBase: Colors.grey[600],
          icone: 'assets/images/judo_white.png',
          imagem: 'assets/images/judo.jpg',
          dataCriacao: '1234',
          equipamentoBase: 'Tatame',
          categorias: 'Lorem, Ipsum, Dolor, Sit, Amet',
          federacaoInternacional: 'LOREM',
          regiaoSurgimento: 'Lorem Ipsum',
          descricao: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a risus vel neque volutpat tristique viverra a magna.'+
          ' Fusce lobortis malesuada quam, a molestie justo scelerisque ultrices. Maecenas interdum turpis a metus laoreet, et tempus lacus '+
          'tristique. Quisque leo risus, auctor sit amet mi eu, consequat varius felis. Proin gravida, odio vitae auctor semper, elit diam ti'+
          'ncidunt lectus, a pharetra odio nulla et neque.',
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Ginástica',
          corBase: Colors.pink,
          icone: 'assets/images/gymnast-1_white.png',
          imagem: 'assets/images/ginastica.jpg',
          dataCriacao: '1234',
          equipamentoBase: 'Tatame',
          categorias: 'Lorem, Ipsum, Dolor, Sit, Amet',
          regiaoSurgimento: 'Lorem Ipsum',
          federacaoInternacional: 'LOREM',
          descricao: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a risus vel neque volutpat tristique viverra a magna.'+
          ' Fusce lobortis malesuada quam, a molestie justo scelerisque ultrices. Maecenas interdum turpis a metus laoreet, et tempus lacus '+
          'tristique. Quisque leo risus, auctor sit amet mi eu, consequat varius felis. Proin gravida, odio vitae auctor semper, elit diam ti'+
          'ncidunt lectus, a pharetra odio nulla et neque.',
        ),
      );

      esportes.add(
        new EsporteModel(
          nome: 'Ciclismo',
          corBase: Colors.blue,
          icone: 'assets/images/bicycle-race_white.png',
          imagem: 'assets/images/ciclismo.jpg',
          dataCriacao: '1234',
          equipamentoBase: 'Pista',
          categorias: 'Lorem, Ipsum, Dolor, Sit, Amet',
          federacaoInternacional: 'LOREM',
          regiaoSurgimento: 'Lorem Ipsum',
          descricao: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a risus vel neque volutpat tristique viverra a magna.'+
          ' Fusce lobortis malesuada quam, a molestie justo scelerisque ultrices. Maecenas interdum turpis a metus laoreet, et tempus lacus '+
          'tristique. Quisque leo risus, auctor sit amet mi eu, consequat varius felis. Proin gravida, odio vitae auctor semper, elit diam ti'+
          'ncidunt lectus, a pharetra odio nulla et neque.',
        ),
      );

      esportes.sort((a,b) => a.nome.compareTo(b.nome));

    }

    return new Future.value(esportes);
  }

}
