import 'package:client/ui/settings.dart';
import 'package:client/ui/swap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'display.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = useState(0);
    final pageController = usePageController();

    useEffect(() {
      if (pageController.hasClients) {
        pageController.animateToPage(index.value,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut);
      }
    }, [index.value]);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Сервера'),
          BottomNavigationBarItem(
              icon: Icon(Icons.smart_display), label: 'Дисплей'),
          BottomNavigationBarItem(icon: Icon(Icons.memory), label: 'Swap'),
        ],
        onTap: (i) => index.value = i,
        currentIndex: index.value,
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          SettingsPage(),
          DiaplayPage(),
          SwapPage(),
        ]
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: e,
                ))
            .toList(),
      ),
    );
  }
}
