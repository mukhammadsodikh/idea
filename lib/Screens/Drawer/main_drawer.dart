import 'package:flutter/material.dart';
import 'package:idea/Screens/Drawer/settings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.primaryContainer,
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                      ]
                  )
              ),
              child: const Row(
                children: [
                  Icon(Icons.account_balance_rounded,size: 50),
                  SizedBox(height: 10,),
                  Text('Green Life')
                ],
              )),
          ListTile(
            leading: Icon(Icons.settings, size: 34,),
            title: Text("Sozlamalar"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),);

            },
          ),
          ListTile(
            leading: Icon(Icons.support_agent, size: 35,),
            title: Text('Aloqa Markazi'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}