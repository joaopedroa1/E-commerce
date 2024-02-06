import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nike extends StatelessWidget {
  const Nike({super.key});

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
            Text('Nike Air Force 1', style: GoogleFonts.bebasNeue(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
          ]),
        ),
        Image.asset('assets/Air.png', width: 500, height: 500,),
        Text('Descrição do produto', style: GoogleFonts.bebasNeue(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('Tênis popular e confortável. De fácil limpeza e combina com qualquer estilo, possuindo a versão branca e preta.',textAlign: TextAlign.center ,style: GoogleFonts.bebasNeue(fontSize: 18, color: Colors.black)),
        )
      ]),
    );
  }
}