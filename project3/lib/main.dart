import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project3/MyHomePage.dart';

import 'package:project3/cubit/theme_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, bool>(builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: state ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData.dark(),
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(
            title: 'hello dark and light mode',
          ),
        );
      }),
    );
  }
}
