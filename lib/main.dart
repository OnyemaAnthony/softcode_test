
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softcode_test/di/injection.dart';
import 'package:softcode_test/screens/desktop_home.dart';
import 'package:softcode_test/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:softcode_test/widgets/responsive.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   Di.initialize();
kIsWeb?  await Firebase.initializeApp(
  options: const FirebaseOptions(
    apiKey: "AIzaSyB67Nr3N18YR528bMrKl30cxjA9FbKFmuQ",
    appId: "1:248847080700:web:0eccebf5faba735109cb79",
    messagingSenderId: "248847080700",
    projectId: "softcode-test",
  ),
):await Firebase.initializeApp();
  runApp( const MyApp());

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const Responsive(mobile: HomeScreen(),desktop: DesktopHome(),)
    );
  }
}