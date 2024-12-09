import 'package:flutter/material.dart';
import 'package:stock_wiz/constants/colors/colors.dart';

class TabMainWidget extends StatefulWidget {
  final List<String> tabs;
  final ValueChanged<int> onTabChanged;
  final int initialIndex;

  const TabMainWidget({
    super.key,
    required this.tabs,
    required this.onTabChanged,
    this.initialIndex = 0,
  });

  @override
  _TabMainWidgetState createState() => _TabMainWidgetState();
}

class _TabMainWidgetState extends State<TabMainWidget> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < widget.tabs.length; i++) ...[
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = i;
                });
                widget.onTabChanged(i);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.tabs[i],
                    style: TextStyle(
                      color: selectedIndex == i
                          ? const Color(0xFFEBA200)
                          : Colors.grey,
                      fontWeight: selectedIndex == i
                          ? FontWeight.bold
                          : FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  selectedIndex == i
                      ? Container(
                          height: 2,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: AppColors.gradientList[4],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        )
                      : const SizedBox(height: 2),
                ],
              ),
            ),
          ),
          if (i < widget.tabs.length - 1)
            Container(
              width: 1,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: AppColors.gradientList[4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
        ],
      ],
    );
  }
}
