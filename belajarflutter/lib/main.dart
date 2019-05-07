import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new Home(),
      ));
    }
    
    class Home extends StatefulWidget {
      @override 
      _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home>{

  List<String> agama = ["Islam","Kristen","Hindu"];
  String _agama = "Islam";
  String _jk = "";


  void  _pilihjk(String value){
    setState((){
      _jk =value;
    });
  }

  void pilihAgama(String value){
    setState((){
      _agama = value;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.assignment),
        title: new Text("Form Pendaftaran"),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                      hintText: "Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                      )

                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top:20.0),),
                  new TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                      )
                    
                    ),
                  ),
                   new Padding(padding: new EdgeInsets.only(top:20.0),),
                  new TextField(
                    maxLines: 3,
                    decoration: new InputDecoration(
                      hintText: "Text Area",
                      labelText: "Text Area",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                      )
                    )
                  ),

                  new Padding(padding: new EdgeInsets.only(top:20.0),),

                  new RadioListTile(
                  value: "Laki-Laki",
                  title: new Text("Laki-laki"),
                  groupValue: _jk,
                  onChanged: (String value){
                    _pilihjk(value);
                  },
                  activeColor: Colors.greenAccent,
                  ),
                  
                   new RadioListTile(
                  value: "Perempuan",
                  title: new Text("Perempuan"),
                  groupValue: _jk,
                  onChanged: (String value){
                    _pilihjk(value);
                  },
                  activeColor: Colors.greenAccent,
                  ),

                  new Padding(padding: new EdgeInsets.only(top:20.0),),

                  new Row(
                    children: <Widget>[
                      new Text("Agama        ",style: new TextStyle(fontSize: 25.0,color: Colors.purple,),),
                      new DropdownButton(
                    
                    onChanged: (String value){
                      pilihAgama(value);
                    },
                    value: _agama,
                    items: agama.map((String value){
                      return new DropdownMenuItem(
                        value: value ,
                        child:  new Text(value),
                      );
                    }).toList(),
                  )
                  
                    ],
                  )

                  
                    ],
              ),
          ),
        ],
      ),
    );
  }
}