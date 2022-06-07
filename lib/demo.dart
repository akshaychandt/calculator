import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  var x="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.all(5),
                child: Text("$x",textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 60,color: Colors.black),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  clrd();
                },
                child: Text("AC",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  backsp();
                },
                child: Text("<-",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("..");
                },
                child: Text("..",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("/");
                },
                child: Text("/",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  Numb("7");
                },
                child: Text("7",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),ElevatedButton(
                onPressed: (){
                  Numb("8");
                },
                child: Text("8",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("9");
                },
                child: Text("9",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("*");
                },
                child: Text("*",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  Numb("4");
                },
                child: Text("4",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("5");
                },
                child: Text("5",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("6");
                },
                child: Text("6",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("-");
                },
                child: Text("-",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  Numb("1");
                },
                child: Text("1",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("2");
                },
                child: Text("2",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("3");
                },
                child: Text("3",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("+");
                },
                child: Text("+",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  Numb("%");
                },
                child: Text("%",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb("0");
                },
                child: Text("0",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Numb(".");
                },
                child: Text(".",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  ans();
                },
                child: Text("=",
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                ),
                    primary: Colors.grey,
                    padding: EdgeInsets.all(10)
                ),
              ),
            ],

          ),
          SizedBox(height: 5,),
        ],

      ),


    );
  }
  Numb(var n){
    setState(() {
      x += n;
    });
  }
  clrd(){
    setState(() {
      x='';
    });
  }
  backsp(){
    setState(() {
      List<String>
      b=x.split("");
      b.removeLast();
      x=b.join();
    });
  }
  ans(){
    Parser p= Parser();
    Expression exp= p.parse(x);
    //Bind variables:
    ContextModel cm = ContextModel();
    //evaluate expression:
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    print(eval); // =1.0
    setState(() {
      x=eval.toString();
    });
  }
}