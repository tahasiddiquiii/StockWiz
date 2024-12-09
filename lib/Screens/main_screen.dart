import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_wiz/constants/colors/colors.dart';

import 'fno/fno_screen.dart';
import 'home/home_screen.dart';
import 'market/market_screen.dart';
import 'trade/trade_screen.dart';

class MainScreen extends StatefulWidget {
  final int? selectedInd;
  const MainScreen({super.key, this.selectedInd});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    if (widget.selectedInd != null) {
      _selectedIndex = widget.selectedInd!;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    HapticFeedback.mediumImpact();
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const TradeScreen(),
    const FnoScreen(),
    const MarketScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      body: _pages[_selectedIndex],
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 70.h),
            painter: RPSCustomPainter(
              gradient: LinearGradient(
                colors: AppColors.gradientList[0],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            height: 70.h,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(0, "assets/svg/icons/home.svg", 'Home'),
                _buildNavItem(1, "assets/svg/icons/trade.svg", 'Trade'),
                const SizedBox(width: 40),
                _buildNavItem(2, "assets/svg/icons/fno.svg", 'F&O'),
                _buildNavItem(3, "assets/svg/icons/market.svg", 'Markets'),
              ],
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: MediaQuery.of(context).size.width / 2 - 30.h,
            child: Center(
              child: SvgPicture.asset(
                "assets/svg/icons/main.svg",
                height: 60.h,
                width: 60.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath, String label) {
    List<Color> gradientColors = _selectedIndex == index
        ? AppColors.gradientList[1]
        : AppColors.gradientList[2];

    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds);
            },
            child: SvgPicture.asset(
              iconPath,
              height: 24.h,
              width: 24.h,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index
                  ? AppColors.gradientList[1][0]
                  : Colors.white,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final Gradient gradient;

  RPSCustomPainter({required this.gradient});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_1 = Path();

    double centerY = size.height / 2 - 60;
    double shiftX = 10;
    path_1.moveTo(0, centerY);

    path_1.cubicTo(shiftX + 15.6429, centerY + 0.2751, shiftX + 24.0551,
        centerY + 0.5849, shiftX + 33.6234, centerY + 0.7915);
    path_1.cubicTo(shiftX + 52.7549, centerY + 1.2045, shiftX + 76.5278,
        centerY + 1.2052, shiftX + 95.0445, centerY - 0.4493);
    path_1.cubicTo(shiftX + 113.104, centerY - 1.0628, shiftX + 127.343,
        centerY - 4.1595, shiftX + 141.162, centerY - 8.13503);
    path_1.cubicTo(shiftX + 142.724, centerY - 8.5844, shiftX + 144.281,
        centerY - 9.0322, shiftX + 145.837, centerY - 9.4747);
    path_1.cubicTo(shiftX + 161.16, centerY - 13.8322, shiftX + 176.458,
        centerY - 17.6822, shiftX + 196.495, centerY - 17.4933);
    path_1.cubicTo(shiftX + 215.575, centerY - 17.3135, shiftX + 230.111,
        centerY - 13.5104, shiftX + 244.668, centerY - 9.26871);
    path_1.cubicTo(shiftX + 246.052, centerY - 8.8657, shiftX + 247.435,
        centerY - 8.45867, shiftX + 248.823, centerY - 8.0504);
    path_1.cubicTo(shiftX + 262.041, centerY - 4.1617, shiftX + 285.641,
        centerY - 0.1607, shiftX + 292.951, centerY + 1.5503);
    path_1.cubicTo(shiftX + 312.429, centerY + 3.4756, shiftX + 347.454,
        centerY + 3.4748, shiftX + 357.597, centerY + 2.9942);

    path_1.lineTo(size.width, centerY + 2.9942);
    path_1.lineTo(size.width, size.height);
    path_1.lineTo(0, size.height);

    final Paint gradientPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF000000),
          Color(0x46353501),
        ],
      ).createShader(Rect.fromLTRB(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    canvas.drawPath(path_1, gradientPaint);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5
      ..shader =
          gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path_1, paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
