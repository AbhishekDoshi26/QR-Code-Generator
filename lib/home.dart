import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _data = TextEditingController();
  String dataString = "Abhishek Doshi";
  @override
  void dispose() {
    _data.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Generator'),
        leading: Icon(Icons.fingerprint),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'QR Code is a picture that contains some hidden information!',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                color: Colors.white,
                elevation: 50.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0))),
              ),
              Card(
                child: QrImage(
                  data: dataString,
                  version: QrVersions.auto,
                  size: 200.0,
                ),
                elevation: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300.0,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        suffixIcon: MaterialButton(
                            child: Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              setState(() {
                                dataString = _data.text;
                                print(dataString);
                              });
                            }),
                        prefixIcon: Icon(Icons.fingerprint),
                        hintText: 'Enter Data',
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                      controller: _data,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
