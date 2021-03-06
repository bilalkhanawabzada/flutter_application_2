
import 'package:get/get.dart';
import 'core/locator.dart';
import 'core/providers.dart';
// import 'core/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:page_transition/page_transition.dart';
import 'views/splash/splash_view.dart';
import 'views/main/main_view.dart';

void main() async {
  await LocatorInjector.setupLocator();
  runApp(const MainApplication());
}

class MainApplication extends StatefulWidget {
  const MainApplication({Key key}) : super(key: key);

  @override
  _MainApplicationState createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  @override
  void initState() {
    super.initState();
    //FirebaseUtility.initialiseFirebase();
    //AdsUtility.initialiseAds();
  }

  @override
  void dispose() {
    //AdsUtility.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjector.providers,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Title',
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(240, 240, 240, 1),
            primaryIconTheme: const IconThemeData(color: Colors.white),
            primaryColorDark: Colors.blue,
            canvasColor: const Color.fromRGBO(86, 194, 255, 1),
            secondaryHeaderColor: Colors.deepPurpleAccent,
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                  bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                  bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                  caption: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                  ),

              //Used for item subtitle
              subtitle1: const TextStyle(
                color: Colors.black54,
                fontSize: 13,
                fontFamily: 'RobotoCondensed',
                height: 1.6
              ),

              //This is used for appbar titles
              headline6: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'RobotoCondensed',
                )
                ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue).copyWith(secondary: Colors.cyanAccent),
        ),

        //This is for firebase analytics trackings
        // navigatorObservers: <NavigatorObserver>[FirebaseUtility.observer],
        // navigatorKey: locator<NavigatorService>().navigatorKey,

        home: const SplashView(),
          getPages: [
            GetPage(name: MainView.routeName, page: () => const MainView()),
          ]
      ),
    );
  }
}