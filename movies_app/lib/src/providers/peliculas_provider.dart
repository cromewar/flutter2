import 'dart:async';

import 'package:movies_app/src/models/actores_model.dart';
import 'package:movies_app/src/models/pelicula_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class PeliculasProvider {
  String _apikey = '9d60555ba2a0c37bd1d5e3d1d4ba431d';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  int _popularesPage = 0;
  bool _cargando = false;

  List<Pelicula> _populares = new List();

  //Stream Controller para poder tener un listener global de la lista de peliculas
  //populares
  final _popularesStreamController =
      StreamController<List<Pelicula>>.broadcast();

  //Sink sirve para saber que dato se envia al stream, en este caso recibe
  //Una lista de peliuclas
  Function(List<Pelicula>) get popularesSink =>
      _popularesStreamController.sink.add;

  // este es el getter que va a recibir los datos porcesados por el stream
  Stream<List<Pelicula>> get popularesStream =>
      _popularesStreamController.stream;

  void dispose() {
    _popularesStreamController?.close();
  }

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apikey,
      'language': _language,
    });

    return await _procesarRespuesta(url);
  }

  Future<List<Pelicula>> getPopular() async {
    if (_cargando) return [];
    _cargando = true;
    _popularesPage++;
    final url = Uri.https(_url, '3/movie/popular', {
      'api_key': _apikey,
      'language': _language,
      'page': _popularesPage.toString(),
    });

    final resp = await _procesarRespuesta(url);

    _populares.addAll(resp);

    //se usa la funcion sink para enviar todos los datos de la peliculas al stream
    // Y ser procesados
    popularesSink(_populares);

    _cargando = false;
    return resp;
  }

  Future<List<Actor>> getCast(String peliId) async {
    final url = Uri.https(_url, '3/movie/$peliId/credits', {
      'api_key': _apikey,
      'language': _language,
    });
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final cast = Cast.fromJsonList(decodedData['cast']);
    return cast.actores;
  }

  Future<List<Pelicula>> _procesarRespuesta(Uri uri) async {
    final resp = await http.get(uri);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }

  Future<List<Pelicula>> buscarPelicula(String query) async {
    final url = Uri.https(_url, '3/search/movie', {
      'api_key': _apikey,
      'language': _language,
      'query': query,
    });

    return await _procesarRespuesta(url);
  }
}
