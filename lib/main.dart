import 'package:adroid_study/di/provider_setup.dart';
import 'package:adroid_study/persentation/login/login_screen.dart';
import 'package:adroid_study/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final providers = await getProviders();
  runApp(MultiProvider(providers: providers,child: const MyApp(),));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: grey,
      ),
      home:  const LoginScreen(),
    );
  }
}



