import 'package:flutter/material.dart';
import 'package:lojangtest/tabbar.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, 
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.white,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.white,
          dividerColor: Colors.transparent,
        ),
        primaryColor: Colors.pink[800],
      ),
      
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Inspirações"),
          backgroundColor: Colors.red.withOpacity(0.3),
          bottom: ColoredTabBar(
            TabBar(
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              enableFeedback: false,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
              ),
              tabs: [
                const Tab(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      //border: Border.all(color: Colors.redAccent, width: 1)
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("GAMES"),
                    ),
                  ),
                ),
              ]),
          ),
          ),
        body: const TabBarView(
          children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
          ]
        ),
      ));
  }
}