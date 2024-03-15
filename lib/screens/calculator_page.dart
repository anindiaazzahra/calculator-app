import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2tpm/constant/colors.dart';
import 'package:tugas2tpm/provider/calculator_provider.dart';
import 'package:tugas2tpm/screens/ganjil_genap_page.dart';
import 'package:tugas2tpm/screens/kelompok_page.dart';
import 'package:tugas2tpm/screens/login_page.dart';
import 'package:tugas2tpm/screens/widgets_data.dart';
import 'package:tugas2tpm/widgets/calculator_button.dart';
import 'package:tugas2tpm/widgets/textfield.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 35);
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
    );
    return Consumer<CalculatorProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Padding(
              padding: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
              child: Text("Kalkulator"),
            ),
            backgroundColor: Colors.black,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                  ),
                  child: Text(
                    'Tugas TPM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Data Kelompok'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DataKelompokPage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Kalkulator'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CalculatorPage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Ganjil Genap Checker'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GanjilGenapPage()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage(message: "Anda berhasil logout")),
                    );
                  },
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              CustomTextField(
                controller: provider.computationController,
              ),
              const Spacer(),
              Container(
                height: screenHeight  * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index + 4]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(3, (index) => buttonList[index + 8]),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(3, (index) => buttonList[index + 11]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const CalculatorButton(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }
}