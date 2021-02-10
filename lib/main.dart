import 'package:flutter/material.dart';
import 'package:mobx_list_test/pet_store.dart';
import 'list_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PetStore store;

  @override
  void initState() {
    store = PetStore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
            builder: (_) => Text("YOU HAVE ${store.pets.length} PETS")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("add\npet"),
        onPressed: () {
          store.addPet(Pet("new pet"));
        },
      ),
      body: Observer(builder: (_) {
        return ListWidget<Pet>(
          items: store.pets,
          itemCount: store.pets.length,
          itemBuilder: (pet) {
            return Row(
              children: [
                Text(pet.name),
                RaisedButton(
                  child: Text("X"),
                  onPressed: () {
                    store.removePet(pet);
                  },
                ),
                RaisedButton(
                  child: Text("Frank"),
                  onPressed: () {
                    store.nameHimFrank(pet);
                  },
                ),
              ],
            );
          },
        );
      }),
    );
  }
}
