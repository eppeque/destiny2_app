import 'package:destiny2_app/src/search/search_bloc.dart';
import 'package:destiny2_app/src/search/search_history.dart';
import 'package:destiny2_app/src/search/values/user_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchView extends SearchDelegate<UserInfo?> {
  SearchView(this.bloc);

  final SearchBloc bloc;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Delete query',
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final history = context.watch<SearchHistory>();

    if (query.isNotEmpty) {
      history.loadHistory().then((value) {
        if (!value.contains(query)) {
          history.addSearch(query);
        }
      });
    }

    return FutureBuilder(
      future: bloc.searchPlayer(query),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final results = snapshot.data!.response.searchResults;

        if (results!.isEmpty) {
          return Center(
            child: Text(
              'No guardian found\n¯\\_(ツ)_/¯',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          );
        }

        return ListView(
          children: snapshot.data!.response.searchResults!.map((result) {
            return ListTile(
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: result.destinyMemberships!.map((e) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.network(
                                'https://bungie.net${e.iconPath}',
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            e.displayName!,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              title: Text(
                "${result.bungieGlobalDisplayName}#${result.bungieGlobalDisplayNameCode}",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              onTap: () => close(context, result.destinyMemberships![0]),
            );
          }).toList(),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final history = context.watch<SearchHistory>();

    return FutureBuilder<List<String>>(
      future: history.loadHistory(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final suggestions = snapshot.data!.where((search) => search.toLowerCase().contains(query.toLowerCase()));

        return ListView(
          children: suggestions.map((e) {
            return ListTile(
              leading: const Icon(Icons.history),
              title: Text(e),
              onTap: () {
                query = e;
                showResults(context);
              },
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: const Icon(Icons.delete_outline),
                      content: Text(
                        'Are you sure you want to delete this search?',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            Navigator.pop(context);
                            await history.deleteSearch(e);
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          }).toList(),
        );
      },
    );
  }
}