import 'package:ajeel/screens/general_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ajeel/screens/sport_screen.dart';
import 'package:ajeel/screens/technology_screen.dart';
import 'package:ajeel/screens/bussenies_screen.dart';
import 'package:ajeel/screens/health_screen.dart';
import 'package:ajeel/screens/entertements_screen.dart';
import 'package:ajeel/main.dart';


class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => MyHomePage(
            title: "Home Screen",
          ),
        );
      case '/sports':
        return MaterialPageRoute(
          builder: (_) => SportScreen(
            title: "رياضة",
            color: Colors.redAccent,
          ),
        );
      case '/technology':
        return MaterialPageRoute(
          builder: (_) => TechnologyScreen(
            title: "تكنولوجيا",
            color: Colors.greenAccent,
          ),
        );
        case '/health':
        return MaterialPageRoute(
          builder: (_) => HealthScreen(
            title: " صحة وجمال",
            color: Colors.greenAccent,
          ),
        );
         case '/business':
        return MaterialPageRoute(
          builder: (_) => BusseniesScreen(
            title: "اقتصاد",
            color: Colors.greenAccent,
          ),
        );
            case '/Entertement':
        return MaterialPageRoute(
          builder: (_) => EntertementsScreen(
            title: "فن",
            color: Colors.greenAccent,
          ),
        );
        case '/general':
        return MaterialPageRoute(
          builder: (_) => GeneralScreen(
            title: "عام",
            color: Colors.greenAccent,
          ),
        );
      default:
        return null;
    }
  }
}
