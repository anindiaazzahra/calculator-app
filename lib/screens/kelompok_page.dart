import 'package:flutter/material.dart';
import 'package:tugas2tpm/constant/colors.dart';

class DataKelompokPage extends StatelessWidget {
  const DataKelompokPage({super.key});

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
        title: const Center(child: Text("Data Kelompok")),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: padding,
        child: Container(
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
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}