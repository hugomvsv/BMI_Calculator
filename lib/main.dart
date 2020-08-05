import 'package:flutter/material.dart';
import 'second.dart';


void main() => runApp(new MyApp());

TextEditingController weight = TextEditingController();
TextEditingController height = TextEditingController();

class MyApp extends StatelessWidget {
  static const String _title = 'BMI CALCULATOR';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyStatelessWidget(),

    );


  }


}





/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          title: const Text('BMI CALCULATOR'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.receipt),
              onPressed: () {
                showAlertDialog(context,"INFO","Insert weight and height and get the body mass index");
              },
            ),


          ],
        ),
        body:
        showform( context),
        bottomNavigationBar:BottomNavigationBar(

          type: BottomNavigationBarType.shifting ,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text(''),

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit,color: Color.fromARGB(255, 0, 0, 0)),
                title: new Text('')
            ),
          ],
          onTap: (index){
            if(index==0)
              showAlertDialog(context, "Formula", "BMI=WEIGHT (kg) / (HEIGHT X HEIGHT (m)");
            else
              showAlertDialog(context, "Categories", "Lower than 18.5 -> Underweight\n 18.5 to 25 -> Normal\n 25 to 30 -> Overweight\n 30 upwards -> Obese \n");
          },
        )
    );
  }



}

Widget showform(BuildContext context){
  return  MaterialApp(


      debugShowCheckedModeBanner: false,
      title: "Welcome to Flutter",
      home: new Material(
          child: new Container (

              padding: const EdgeInsets.all(30.0),
              color: Colors.white,
              child: new Container(
                child: new Center(
                    child: new Column(
                        children : [
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new Text('Get your BMI',
                            style: new TextStyle( fontSize: 25.0),),
                          new Padding(padding: EdgeInsets.only(top: 20.0)),
                          new TextFormField(
                            controller: weight,
                            decoration: new InputDecoration(

                              labelText: "Weight (kg)",

                              fillColor: Colors.white,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                borderSide: new BorderSide(
                                ),
                              ),

                              //fillColor: Colors.green
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(height: 20),
                          new TextFormField(
                            controller: height,
                            decoration: new InputDecoration(fillColor: Colors.white,
                              labelText: "Height (m)",
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                                borderSide: new BorderSide(
                                ),),),
                            keyboardType: TextInputType.number,
                            style: new TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                          SizedBox(height: 10),
                          new Container(

                            child: new RaisedButton(
                              onPressed: () {

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SecondRoute()));
                              },



                              child: new Text(
                                'Calculate',
                                style: new TextStyle(
                                    color: Colors.white
                                ),

                              ),
                              shape: RoundedRectangleBorder(

                                  borderRadius: new BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.white)
                              ),

                            ),

                          ),
                        ]
                    )
                ),
              )
          )
      )
  );
}


showAlertDialog(BuildContext context, String title, String subtitle) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(subtitle),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}