import 'package:decoration_app/view/agenda_form.dart';
import 'package:decoration_app/view/page1.dart';
import 'package:decoration_app/view/page2.dart';
import 'package:decoration_app/view/page3.dart';
import 'package:decoration_app/view/page4.dart';
import 'package:decoration_app/view/usuer/page_davi.dart';
import 'package:decoration_app/view/usuer/page_junior.dart';
import 'package:decoration_app/view/usuer/page_lauro.dart';
import 'package:decoration_app/view/usuer/page_mai.dart';
import 'package:decoration_app/view/usuer/page_maria.dart';
import 'package:decoration_app/view/usuer/page_raquel.dart';
import 'package:decoration_app/view/usuer/page_soso.dart';
import 'package:decoration_app/view/usuer/page_taina.dart';
import 'package:decoration_app/view/usuer/page_zildo.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {

      /// BOLETO ROUTES
      case '/home':
        return MaterialPageRoute(builder: (context) => const Page1());
      case '/chat':
        return MaterialPageRoute(builder: ((context) => const Page3()));
      case '/config':
        return MaterialPageRoute(builder: ((context) => const Page4()));
      case '/agenda':
        return MaterialPageRoute(builder: ((context) => const Page2()));
      case 'agendaForm':
        return MaterialPageRoute(builder: ((context) => const AgendaForm()));
      case '/mariapage':
        return MaterialPageRoute(builder: ((context) => const MariaPage()));
      case 'davipage':
        return MaterialPageRoute(builder: ((context) => const DaviPage()));
      case 'sosopage':
        return MaterialPageRoute(builder: ((context) => const SosoPage()));
      case 'juniorpage':
        return MaterialPageRoute(builder: ((context) => const JuniorPage()));
      case 'maipage':
        return MaterialPageRoute(builder: ((context) => const MaiPage()));
      case 'zildopage':
        return MaterialPageRoute(builder: ((context) => const ZildoPage()));
      case 'taipage':
        return MaterialPageRoute(builder: ((context) => const TaiPage()));
      case 'lauropage':
        return MaterialPageRoute(builder: ((context) => const LauroPage()));
      case 'raquelpage':
        return MaterialPageRoute(builder: ((context) => const RaquelPage()));
    }
    return null;
  }
}
