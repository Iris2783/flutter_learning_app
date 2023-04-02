import 'package:flutter/material.dart';
import 'package:flutter_learning_app/loginpage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Widgetsバインディグの初期化　アプリを正常に動かすために必要な処理
  await Future.delayed(const Duration(seconds: 10)); //起動の処理が完了するまで10秒待機　その間スプラッシュ画面を表示
  FlutterNativeSplash.remove(); //スプラッシュ画面を削除
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frawers',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
