abstract class UserPlayersStates {}

class UserPlayersInitialState extends UserPlayersStates {}

class UserPlayersLoadingState extends UserPlayersStates {}

class UserPlayersSucsessState extends UserPlayersStates {}

class UserPlayersErrorState extends UserPlayersStates {}

class UserPlayerLoadingPaginationState extends UserPlayersStates {}

class GetInvitationLoadingState extends UserPlayersStates {}

class GetInvitationsSucsessState extends UserPlayersStates {}

class GetInvitationsErrorState extends UserPlayersStates {}

class GetInvitatonsLoadingPaginationState extends UserPlayersStates {}

class AcceptInvitationLoadingState extends UserPlayersStates {}

class AcceptInvitationsSucsessState extends UserPlayersStates {}

class AcceptInvitationsErrorState extends UserPlayersStates {}

class DeadlineInvitationLoadingState extends UserPlayersStates {}

class DeadlineSucsessState extends UserPlayersStates {}

class DeadlineInvitationsErrorState extends UserPlayersStates {}

class AvailablePlayerLoadingState extends UserPlayersStates {}

class AvailablePlayerSucsessState extends UserPlayersStates {}

class AvailablePlayerErrorState extends UserPlayersStates {}

class AvailablePlayerLoadingPaginationState extends UserPlayersStates {}

class PlayerSelectedState extends UserPlayersStates {}
