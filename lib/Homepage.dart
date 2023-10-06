import 'dart:html';

import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double result=0;
  final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {

       const  border=  OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius:BorderRadius.all(Radius.circular(25)) ,
    );
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle:true,
        title: const Text("CURRENCY CONVERTOR",style: TextStyle(color: Colors.green),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("INR ${result!=0 ?result.toStringAsFixed(2) :  result.toStringAsFixed(0)}",style: const TextStyle(fontSize:45,fontWeight:FontWeight.bold ),),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true,signed: true),
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon:Icon(Icons.monetization_on),
                 prefixIconColor: Colors.black,
                 hintText: "Enter the amount in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  focusedBorder:border,
                  enabledBorder:border,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              //print(double.parse(textEditingController.text)*81);
              result=double.parse(textEditingController.text)*81;
              setState(() {
              });

            },
              style:  TextButton.styleFrom(
                backgroundColor:Colors.green,
                    fixedSize:  const Size(150,50),
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10),),
                    elevation: 20,
                    shadowColor: Colors.lightGreenAccent,
                ),

              child: const Text("CONVERT",style: TextStyle(fontSize: 25,color: Colors.white)
                ),
            )
          ],
        ),
      ),

    );
  }
}
