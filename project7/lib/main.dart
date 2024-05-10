import 'package:flutter/material.dart';
import 'package:project7/credentials/Constants.dart';
import 'package:project7/screens/LandingScreen.dart';
// import 'package:project6/screens/LogInScreen.dart';
// import 'package:project6/screens/RegisterScreen.dart';
// import 'package:project6/screens/Splash.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project7/stateManagement/blocs/Preferences_bloc.dart';
import 'package:project7/stateManagement/models/preferences.dart';
import 'package:project7/stateManagement/services/preferences_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(MyApp()),
    storage: storage,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PreferencesCubit>(
        future: buildBloc(),
        builder: (context, blocSnapshot) {
          if (blocSnapshot.hasData && blocSnapshot.data != null) {
            return BlocProvider<PreferencesCubit>(
              create: (_) => blocSnapshot.data!,
              child: BlocBuilder<PreferencesCubit, Preferences>(
                builder: (context, preferences) {
                  return GetMaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Flutter Demo',

                    theme: ThemeData
                        .light(), //.brightness==Brightness.light? primaryColor: Colors.deepPurple,
                    // .
                    // copyWith(
                    //   primaryColor: Colors.deepPurple,
                    //   // primaryColorDark: Colors.transparent
                    //   // primaryTextTheme: Colors.black
                    // ),
                    darkTheme: ThemeData.dark().copyWith(
                        // primaryColor: Colors.black,

                        //primaryColorDark: Colors.black,
                        ),
                    themeMode: preferences.themeMode,
                    // theme: ThemeData(
                    //   useMaterial3: true,
                    //   primarySwatch: Colors.blue,
                    // ),
                    home: LandingScreen(), //Splash(), //LogInScreen(),
                    routes: {},
                  );
                },
              ),
            );
          }

          return SizedBox.shrink();
        });
  }

  // Future hideStatusBar() => SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  //   Future showStatusBar() => SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

//TODO: this should probably happen in a splash scree,
//so you dont delay the creation of materialApp

  Future<PreferencesCubit> buildBloc() async {
    final prefs = await SharedPreferences.getInstance();
    final service = await MyPreferencesService(prefs);
    return PreferencesCubit(service, await service.get());
  }
}
