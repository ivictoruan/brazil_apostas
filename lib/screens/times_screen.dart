import 'package:brazil_apostas/model/time.dart';
import 'package:flutter/material.dart';
import 'package:brazil_apostas/repositories/time_repository.dart';

class TimesScreen extends StatefulWidget {
  const TimesScreen({Key? key}) : super(key: key);

  @override
  State<TimesScreen> createState() => _TimesScreenState();
}

class _TimesScreenState extends State<TimesScreen> {
  final table = TimeRepository.table;
  List<Time> selected = []; // lista de times selecionados (na tela de times)

  @override
  Widget build(BuildContext context) {
    dinamicAppBar() {
      if (selected.isEmpty) {
        return AppBar(
          title: const Text("Times"),
          centerTitle: true,
        );
      } else {
        return AppBar(
          title: Text(
            "${selected.length} Selecionados",
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.blueGrey[50],
          iconTheme: const IconThemeData(color: Colors.black87),
          leading: IconButton(
            onPressed: () {
              setState(() {
                selected = [];
              });
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        );
      }
    }

    return Scaffold(
      appBar: dinamicAppBar(),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int time) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            leading: (selected.contains(table[time]))
                ? const CircleAvatar(
                    child: Icon(Icons.check),
                  )
                : SizedBox(
                    width: 40, // 40 px
                    child: Image.asset(
                      table[time].image,
                    ),
                  ),
            title: Text(
              table[time].name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            selected: selected.contains(table[time]),
            selectedTileColor: Colors.indigo[50],
            trailing: Text(
              "${table[time].position.toString()} º",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            onLongPress: () {
              setState(() {
                (selected.contains(table[time]))
                    ? selected.remove(table[time])
                    : selected.add(table[time]);
              });
              debugPrint(table[time].name);
            },
          );
        },
        itemCount: table.length,
        separatorBuilder: (_, __) => const Divider(),
        padding: const EdgeInsets.all(16),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selected.isNotEmpty 
        ? FloatingActionButton.extended(
          icon: const Icon(Icons.star),
          onPressed: () {},
          label: const Text(
            "FAVORITAR",
            style: TextStyle(
              letterSpacing: 0, // não deixar espaço entre as letras
              fontWeight: FontWeight.bold,

            ),
          ),
        )
        : null,
    );
  }
}
