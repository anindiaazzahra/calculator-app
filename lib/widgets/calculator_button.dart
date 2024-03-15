import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2tpm/constant/colors.dart';
import 'package:tugas2tpm/provider/calculator_provider.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 180,
        width: 70,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(40)
        ),
        child: const Center(
            child: Text(
              "=",
              style: TextStyle(
                fontSize: 32,
              ),
            )
        ),
      ),
    );
  }
}
