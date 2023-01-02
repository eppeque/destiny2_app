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
      appBar: AppBar(
        title: Text(playerName),
      ),
    );
  }
}