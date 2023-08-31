import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = true;
  int fontSize = 16;

  void toggleDarkMode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  void increaseFontSize() {
    setState(() {
      fontSize++;
    });
  }

  void decreaseFontSize() {
    setState(() {
      if (fontSize > 1) {
        fontSize--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwitchListTile(
            title: const Text('Light Mode'),
            value: darkMode,
            onChanged: (value) {
              toggleDarkMode();
            },
          ),
          ListTile(
            title: const Text('Font Size'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    decreaseFontSize();
                  },
                ),
                Text(fontSize.toString()),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    increaseFontSize();
                  },
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Notification Settings'),
            trailing: const Icon(Icons.notifications),
            onTap: () {
              // Notification settings logic
            },
          ),
          ListTile(
            title: const Text('Language Settings'),
            trailing: const Icon(Icons.language),
            onTap: () {
              // Language settings logic
            },
          ),
          ListTile(
            title: const Text('Privacy Settings'),
            trailing: const Icon(Icons.lock),
            onTap: () {
              // Privacy settings logic
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SettingsPage(),
  ));
}