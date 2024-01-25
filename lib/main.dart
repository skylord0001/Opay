import 'package:flutter/material.dart';
import 'package:opay/database/variable.dart';
import 'package:opay/pages/home/home.dart';
import 'package:opay/pages/signup/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Widget defaultWidget;

  @override
  void initState() {
    super.initState();
    defaultWidget = const SplashScreen();
    loadData();
  }

  Future<void> loadData() async {
    try {
      final sharedPreferences = await SharedPreferences.getInstance();
      if (sharedPreferences.containsKey("user") == false) {
        /*
        final accountBalance = sharedPreferences.getString('accountBalance');
        final userName = sharedPreferences.getString('userName');
        */
        const accountBalance = '0';
        const userName = 'femi';
        await Future.delayed(const Duration(milliseconds: 500));
        setState(() {
          defaultWidget = Scaffold(
            body: const HomePage(
                accountBalance: accountBalance, userName: userName),
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              selectedItemColor: mainColor,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.mood_rounded), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.diamond), label: 'Rewards'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.show_chart), label: 'Finance'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card), label: 'Cards'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined), label: 'Me'),
              ],
            ),
          );
        });
      } else {
        await Future.delayed(const Duration(milliseconds: 500));
        setState(() {
          defaultWidget = const SignUpPage();
        });
      }
    } catch (error) {
      await Future.delayed(const Duration(milliseconds: 500));
      setState(() {
        defaultWidget = Center(
          child: Text('Error: $error'),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: defaultWidget,
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text('splash screen'),
      ),
    );
  }
}
