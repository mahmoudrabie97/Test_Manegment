import 'package:flutter/material.dart';

import 'custom_available_players_body.dart';


class AvailablePlayersView extends StatelessWidget {
  const AvailablePlayersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAvailablePlayersBody(),
    );
  }
}
