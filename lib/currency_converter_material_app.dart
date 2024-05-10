
import 'package:flutter/material.dart';
class CurrencyConverterSF extends StatefulWidget {
  const CurrencyConverterSF({super.key});

  @override
  State<CurrencyConverterSF> createState() => _CurrencyConverterSFState();
}

class _CurrencyConverterSFState extends State<CurrencyConverterSF> {
  double result=0;
  final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar:AppBar(
          backgroundColor: Colors.deepPurple,
          title:const Text("Currency Converter",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body:   Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.all(5),
                  color: Colors.pinkAccent,
                  child:  Text('\$ $result',
                      style:const TextStyle(
                        fontSize: 50,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),

                Padding(
                  padding:const EdgeInsets.all(20),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),

                    decoration: const InputDecoration(
                      hintText:"Enter amount in rupees",
                      prefixIcon: Icon(Icons.currency_rupee),
                      prefixIconColor: Colors.black,
                      filled:true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(40),
                        ),
                      ),
                    ),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState(() {
                      result=double.parse(textEditingController.text)*0.021;
                    });
                  },
                  style:  TextButton.styleFrom(
                    backgroundColor: Colors.tealAccent,
                    fixedSize: const Size(400,50),
                    shape: const BeveledRectangleBorder(),
                  ),
                  child:  const Text("Convert",
                    style:TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
  }


