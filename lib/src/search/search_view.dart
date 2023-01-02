import 'package:destiny2_app/src/search/search_bloc.dart';
import 'package:flutter/material.dart';

class SearchView extends SearchDelegate {
  SearchView(this.bloc);

  final SearchBloc bloc;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Delete query',
        onPressed: () => query = '',
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
    return FutureBuilder(
      future: bloc.searchPlayer(query),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
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
                            child: Image.network('https://bungie.net${e.iconPath}'),
                          ),
                          const SizedBox(width: 8.0),
                          Text(e.displayName!),
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
              onTap: () {},
            );
          }).toList(),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}