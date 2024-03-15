import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2tpm/constant/colors.dart';
import 'package:tugas2tpm/provider/calculator_provider.dart';

class GanjilGenapButton extends StatelessWidget {
  const GanjilGenapButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue("check"),
        child: Container(
          height: 64,
          width: 340,
          decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(40)
          ),
          child: const Center(
              child: Text(
                "CHECK",
                style: TextStyle(
                  fontSize: 32,
                ),
              )
          ),
        ),
      ),
    );
  }
}
