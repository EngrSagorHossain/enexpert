import 'package:enexpet/presentation/wifi_manager_one_container_screen/wifi_manager_one_container_screen.dart';
import 'package:enexpet/presentation/wifi_manager_one_container_screen/binding/wifi_manager_one_container_binding.dart';
import 'package:enexpet/presentation/wifi_manager_alert_screen/wifi_manager_alert_screen.dart';
import 'package:enexpet/presentation/wifi_manager_alert_screen/binding/wifi_manager_alert_binding.dart';
import 'package:enexpet/presentation/configure_wifi_one_screen/configure_wifi_one_screen.dart';
import 'package:enexpet/presentation/configure_wifi_one_screen/binding/configure_wifi_one_binding.dart';
import 'package:enexpet/presentation/info_screen/info_screen.dart';
import 'package:enexpet/presentation/info_screen/binding/info_binding.dart';
import 'package:enexpet/presentation/configure_wifi_four_screen/configure_wifi_four_screen.dart';
import 'package:enexpet/presentation/configure_wifi_four_screen/binding/configure_wifi_four_binding.dart';
import 'package:enexpet/presentation/configure_wifi_screen/configure_wifi_screen.dart';
import 'package:enexpet/presentation/configure_wifi_screen/binding/configure_wifi_binding.dart';
import 'package:enexpet/presentation/configure_wifi_three_screen/configure_wifi_three_screen.dart';
import 'package:enexpet/presentation/configure_wifi_three_screen/binding/configure_wifi_three_binding.dart';
import 'package:enexpet/presentation/configure_wifi_two_screen/configure_wifi_two_screen.dart';
import 'package:enexpet/presentation/configure_wifi_two_screen/binding/configure_wifi_two_binding.dart';
import 'package:enexpet/presentation/sensor_two_screen/sensor_two_screen.dart';
import 'package:enexpet/presentation/sensor_two_screen/binding/sensor_two_binding.dart';
import 'package:enexpet/presentation/sensor_three_screen/sensor_three_screen.dart';
import 'package:enexpet/presentation/sensor_three_screen/binding/sensor_three_binding.dart';
import 'package:enexpet/presentation/sensor_one_screen/sensor_one_screen.dart';
import 'package:enexpet/presentation/sensor_one_screen/binding/sensor_one_binding.dart';
import 'package:enexpet/presentation/sensor_screen/sensor_screen.dart';
import 'package:enexpet/presentation/sensor_screen/binding/sensor_binding.dart';
import 'package:enexpet/presentation/sensor_five_screen/sensor_five_screen.dart';
import 'package:enexpet/presentation/sensor_five_screen/binding/sensor_five_binding.dart';
import 'package:enexpet/presentation/registered_meansnoides_screen/registered_meansnoides_screen.dart';
import 'package:enexpet/presentation/registered_meansnoides_screen/binding/registered_meansnoides_binding.dart';
import 'package:enexpet/presentation/measurement_data_tab_container_screen/measurement_data_tab_container_screen.dart';
import 'package:enexpet/presentation/measurement_data_tab_container_screen/binding/measurement_data_tab_container_binding.dart';
import 'package:enexpet/presentation/measurement_data_one_screen/measurement_data_one_screen.dart';
import 'package:enexpet/presentation/measurement_data_one_screen/binding/measurement_data_one_binding.dart';
import 'package:enexpet/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:enexpet/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String wifiManagerOnePage = '/wifi_manager_one_page';

  static const String wifiManagerOneContainerScreen =
      '/wifi_manager_one_container_screen';

  static const String wifiManagerAlertScreen = '/wifi_manager_alert_screen';

  static const String configureWifiOneScreen = '/configure_wifi_one_screen';

  static const String infoScreen = '/info_screen';

  static const String configureWifiFourScreen = '/configure_wifi_four_screen';

  static const String configureWifiScreen = '/configure_wifi_screen';

  static const String configureWifiThreeScreen = '/configure_wifi_three_screen';

  static const String configureWifiTwoScreen = '/configure_wifi_two_screen';

  static const String sensorFourPage = '/sensor_four_page';

  static const String sensorTwoScreen = '/sensor_two_screen';

  static const String sensorThreeScreen = '/sensor_three_screen';

  static const String sensorOneScreen = '/sensor_one_screen';

  static const String sensorScreen = '/sensor_screen';

  static const String sensorFiveScreen = '/sensor_five_screen';

  static const String registeredMeansnoidesScreen =
      '/registered_meansnoides_screen';

  static const String measurementDataTwoPage = '/measurement_data_two_page';

  static const String measurementDataTwoTabContainerPage =
      '/measurement_data_two_tab_container_page';

  static const String measurementDataMeasnodeOnePage =
      '/measurement_data_measnode_one_page';

  static const String measurementDataMeasnodePage =
      '/measurement_data_measnode_page';

  static const String measurementDataThreePage = '/measurement_data_three_page';

  static const String measurementDataPage = '/measurement_data_page';

  static const String measurementDataTabContainerScreen =
      '/measurement_data_tab_container_screen';

  static const String measurementDataOneScreen = '/measurement_data_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: wifiManagerOneContainerScreen,
      page: () => WifiManagerOneContainerScreen(),
      bindings: [
        WifiManagerOneContainerBinding(),
      ],
    ),
    GetPage(
      name: wifiManagerAlertScreen,
      page: () => WifiManagerAlertScreen(),
      bindings: [
        WifiManagerAlertBinding(),
      ],
    ),
    GetPage(
      name: configureWifiOneScreen,
      page: () => ConfigureWifiOneScreen(),
      bindings: [
        ConfigureWifiOneBinding(),
      ],
    ),
    GetPage(
      name: infoScreen,
      page: () => InfoScreen(),
      bindings: [
        InfoBinding(),
      ],
    ),
    GetPage(
      name: configureWifiFourScreen,
      page: () => ConfigureWifiFourScreen(),
      bindings: [
        ConfigureWifiFourBinding(),
      ],
    ),
    GetPage(
      name: configureWifiScreen,
      page: () => ConfigureWifiScreen(),
      bindings: [
        ConfigureWifiBinding(),
      ],
    ),
    GetPage(
      name: configureWifiThreeScreen,
      page: () => ConfigureWifiThreeScreen(),
      bindings: [
        ConfigureWifiThreeBinding(),
      ],
    ),
    GetPage(
      name: configureWifiTwoScreen,
      page: () => ConfigureWifiTwoScreen(),
      bindings: [
        ConfigureWifiTwoBinding(),
      ],
    ),
    GetPage(
      name: sensorTwoScreen,
      page: () => SensorTwoScreen(),
      bindings: [
        SensorTwoBinding(),
      ],
    ),
    GetPage(
      name: sensorThreeScreen,
      page: () => SensorThreeScreen(),
      bindings: [
        SensorThreeBinding(),
      ],
    ),
    GetPage(
      name: sensorOneScreen,
      page: () => SensorOneScreen(),
      bindings: [
        SensorOneBinding(),
      ],
    ),
    GetPage(
      name: sensorScreen,
      page: () => SensorScreen(),
      bindings: [
        SensorBinding(),
      ],
    ),
    GetPage(
      name: sensorFiveScreen,
      page: () => SensorFiveScreen(),
      bindings: [
        SensorFiveBinding(),
      ],
    ),
    GetPage(
      name: registeredMeansnoidesScreen,
      page: () => RegisteredMeansnoidesScreen(),
      bindings: [
        RegisteredMeansnoidesBinding(),
      ],
    ),
    GetPage(
      name: measurementDataTabContainerScreen,
      page: () => MeasurementDataTabContainerScreen(),
      bindings: [
        MeasurementDataTabContainerBinding(),
      ],
    ),
    GetPage(
      name: measurementDataOneScreen,
      page: () => MeasurementDataOneScreen(),
      bindings: [
        MeasurementDataOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WifiManagerOneContainerScreen(),
      bindings: [
        WifiManagerOneContainerBinding(),
      ],
    )
  ];
}
