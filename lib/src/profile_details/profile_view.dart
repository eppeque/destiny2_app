import 'package:destiny2_app/src/profile_details/profile_bloc.dart';
import 'package:destiny2_app/src/profile_details/values/destiny_character.dart';
import 'package:destiny2_app/src/profile_details/values/get_profile.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
    required this.membershipType,
    required this.membershipId,
    required this.playerName,
  });

  final int membershipType;
  final String membershipId;
  final String playerName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<GetProfile>(
        future: loadProfile(membershipType, membershipId),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return CustomScrollView(
            slivers: [
              SliverAppBar.large(
                title: Text('$playerName characters'),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  snapshot.data!.response.characters.data.values
                      .map(
                        (character) => _CharacterItem(character: character),
                      )
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CharacterItem extends StatelessWidget {
  const _CharacterItem({required this.character});

  final DestinyCharacter character;

  @override
  Widget build(BuildContext context) {
    final characterClass = Class.fromType(character.classType);
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://bungie.net${character.emblemBackgroundPath}',
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  characterClass.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white),
                ),
                character.titleRecordHash != null
                    ? FutureBuilder(
                        future: loadTitle(character.titleRecordHash!),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData) {
                            return const Text('Loading...');
                          }

                          final data = snapshot.data!;

                          return Text(
                            data.titleInfo.titlesByGender['Male']!,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: data.forTitleGilding
                                          ? Colors.orange
                                          : Colors.white,
                                    ),
                          );
                        },
                      )
                    : Container(),
              ],
            ),
          ),
          Text(
            character.light.toString(),
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}