import 'package:flutter/material.dart';

class FlamengoScreen extends StatelessWidget {
  const FlamengoScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flamengo'),
        centerTitle: true,
        leading:IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: const Text('Tela do Flamengo'),    
      
    );
  }
}