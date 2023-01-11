import 'package:destiny2_app/src/news/news_bloc.dart';
import 'package:destiny2_app/src/news/values/article.dart';
import 'package:destiny2_app/src/webpage_view.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = NewsBloc();

    return RefreshIndicator(
      onRefresh: () async => await bloc.loadArticles(),
      child: StreamBuilder(
        stream: bloc.articles,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            bloc.loadArticles();
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final articles = snapshot.data!.response.articles;
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return _ArticleItem(article: article);
            },
          );
        },
      ),
    );
  }
}

class _ArticleItem extends StatelessWidget {
  const _ArticleItem({required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    final link = 'https://bungie.net${article.link!}';
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      margin: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WebpageView(url: link),
          ),
        ),
        child: Column(
          children: [
            article.imagePath == null
                ? Container()
                : Image.network(
                    article.imagePath!,
                    fit: BoxFit.contain,
                  ),
            article.imagePath == null
                ? Container()
                : const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                article.title!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                article.description!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}