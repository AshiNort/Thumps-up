import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Demonstration());
}   

class Demonstration  extends StatelessWidget {
  const Demonstration({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        title: Text('thumps up',
        style: GoogleFonts.pacifico(
         color: Colors.blueAccent,
        
        ),

        ),
        backgroundColor: Colors.lightBlueAccent,  
        ),
      
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [WithOutState(), WithState()],
          ),
        ),

      ),
      
    );
  }
} 

class WithOutState extends StatelessWidget {
  const WithOutState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text(" click me :)"),
      onPressed: (){},
      
    );
  }
}

class WithState extends StatefulWidget {
  const WithState({ Key? key }) : super(key: key);

  @override
  _WithStateState createState() => _WithStateState();
}

class _WithStateState extends State<WithState> {
bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          toggle = !toggle;
          
        });
      
      },
      icon: Icon(toggle? Icons.thumb_down_alt_sharp:Icons.thumb_up_alt_sharp,
      color: toggle ? Colors.cyanAccent: Colors.deepPurple,)); 

  }
}