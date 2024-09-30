import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/competitor_invitation/copetitor_invitation_cubit.dart';
import '../cubit/competitor_invitation/copetitor_invitation_states.dart';


class AcceptInvitationPage extends StatelessWidget {
  const AcceptInvitationPage({super.key});

  @override
  Widget build(BuildContext context) {
  // CompetitorInvitationCubit.get(context).cancelInvitation(context: context, id: 31);
    return BlocConsumer<CompetitorInvitationCubit,CompetitorInvitationStates>(
      builder: (BuildContext context, CompetitorInvitationStates state) {
        return   Scaffold(
          appBar: AppBar(),
        );
      },
      listener: (BuildContext context, CompetitorInvitationStates state) {  },

    );
  }
}
