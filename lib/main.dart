import 'package:flutter/material.dart';
import 'package:opay/pages/home/body.dart';
import 'package:opay/pages/signup/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          final sharedPreferences = snapshot.data;
          if (sharedPreferences!.containsKey("user") == false) {
            final accountBalance =
                sharedPreferences.getString('accountBalance');
            final userName = sharedPreferences.getString('userName');
            return Scaffold(
              body:
                  HomePage(accountBalance: accountBalance, userName: userName),
              bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                unselectedItemColor: Colors.grey,
                showUnselectedLabels: true,
                selectedItemColor: Colors.green,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.card_giftcard), label: 'Rewards'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_balance), label: 'Finance'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.credit_card), label: 'Cards'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Me'),
                ],
              ),
            );
          } else {
            return Signup();
          }
        }
      },
    );
  }
}
