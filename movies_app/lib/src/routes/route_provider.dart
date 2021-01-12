import 'package:flutter/material.dart';

import 'package:movies_app/src/pages/home_page.dart';
import 'package:movies_app/src/pages/peliucla_detalle.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HompePage(),
    'detalle': (BuildContext context) => PeliculaDetalle(),
  };
}
