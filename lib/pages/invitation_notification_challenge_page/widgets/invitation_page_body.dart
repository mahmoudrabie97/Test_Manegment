import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/competitor_invitation/copetitor_invitation_cubit.dart';
import 'package:test_mangement/cubit/competitor_invitation/copetitor_invitation_states.dart';
import 'package:test_mangement/models/getcompatableinvitation_model.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class InvitationPageBody extends StatefulWidget {
  const InvitationPageBody({super.key});

  @override
  State<InvitationPageBody> createState() => _InvitationPageBodyState();
}

class _InvitationPageBodyState extends State<InvitationPageBody> {
  @override
  void initState() {
    CompetitorInvitationCubit.get(context).getAllinvitation(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompetitorInvitationCubit, CompetitorInvitationStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return CompetitorInvitationCubit.get(context).state
                is GetInvitationsLoadingState
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Invitationlslistitem(
                          getCompatopleinvitationModl:
                              CompetitorInvitationCubit.get(context)
                                  .getCompatopleinvitationModl,
                          index: index,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: CompetitorInvitationCubit.get(context)
                          .getCompatopleinvitationModl!
                          .data!
                          .length)
                ],
              );
      },
    );
  }
}

class Invitationlslistitem extends StatelessWidget {
  const Invitationlslistitem({
    super.key,
    required this.getCompatopleinvitationModl,
    required this.index,
  });
  final GetCompatopleinvitationModl? getCompatopleinvitationModl;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Image.asset(width: 120, AssetsData.invitation),
              ),
              CustomTextarabic(
                text: getCompatopleinvitationModl!.data![index].text ?? '',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                        width: 160,
                        child:
                            CustomButton(buttonText: "قبول", onPressed: () {})),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 160,
                      child: CustomButton(
                        buttonText: "رفض",
                        onPressed: () {},
                        buttonColor: Colors.red,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
