import 'package:flutter/material.dart';
import 'package:flutter_planets/model/planets.dart';
import 'package:flutter_planets/ui/common/separator.dart';
import 'package:flutter_planets/ui/detail/detail_page.dart';
import 'package:flutter_planets/ui/text_style.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  const PlanetSummary(this.planet, {Key? key, this.horizontal = true})
      : super(key: key);

  const PlanetSummary.vertical(this.planet, {Key? key})
      : horizontal = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: Hero(
        tag: "planet-hero-${planet.id}",
        child: Image(
          image: AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget planetDistance({required String value, required String image}) {
      return SizedBox(
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Image.asset(image, height: 12.0),
          Container(width: 8.0),
          Text(planet.distance, style: Style.smallTextStyle),
        ]),
      );
    }

    Widget planetGravity({required String value, required String image}) {
      return SizedBox(
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Image.asset(image, height: 12.0),
          Container(width: 8.0),
          Text(planet.gravity, style: Style.smallTextStyle),
        ]),
      );
    }

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: const BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 4.0),
          Text(planet.name, style: Style.titleTextStyle),
          Container(height: 10.0),
          Text(planet.location, style: Style.commonTextStyle),
          const Separator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: horizontal ? 1 : 0,
                  child: planetDistance(
                      value: planet.distance,
                      image: 'assets/img/ic_distance.png')),
              Container(
                width: horizontal ? 8.0 : 32.0,
              ),
              Expanded(
                  flex: horizontal ? 1 : 0,
                  child: planetGravity(
                      value: planet.gravity,
                      image: 'assets/img/ic_gravity.png'))
            ],
          ),
        ],
      ),
    );

    final planetCard = Container(
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal
          ? const EdgeInsets.only(left: 46.0)
          : const EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(0, 72, 144, 253),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: planetCardContent,
    );

    return GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => DetailPage(planet),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                  ),
                )
            : null,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child: Stack(
            children: <Widget>[
              planetCard,
              planetThumbnail,
            ],
          ),
        ));
  }
}
