import 'package:flutter/material.dart';

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
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home> {
  bool ch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activite 14"),
        leading: new Icon(Icons.account_circle),
        actions: [
          new Icon(Icons.menu),
        ],
        elevation: 10.0,
        shadowColor: Colors.white,
        centerTitle: true,
      ),
      // backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: new Column(
          children: [
            Container(
              width: 130,
              margin: EdgeInsets.only(top: 10, bottom: 5),
              child: CircleAvatar(
                radius: 95.0,
                backgroundImage: AssetImage('asset/DES9.jpg'),
              ),
            ),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                      value: false,
                      groupValue: true,
                      onChanged: (bool? value) {}),
                  Text('Ajouter'),
                  Radio(
                      value: true,
                      groupValue: true,
                      onChanged: (bool? value) {}),
                  Text('Modifier'),
                  Radio(
                      value: false,
                      groupValue: true,
                      onChanged: (bool? value) {}),
                  Text('Supprimer'),
                ],
              ),
            ),
            new Container(
                child: Form(
              // autovalidateMode: false,
              child: Column(
                children: <Widget>[
                  TextField(
                    autocorrect: true, //Pour la Correction des erreurs
                    keyboardType: TextInputType
                        .phone, //Pour Specifier le type de l'ecriture
                    decoration: const InputDecoration(
                        icon: Icon(Icons.account_circle_rounded),
                        labelText: 'Name',
                        hintText: 'Enter here you name'),
                  ),
                  TextField(
                    autocorrect: true,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.phone),
                        labelText: 'mobile number',
                        hintText: 'Enter here you number'),
                  ),
                  /////////////////////////
                  TextField(
                    autocorrect: true,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'Email number',
                        hintText: 'Enter here you email'),
                  ),
                ],
              ),
            )),
            Container(
                child: Row(children: [
              new Container(
                  height: 300,
                  color: Colors.white70,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        new Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                Checkbox(
                                    value: true, onChanged: (bool? value) {}),
                                Text('Baccalauriat'),
                              ]),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                Checkbox(
                                    value: false, onChanged: (bool? value) {}),
                                Text('BTS'),
                              ]),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                Checkbox(
                                    value: false, onChanged: (bool? value) {}),
                                Text('Licence'),
                              ]),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                Checkbox(
                                    value: true, onChanged: (bool? value) {}),
                                Text('Master'),
                              ]),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                Checkbox(
                                    value: false, onChanged: (bool? value) {}),
                                Text('Doctorat'),
                              ]),
                            ]),
                      ])),
              Column(mainAxisSize: MainAxisSize.values.first, children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CONFIRMER',
                    style: TextStyle(
                      // backgroundColor: Colors.blue,
                      fontSize: 25,
                      height: 7,
                    ),
                  ),
                ),
                Text(
                  'Resultat',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontStyle: FontStyle.italic),
                )
              ]),
            ])),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        elevation: 8,
        child: new Icon(Icons.ac_unit),
      ),
    );
  }
}
