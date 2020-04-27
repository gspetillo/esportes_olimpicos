import 'package:flutter/material.dart';
import 'package:esportes_olimpicos/models/esporte_model.dart';
import 'package:esportes_olimpicos/repository/esporte_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class EsportesScreen extends StatefulWidget {
  @override
  _EsportesScreenState createState() => _EsportesScreenState();
}

class _EsportesScreenState extends State<EsportesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        title: Text(
          "Modalidades Olímpicas",
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/images/olympic-logo.png',
          ),
          onPressed: _launchURL,
        ),
        
      ),
      body: FutureBuilder<List<EsporteModel>>(
        future: EsporteRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  _launchURL() async {
    String url = 'https://www.olympic.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível acessar [$url]';
    }
  }

  ListView buildListView(List<EsporteModel> esportes) {
    return ListView.builder(
      itemCount: esportes == null ? 0 : esportes.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardEsporte(esportes[index]);
      },
    );
  }

  Card cardEsporte(EsporteModel esporte) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      elevation: 5.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: esporte.corBase,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            child: Image.asset(
              esporte.icone,
              width: 50,
              height: 50,
            ),
          ),
          title: Text(
            esporte.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/esportes_infos",
              arguments: esporte,
            );
          },
        ),
      ),
    );
  }
}
