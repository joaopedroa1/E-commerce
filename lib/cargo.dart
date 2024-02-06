import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cargo extends StatelessWidget {
  const Cargo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Magalhães Roupas', style: GoogleFonts.bebasNeue(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(
          padding: EdgeInsets.all(8)
        ),
        Container(
          width: double.infinity,
          child: Column
          (children: [
            Text('Calça Cargo Villago', style: GoogleFonts.bebasNeue(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
          ]),
        ),
        Image.asset('assets/Cargo.png', width: 500, height: 500,),
        Text('Descrição do produto', style: GoogleFonts.bebasNeue(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Calça larga e com bolsos a mais, extremamente confortável e bem versátil. A lista de medidas é diferente para este tipo de calça.',textAlign: TextAlign.center ,style: GoogleFonts.bebasNeue(fontSize: 18, color: Colors.black)),
        )
      ]),
    );
  }
}