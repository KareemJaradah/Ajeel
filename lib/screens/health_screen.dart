import 'package:ajeel/screens/news_detail_screen.dart';
import 'package:ajeel/serviecs/news_service.dart';
import 'package:flutter/material.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({super.key, required this.title, required this.color});
  final String title;
  final MaterialAccentColor color;
  @override
  State<HealthScreen> createState() => _SportScreenState();
}

class _SportScreenState extends State<HealthScreen> {
         late Future<List<dynamic>> newsArticles;
   void initState() {
    super.initState();
    newsArticles = NewsService().fetchNews('health');
  }
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, textDirection: TextDirection.rtl),
        backgroundColor: widget.color,
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: newsArticles,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}', textDirection: TextDirection.rtl);
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final article = snapshot.data![index];
                  return ListTile(
                    minVerticalPadding: 10,
                    contentPadding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey),
                    ),
                    title: Text(
                      article['title'],
                      textDirection: TextDirection.rtl,
                    ),
                    subtitle: Text(
                      article['author'] ?? 'Unknown Author',
                      textDirection: TextDirection.rtl,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NewsDetailScreen(
                            title: article['title'],
                               imageUrl: article['urlToImage'] ?? 'https://play-lh.googleusercontent.com/Ay-iuiRibuc8BCPugwbSKqdRgIwZ8tLOo2lPBjypAp-BvxuWTWuuOn_RsBQoqjiitA',
                            content: article['content'] ?? article['url'],
                            textDirection: TextDirection.rtl, // Pass text direction to detail screen
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}