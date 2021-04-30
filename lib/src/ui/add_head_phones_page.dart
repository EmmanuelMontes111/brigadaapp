import 'package:brigadapoli/src/utils/utils.dart' as utils;
import 'package:flutter/material.dart';

class AddHeadPhonesPage extends StatefulWidget {
  @override
  _AddHeadPhonesPageState createState() => _AddHeadPhonesPageState();
}

class _AddHeadPhonesPageState extends State<AddHeadPhonesPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Audifono"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_size_select_actual),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  _creteId(),
                  _creteName(),
                  _creteButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _creteId() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Id del Audifono',
      ),
      validator: (value) {
        if (utils.isNumeric(value)) {
          return null;
        }
        else {
          return 'Sólo números';
        }
      },
    );
  }

  Widget _creteName() {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        labelText: 'Nombre del Audifono',
      ),
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese el nombre del Audifono';
        }
        else {
          return null;
        }
      },
    );
  }

  Widget _creteButton() {
    return ElevatedButton.icon(
      label: Text('Guardar'),
      icon: Icon(Icons.save),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
        backgroundColor:
        MaterialStateProperty.all(Color.fromRGBO(4, 75, 172, 1.0)),
        elevation: MaterialStateProperty.all(0.0),
      ),
      onPressed: _submit,
    );
  }

  void _submit() {
    if (!formKey.currentState.validate()){
      return;
    }
   print("TODO OK");
  }
}
