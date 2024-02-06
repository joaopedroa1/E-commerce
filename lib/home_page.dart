import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roupas/cargo.dart';
import 'package:roupas/nike.dart';
import 'package:roupas/over.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Magalhães Roupas', style: GoogleFonts.bebasNeue(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('Principais produtos', style: GoogleFonts.bebasNeue(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 767,
          child: ListView
          (scrollDirection: Axis.vertical,
            children: [
              Container(
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Cargo())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/Cargo.png', width: 225, height: 225,),
                  Text('Calça Cargo Villago', style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),)
                ],)
              ),
            ),
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const Nike())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/Air.png', width: 225, height: 225,),
                  Text('Nike Air Max', style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),)
                ],)
              ),
            ),
          ),
        ),
         Container(
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Over())),
              child: Card(
                color: Colors.blue[50],
                elevation: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/Oversized.png', width: 225, height: 225,),
                  Text('Camiseta Oversized', style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),)
                ],)
              ),
            ),
          ),
        ),

          ]),
        )
      ],
    ),
    );
  }
}