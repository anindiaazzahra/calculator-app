import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2tpm/constant/colors.dart';
import 'package:tugas2tpm/provider/calculator_provider.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key, required this.label, this.textColor = Colors.white});

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue(label),
      child: Material(
        elevation: 5,
        color: AppColors.secondary2Color,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
            backgroundColor: AppColors.secondary2Color,
            radius: 36,
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            )
        ),
      ),
    );
  }
}
