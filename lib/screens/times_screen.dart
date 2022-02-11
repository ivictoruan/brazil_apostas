import 'package:flutter/material.dart';
import 'package:brazil_apostas/repositories/time_repository.dart';

class TimesScreen extends StatelessWidget {
  const TimesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final table = TimeRepository.table;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Times'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int time) {
          return ListTile(
            leading: Image.asset(table[time].image),
            title: Text(table[time].name),
            trailing: Text("${table[time].position.toString()}º", style: const TextStyle(fontSize: 18 ),),            
          );
        },
        itemCount: table.length, 
        separatorBuilder: (_, __) => const Divider(),    
        padding: const EdgeInsets.all(16),                   
      ),
    );
  }
}
