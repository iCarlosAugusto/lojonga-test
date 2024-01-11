import 'package:flutter/material.dart';
import 'package:lojangtest/pages/articles.page.dart';
import 'package:lojangtest/pages/videos.page.dart';
import 'package:lojangtest/tabbar.widget.dart';
import 'package:lojangtest/utils/wifi.connection.dart';
import 'package:lojangtest/viewmodels/videos.viewmodel.dart';
import 'package:lojangtest/widgets/text_widget.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ConnectionStatusListener internet = ConnectionStatusListener.getInstance();
  initNoInternetListener();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => VideosViewModel()),
      ],
      child: const MyApp(),
    ),
  );
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
          centerTitle: true,
          title: const TextWidget(
            "Inspirações",
            color: Colors.white,
            isFontWeight: true,
            fontSize: AvailableFontSizes.big,
          ),
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
                      child: TextWidget(
                        "VÍDEOS",
                        fontSize: AvailableFontSizes.small,
                      ),
                    ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: TextWidget(
                        "ARTIGOS",
                        fontSize: AvailableFontSizes.small,
                      ),
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
                      child: TextWidget(
                        "CITAÇÕES",
                        fontSize: AvailableFontSizes.small,
                      ),
                    ),
                  ),
                ),
              ]),
          ),
          ),
        body: Container(
          color: Colors.red.withOpacity(0.3),
          child: const TabBarView(
            children: [
              VideosPage(),
              ArticlesPage(),
              Icon(Icons.games),
            ]
          ),
        ),
      ));
  }
}