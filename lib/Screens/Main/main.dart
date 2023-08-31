import 'package:flutter/material.dart';
import 'package:idea/Screens/Drawer/main_drawer.dart';


final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 53, 14, 14),
      brightness: Brightness.dark
  ),
  //textTheme: GoogleFonts.latoTextTheme()
);

void main() {
  runApp(const HomePage());
  ThemeData.dark();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      drawer: const MainDrawer(),

    );
  }

}
