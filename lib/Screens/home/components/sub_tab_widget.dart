import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_wiz/constants/colors/colors.dart';

class SubTabWidget extends StatefulWidget {
  final List<String> tabs;
  final ValueChanged<int> onTabChanged;
  final int initialIndex;

  const SubTabWidget({
    super.key,
    required this.tabs,
    required this.onTabChanged,
    this.initialIndex = 0,
  });

  @override
  _SubTabWidgetState createState() => _SubTabWidgetState();
}

class _SubTabWidgetState extends State<SubTabWidget> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: widget.tabs.map((tab) {
          int index = widget.tabs.indexOf(tab);

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.onTabChanged(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.only(right: 10.w),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 8.h,
              ),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? AppColors.white
                    : Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Text(
                tab,
                style: TextStyle(
                  color: selectedIndex == index ? Colors.black : Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
