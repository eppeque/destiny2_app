import 'package:destiny2_app/src/news/news_bloc.dart';
import 'package:destiny2_app/src/webpage_view.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  final NewsBloc newsBloc;

  const NewsView({super.key, required this.newsBloc});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await newsBloc.load();
      },
      child: AnimatedBuilder(
        animation: newsBloc,
        builder: (context, _) {
          final articles = newsBloc.newsArticles.response.articles;

          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              final link = "https://bungie.net${article.link!}";
              return GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WebpageView(url: link),
                  ),
                ),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        article.imagePath == null
                            ? Container()
                            : Image.network(article.imagePath!),
                        article.imagePath == null
                            ? Container()
                            : const SizedBox(height: 8.0),
                        Text(
                          article.title!,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}