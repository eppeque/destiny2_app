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
                      .map((character) {
                    final characterClass = Class.fromType(character.classType);

                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      height: 75,
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
                          Container(),
                          Text(
                            "${characterClass.name} - ${character.light}",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}