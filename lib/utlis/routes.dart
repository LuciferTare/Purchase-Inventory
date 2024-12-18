import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:purchase_inventory/features/biotech/binding/biotech_binding.dart';
import 'package:purchase_inventory/features/botany/binding/botany_binding.dart';
import 'package:purchase_inventory/features/chemistry/binding/chemistry_binding.dart';
import 'package:purchase_inventory/features/computer_science/binding/computer_science_binding.dart';
import 'package:purchase_inventory/features/forget_password/binding/forget_password_binding.dart';
import 'package:purchase_inventory/features/forget_password/forget_password.dart';
import 'package:purchase_inventory/features/information_technology/binding/information_technology_binding.dart';
import 'package:purchase_inventory/features/dashboard/binding/dashboard_binding.dart';
import 'package:purchase_inventory/features/login/binding/login_binding.dart';
import 'package:purchase_inventory/features/mathematics/binding/mathematics_binding.dart';
import 'package:purchase_inventory/features/physics/binding/physics_binding.dart';
import 'package:purchase_inventory/features/sign_up/binding/sign_up_binding.dart';
import 'package:purchase_inventory/features/sign_up/sign_up.dart';
import 'package:purchase_inventory/features/zoology/binding/zoology_binding.dart';
import 'package:purchase_inventory/features/biotech/biotech.dart';
import 'package:purchase_inventory/features/chemistry/chemistry.dart';
import 'package:purchase_inventory/features/computer_science/computer_science.dart';
import 'package:purchase_inventory/features/dashboard/dashboard.dart';
import 'package:purchase_inventory/features/information_technology/information_technology.dart';
import 'package:purchase_inventory/features/login/login.dart';
import 'package:purchase_inventory/features/botany/botany.dart';
import 'package:purchase_inventory/features/mathematics/mathematics.dart';
import 'package:purchase_inventory/features/physics/physics.dart';
import 'package:purchase_inventory/features/zoology/zoology.dart';

import 'package:purchase_inventory/S.dart';

class MyRoutes {
  static const String initialRoute = '/initialRoute';
  static String dashboardRoute = "/Dashboard";
  static String loginRoute = "/Login";
  static String signUpRoute = "/SignUp";
  static String forgetPasswordRoute = "/ForgetPassword";
  static String botanyRoute = "/Botany";
  static String zoologyRoute = "/Zoology";
  static String physicsRoute = "/Physics";
  static String chemistryRoute = "/Chemistry";
  static String biotechRoute = "/Biotech";
  static String mathematicsRoute = "/Mathematics";
  static String itRoute = "/IT";
  static String csRoute = "/CS";
  static String sRoute = "/S";

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const SignUp(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: dashboardRoute,
      page: () => const Dashboard(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: loginRoute,
      page: () => const Login(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpRoute,
      page: () => const SignUp(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordRoute,
      page: () => const ForgetPassword(),
      bindings: [
        ForgetPasswordBinding(),
      ],
    ),
    GetPage(
      name: botanyRoute,
      page: () => const Botany(),
      bindings: [
        BotanyBinding(),
      ],
    ),
    GetPage(
      name: zoologyRoute,
      page: () => const Zoology(),
      bindings: [
        ZoologyBinding(),
      ],
    ),
    GetPage(
      name: physicsRoute,
      page: () => const Physics(),
      bindings: [
        PhysicsBinding(),
      ],
    ),
    GetPage(
      name: chemistryRoute,
      page: () => const Chemistry(),
      bindings: [
        ChemistryBinding(),
      ],
    ),
    GetPage(
      name: biotechRoute,
      page: () => const Biotech(),
      bindings: [
        BiotechBinding(),
      ],
    ),
    GetPage(
      name: mathematicsRoute,
      page: () => const Mathematics(),
      bindings: [
        MathematicsBinding(),
      ],
    ),
    GetPage(
      name: itRoute,
      page: () => const IT(),
      bindings: [
        ITBinding(),
      ],
    ),
    GetPage(
      name: csRoute,
      page: () => const CS(),
      bindings: [
        CSBinding(),
      ],
    ),
    GetPage(
      name: sRoute,
      page: () => const S(),
    ),
  ];
}

void onTapBiotech() {
  Get.offAllNamed(MyRoutes.biotechRoute);
}

void onTapBotany() {
  Get.offAllNamed(MyRoutes.botanyRoute);
}

void onTapChemistry() {
  Get.offAllNamed(MyRoutes.chemistryRoute);
}

void onTapCS() {
  Get.offAllNamed(MyRoutes.csRoute);
}

void onTapIT() {
  Get.offAllNamed(MyRoutes.itRoute);
}

void onTapMaths() {
  Get.offAllNamed(MyRoutes.mathematicsRoute);
}

void onTapPhysics() {
  Get.offAllNamed(MyRoutes.physicsRoute);
}

void onTapZoology() {
  Get.offAllNamed(MyRoutes.zoologyRoute);
}

void onTapDashboard() {
  Get.offAllNamed(MyRoutes.dashboardRoute);
}

void onTapForgetPassword() {
  Get.offAllNamed(MyRoutes.forgetPasswordRoute);
}

void onTapLogin() {
  Get.offAllNamed(MyRoutes.loginRoute);
}

void onTapSignUp() {
  Get.offAllNamed(MyRoutes.signUpRoute);
}
