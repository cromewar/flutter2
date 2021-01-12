import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:movies_app/src/models/pelicula_model.dart';

class CardSwiper extends StatelessWidget {
  final List<Pelicula> movies;

  CardSwiper({@required this.movies});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: _screenSize.width * 0.7,
          itemHeight: _screenSize.height * 0.5,
          itemBuilder: (BuildContext context, int index) {
            movies[index].uniqueId = '${movies[index].id}-tarjeta';
            return Hero(
              tag: movies[index].uniqueId,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'detalle',
                        arguments: movies[index]);
                  },
                  child: FadeInImage(
                    placeholder: AssetImage('assets/img/no-image.jpg'),
                    image: NetworkImage(
                      movies[index].getPosterImg(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
          itemCount: movies.length,
          // pagination: new SwiperPagination(),
          // control: new SwiperControl(),
        ),
      ),
    );
  }
}
