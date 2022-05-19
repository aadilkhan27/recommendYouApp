
import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/createpost/create_binding.dart';
import 'package:recommend_you/app/modules/dashboard/createpost/create_view.dart';
import 'package:recommend_you/app/modules/dashboard/dashboard_binding.dart';
import 'package:recommend_you/app/modules/dashboard/dashboard_controller.dart';
import 'package:recommend_you/app/modules/dashboard/dashboard_view.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_bindings.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_binding.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changepassword/change_password_binding.dart';
import 'package:recommend_you/app/modules/dashboard/more/changepassword/change_password_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_binding.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/deletaccount/delete_account_binding.dart';
import 'package:recommend_you/app/modules/dashboard/more/deletaccount/delete_account_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_binding.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_view.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_binding.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_view.dart';
import 'package:recommend_you/app/modules/dashboard/search/post/search_post_binding.dart';
import 'package:recommend_you/app/modules/dashboard/search/post/search_post_view.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_binding.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_view.dart';
import 'package:recommend_you/app/modules/dashboard/search/searched/search_people_binding.dart';
import 'package:recommend_you/app/modules/dashboard/search/searched/search_people_view.dart';
import 'package:recommend_you/app/modules/languageselect/language_binding.dart';
import 'package:recommend_you/app/modules/languageselect/language_view.dart';
import 'package:recommend_you/app/modules/login/forgotpassword/forgot_password_binding.dart';
import 'package:recommend_you/app/modules/login/forgotpassword/forgot_password_view.dart';
import 'package:recommend_you/app/modules/login/forgotusername/forgot_username_binding.dart';
import 'package:recommend_you/app/modules/login/forgotusername/forgot_username_view.dart';
import 'package:recommend_you/app/modules/login/otpverification/otp_verification_binding.dart';
import 'package:recommend_you/app/modules/login/otpverification/otp_verification_controller.dart';
import 'package:recommend_you/app/modules/login/otpverification/otp_verification_view.dart';
import 'package:recommend_you/app/modules/login/resetpassword/reset_password_binding.dart';
import 'package:recommend_you/app/modules/login/resetpassword/reset_password_view.dart';
import 'package:recommend_you/app/modules/login/retrieveusername/retrieve_username_binding.dart';
import 'package:recommend_you/app/modules/login/retrieveusername/retrieve_username_view.dart';
import 'package:recommend_you/app/modules/login/signin/sign_in_binding.dart';
import 'package:recommend_you/app/modules/login/signin/sign_in_view.dart';
import 'package:recommend_you/app/modules/login/verifyotpretrieveuname/verify_otp_username_binding.dart';
import 'package:recommend_you/app/modules/login/verifyotpretrieveuname/verify_otp_username_view.dart';
import 'package:recommend_you/app/modules/profile/profile_binding.dart';
import 'package:recommend_you/app/modules/profile/profile_view.dart';
import 'package:recommend_you/app/modules/registration/stepfour/step_four_binding.dart';
import 'package:recommend_you/app/modules/registration/stepfour/step_four_view.dart';
import 'package:recommend_you/app/modules/registration/stepone/step_one_binding.dart';
import 'package:recommend_you/app/modules/registration/stepone/step_one_view.dart';
import 'package:recommend_you/app/modules/registration/stepthree/step_three_binding.dart';
import 'package:recommend_you/app/modules/registration/stepthree/step_three_view.dart';
import 'package:recommend_you/app/modules/registration/steptwo/step_two_binding.dart';
import 'package:recommend_you/app/modules/registration/steptwo/step_two_view.dart';
import 'package:recommend_you/app/modules/splash/splash_binding.dart';
import 'package:recommend_you/app/modules/splash/splash_view.dart';

import '../modules/dashboard/home/helper/helper_bindings.dart';
import '../modules/dashboard/home/helper/helper_view.dart';
import '../modules/dashboard/home/helper/sendemail/sendemail_bindings.dart';
import '../modules/dashboard/home/helper/sendemail/sendemail_view.dart';
import '../modules/dashboard/more/changelanguage/change_language_binding.dart';
import '../modules/dashboard/more/changelanguage/change_language_view.dart';

part 'routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(name: Routes.splash, page: () => const SplashView(), binding: SplashBinding()),
    GetPage(name: Routes.signInView, page: () =>  SignInView(), binding: SignInBinding()),
    GetPage(name: Routes.languageSelection, page: () => LanguageView(), binding: LanguageBinding()),
    GetPage(name: Routes.signUpStepOne, page: () => StepOneView(), binding: StepOneBinding()),
    GetPage(name: Routes.signUpStepTwo, page: () => StepTwoView(), binding: StepTwoBinding()),
    GetPage(name: Routes.signUpStepThree, page: () => StepThreeView(), binding: StepThreeBinding()),
    GetPage(name: Routes.signUpStepFour, page: () => StepFourView(), binding: StepFourBinding()),
    GetPage(name: Routes.forgotPassword, page: () => ForgotPasswordView(), binding: ForgotPasswordBinding()),
    GetPage(name: Routes.forgotUsername, page: () => ForgotUsername(), binding: ForgotUsernameBinding()),
    GetPage(name: Routes.resetPassword, page: () => ResetPasswordView(), binding: ResetPasswordBinding()),
    GetPage(name: Routes.resetUsername, page: () => RetrieveUsername(), binding: RetrieveUsernameBinding()),
    GetPage(name: Routes.otpVerify, page: () => OtpVerificationView(), binding: OtpVerficationBinding()),
    GetPage(name: Routes.otpVerifyUsername, page: () => VerifyOtpUsernameView(), binding: VerifyOtpUserNameBinding()),
    GetPage(name: Routes.dashboard, page: () => const DashboardView(), binding: DashboardBinding()),
    GetPage(name: Routes.home, page: () => HomeView(), binding: HomeBinding()),
    GetPage(name: Routes.notification, page: () => NotificationView(), binding: NotificationBinding()),
    GetPage(name: Routes.createPost, page: () => CreateView(), binding: CreateBinding()),
    GetPage(name: Routes.searchView, page: () => SearchView(), binding: SearchBinding()),
    GetPage(name: Routes.moreSetting, page: () => MoreView(), binding: MoreBinding()),
    GetPage(name: Routes.searchPost, page: () => SearchPostView(), binding: SearchPostBinding()),
    GetPage(name: Routes.searched, page: () => SearchPeopleView(), binding: SearchPeopleBinding()),
    GetPage(name: Routes.changeContact, page: () => ChangeContactView(), binding: ChangeContactBinding()),
    GetPage(name: Routes.changePassword, page: () => ChangePasswordView(), binding: ChangePasswordBinding()),
    GetPage(name: Routes.contactUs, page: () => ContactUsView(), binding: ContactUsBinding()),
    GetPage(name: Routes.settingPreference, page: () => ContactUsView(), binding: ContactUsBinding()),
    GetPage(name: Routes.profileView, page: () => ProfileView(), binding: ProfileBinding()),
    GetPage(name: Routes.deleteAccount, page: () => DeleteAccountView(), binding: DeleteAccountBinding()),
    GetPage(name: Routes.helper, page: () => HelperView(), binding: HelperBinding()),
    GetPage(name: Routes.changeLanguage, page: () => ChangeLangugaeView(), binding: ChangeLanguageBinding()),
    GetPage(name: Routes.sendEmail, page: () => SendEmailView(), binding: SendEmailBinding()),
  ];
}
