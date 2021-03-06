import 'package:brigadapoli/src/ui/list_head_phones_page.dart';
import 'package:brigadapoli/src/ui/list_kits_page.dart';
import 'package:brigadapoli/src/ui/list_radios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImplementsPage extends StatefulWidget {
  @override
  _ImplementsPageState createState() => _ImplementsPageState();
}

class _ImplementsPageState extends State<ImplementsPage> {
  int theriGroupValue = 0;

  final Map<int, Widget> pageWidgets = const <int, Widget>{
    0: Text(
      "Radios",
      style: TextStyle(
        color: Colors.black12,
        decoration: TextDecoration.none,
        fontSize: 20.0,
      ),
    ),
    1: Text(
      "Botiquínes",
      style: TextStyle(
        color: Colors.black12,
        decoration: TextDecoration.none,
        fontSize: 20.0,
      ),
    ),
    2: Text(
      "Audifonos",
      style: TextStyle(
        color: Colors.black12,
        decoration: TextDecoration.none,
        fontSize: 20.0,
      ),
    ),
  };

  List<Widget> bodies = [
    ListRadiosPage(),
    ListKitsPage(),
    ListHeadPhonesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatingActionButtonTapBodies(),
      body: bodies[theriGroupValue],
      appBar: AppBar(
            title: Text('Implementos'),
            backgroundColor: Color.fromRGBO(4, 75, 172, 1.0),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 45.0),
          child: Padding(
            padding: EdgeInsets.only(top: 5.0,bottom: 10.0),
            child: Row(
              children: <Widget>[
                SizedBox(width: 15.0,),
                Expanded(
                  child: CupertinoSegmentedControl(
                    groupValue: theriGroupValue,
                    onValueChanged: (value) {
                      setState(() {
                        theriGroupValue = value;
                      });
                    },
                    children: pageWidgets,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: missing_return
  Widget _floatingActionButtonTapBodies(){
    switch(theriGroupValue) {
      case 0: {
        return FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Color.fromRGBO(4, 75, 172, 1.0),
          ),
          elevation: 10.0,
          backgroundColor: Colors.white,
          onPressed: () => Navigator.pushNamed(context, 'addRadios'),
        );
      }
      break;

      case 1: {
        return FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Color.fromRGBO(4, 75, 172, 1.0),
          ),
          elevation: 10.0,
          backgroundColor: Colors.white,
          onPressed: () => Navigator.pushNamed(context, 'addkits'),
        );
      }
      break;

      case 2: {
        return FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Color.fromRGBO(4, 75, 172, 1.0),
          ),
          elevation: 10.0,
          backgroundColor: Colors.white,
          onPressed: () => Navigator.pushNamed(context, 'addHeadPhones'),
        );
      }
      break;
      default:
        return FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Color.fromRGBO(4, 75, 172, 1.0),
          ),
          elevation: 10.0,
          backgroundColor: Colors.white,
          onPressed: () => Navigator.pushNamed(context, 'addHeadPhones'),
        );
        break;
    }
  }

}
