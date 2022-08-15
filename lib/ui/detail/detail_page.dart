import 'package:flutter/material.dart';
import 'package:flutter_planets/model/planets.dart';
import 'package:flutter_planets/ui/common/plannet_summary.dart';
import 'package:flutter_planets/ui/common/separator.dart';
import 'package:flutter_planets/ui/text_style.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  const DetailPage(this.planet, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 72, 144, 253),
              Color.fromARGB(255, 0, 0, 0),
            ],
            stops: [0.0, 0.9],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
          ),
        ),
        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return Container(
      constraints: const BoxConstraints.expand(height: 295.0),
      child: Image.network(
        planet.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
    );
  }

  Container _getGradient() {
    return Container(
      margin: const EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(0, 0, 0, 0),
            Color.fromARGB(238, 14, 55, 118),
          ],
          stops: [0.0, 0.9],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  ListView _getContent() {
    final overviewTitle = "Overview".toUpperCase();
    return ListView(
      padding: const EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        PlanetSummary(
          planet,
          horizontal: false,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                overviewTitle,
                style: Style.headerTextStyle,
              ),
              const Separator(),
              Text(planet.description, style: Style.commonTextStyle),
            ],
          ),
        ),
      ],
    );
  }

  Container _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: const BackButton(color: Colors.white),
    );
  }
}
