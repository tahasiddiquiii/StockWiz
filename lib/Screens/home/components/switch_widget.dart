import 'package:flutter/material.dart';
import 'package:stock_wiz/constants/colors/colors.dart';

class CustomSwitch extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  final bool initialValue;

  const CustomSwitch({
    Key? key,
    required this.onChanged,
    this.initialValue = true,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool isEquitySelected;

  @override
  void initState() {
    super.initState();
    isEquitySelected = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isEquitySelected = !isEquitySelected;
          });
          widget.onChanged(isEquitySelected);
        },
        child: Container(
          width: deviceWidth - 40,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey[800],
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                duration: const Duration(milliseconds: 300),
                alignment: isEquitySelected
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Container(
                  width: (deviceWidth - 40) / 2,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      colors: AppColors.gradientList[3],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Equity",
                        style: TextStyle(
                          color: isEquitySelected ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "F&O",
                        style: TextStyle(
                          color: isEquitySelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
