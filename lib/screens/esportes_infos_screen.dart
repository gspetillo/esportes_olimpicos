import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esportes_olimpicos/models/esporte_model.dart';

class EsportesInfosScreen extends StatelessWidget {
  EsporteModel esporteModel;

  @override
  Widget build(BuildContext context) {
    esporteModel = ModalRoute.of(context).settings.arguments;

    final baseEquipment = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: new Text(
          esporteModel.equipamentoBase,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 65.0),
        Container(
          child: Image.asset(esporteModel.icone),
          width: 50,
          height: 50,
        ),
        SizedBox(height: 12.0),
        Text(
          esporteModel.nome,
          style: TextStyle(
            color: Colors.white,
            fontSize: 45.0,
          ),
        ),
        SizedBox(height: 20.7),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  "${esporteModel.regiaoSurgimento}, ${esporteModel.dataCriacao}",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: baseEquipment,
            ),
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.375,
          child: Image.asset(
            esporteModel.imagem,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.375,
          padding: EdgeInsets.all(30.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: esporteModel.corBase.withAlpha(200)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 18.0,
          top: 50.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      "${esporteModel.descricao}\n\nCategorias: ${esporteModel.categorias}",
      style: TextStyle(fontSize: 16, color: Colors.grey),
      textAlign: TextAlign.left,
    );

    final readButton = Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: MediaQuery.of(context).size.width - 175,
      child: RaisedButton(
        onPressed: () => {/*_launchURL*/},
        color: esporteModel.corBase,
        child: Text(
          "Site Oficial da ${esporteModel.federacaoInternacional}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[
            bottomContentText,
            readButton,
          ],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
    );
  }
}
