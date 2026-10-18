import 'package:material_ui/material_ui.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/theme/app_textdata.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        title: Text("設定画面", style: AppTextdata.titleFonts),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Icon(
                      Icons.dark_mode,
                      color: Theme.of(context).colorScheme.onPrimary
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        "ダークモードができます",
                        style: AppTextdata.titleFonts.copyWith(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.secondary
                        )
                      ),
                    ),
                    const SizedBox(width: 4),
                    Switch(
                      value: Theme.of(context).brightness == Brightness.dark,
                      onChanged: (bool isDarkMode) {
                        themeNotifier.value = isDarkMode
                            ? ThemeMode.dark
                            : ThemeMode.light;
                      },
                      inactiveThumbColor: Theme.of(context).colorScheme.secondary,
                      activeThumbColor: Theme.of(context).colorScheme.tertiary,
                    ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
