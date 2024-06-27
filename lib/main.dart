import 'package:flutter/material.dart';
import 'package:ajeel/routes/app_router.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}



class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.onGenerateRoute,
      title: 'AJEEL',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'AJEEL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ': اختر نوع الاخبار الذي تود رؤيته ',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/sports');
                  },
                  child: Image.asset(
                    'lib/assets/sport.png',
                    width: 150,
                    height: 150,
                    
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/technology');
                  },
                  child: Image.asset(
                    'lib/assets/tec.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                  Navigator.of(context).pushNamed('/health');
                                    },
                  child: Image.asset(
                    'lib/assets/health.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/business');
                  },
                  child: Image.asset(
                    'lib/assets/busn.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Entertement');
                  },
                  child: Image.asset(
                    'lib/assets/entr.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/general');
                  },
                  child: Image.asset(
                    'lib/assets/general.png',
                    width: 150,
                    height: 150,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
