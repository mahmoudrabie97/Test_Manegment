abstract class AuthStates {}

class AuthInitialState extends AuthStates {}

class LoginLoadingState extends AuthStates {}

class LoginSucsessState extends AuthStates {}

class LoginErrorEmailorpasswordState extends AuthStates {}

class LoginServerErrorState extends AuthStates {}

class LoginErrorState extends AuthStates {}

class ChangesecurepasswordState extends AuthStates {}

class ChangesecurepasswordconfigState extends AuthStates {}

class RegisterLoadingState extends AuthStates {}

class RegisterSucsessState extends AuthStates {}

class RegisterErrorState extends AuthStates {}

class RegisterErrorDataState extends AuthStates {}

class VerifyUserSucsessState extends AuthStates {}

class VerifyUserErrorState extends AuthStates {}

class VerifyUseerLoadingState extends AuthStates {}

class ShowLottileLoadingrState extends AuthStates {}

class ShowLottileSucsessState extends AuthStates {}

class ChangeDropdownVal extends AuthStates {}

class SettokenSuccessState extends AuthStates {}

class SetTokenErrorState extends AuthStates {}

class SetTokenLoadingState extends AuthStates {}
