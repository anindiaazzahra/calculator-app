import 'package:flutter/material.dart';
import 'package:tugas2tpm/screens/login_page.dart';
import 'package:tugas2tpm/constant/colors.dart';
import 'package:tugas2tpm/screens/calculator_page.dart';
import 'package:tugas2tpm/screens/ganjil_genap_page.dart';

class DataKelompokPage extends StatelessWidget {
  const DataKelompokPage({Key? key, this.message}) : super(key: key);

  final String? message;

  @override
  Widget build(BuildContext context) {
    List<String> dataKelompok = [
      "123210072 - Anindia Azzahra",
      "123210190 - Frederick Roberto Wifani",
    ];
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 35);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
          child: Text("Data Kelompok"),
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
                  MaterialPageRoute(builder: (context) => DataKelompokPage()),
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
                // Add your functionality here
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
                  MaterialPageRoute(builder: (context) => LoginPage(message: "Anda berhasil logout")),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: padding,
        child: ListView.builder(
          itemCount: dataKelompok.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                color: AppColors.primaryColor,
                child: ListTile(
                  title: Text(
                    dataKelompok[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
