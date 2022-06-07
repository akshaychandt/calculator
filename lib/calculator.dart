import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var x="";
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),backgroundColor: Colors.black54,),
      body: OrientationBuilder(builder: (BuildContext context, Orientation orientation) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.black,height: Orientation.portrait==orientation? height*0.41: height*0.3,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text("$x",textAlign: TextAlign.left,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 60,color: Colors.white),
                      ),
                    ),
                ],
              ) ,),
                    Container(color: Colors.black,
                      child: Column(
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [ElevatedButton(
                            onPressed: (){
                              clrd();
                            },
                            child: Text("AC",
                              style: TextStyle(fontSize: 30,color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                            ),
                                primary: const Color(0xFFa6a6a6),
                                padding: EdgeInsets.all(10)
                            ),
                          ),
                        ElevatedButton(
                          onPressed: (){
                            backsp();
                          },
                          child: Text("⌫",
                            style: TextStyle(fontSize: 30,color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                          ),
                              primary: const Color(0xFFa6a6a6),
                              padding: EdgeInsets.all(10)
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Numb("%");
                          },
                          child: Text("%",
                            style: TextStyle(fontSize: 30,color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                          ),
                              primary: const Color(0xFFa6a6a6),
                              padding: EdgeInsets.all(10)
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Numb("/");
                          },
                          child: Text("÷",
                            style: TextStyle(fontSize: 30,color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                          ),
                              primary: const Color(0xFFff9500),
                              padding: EdgeInsets.all(10)
                          ),
                        ),],
                        ),
                          SizedBox(height: height*0.05,),
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
                              primary: const Color(0xFF333333),
                              padding: EdgeInsets.all(10)
                          ),
                        ),
                      ElevatedButton(
                        onPressed: (){
                          Numb("8");
                        },
                        child: Text("8",
                          style: TextStyle(fontSize: 30,color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        ),
                            primary: const Color(0xFF333333),
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
                            primary: const Color(0xFF333333),
                            padding: EdgeInsets.all(10)
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Numb("*");
                        },
                        child: Text("x",
                          style: TextStyle(fontSize: 30,color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        ),
                            primary: const Color(0xFFff9500),
                            padding: EdgeInsets.all(10)
                        ),
                      ),],
                      ),
                          SizedBox(height: height*0.05,),
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
                              primary: const Color(0xFF333333),
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
                            primary: const Color(0xFF333333),
                            padding: EdgeInsets.all(10)
                        ),
                      ),ElevatedButton(
                        onPressed: (){
                          Numb("6");
                        },
                        child: Text("6",
                          style: TextStyle(fontSize: 30,color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        ),
                            primary: const Color(0xFF333333),
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
                            primary: const Color(0xFFff9500),
                            padding: EdgeInsets.all(10)
                        ),
                      ),],
                      ),
                          SizedBox(height: height*0.05,),
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
                              primary: const Color(0xFF333333),
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
                            primary: const Color(0xFF333333),
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
                            primary: const Color(0xFF333333),
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
                            primary: const Color(0xFFff9500),
                            padding: EdgeInsets.all(10)
                        ),
                      ),],
                      ),
                          SizedBox(height: height*0.05,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        ElevatedButton(
                          onPressed: (){
                            Numb("0");
                          },
                          child: Text("0",
                            style: TextStyle(fontSize: 30,color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                          ),
                              primary: const Color(0xFF333333),
                              padding: EdgeInsets.all(10)
                          ),
                        ),
                      ElevatedButton(
                        onPressed: (){
                          Numb("00");
                        },
                        child: Text("00",
                          style: TextStyle(fontSize: 30,color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        ),
                            primary: const Color(0xFF333333),
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
                            primary: const Color(0xFF333333),
                            padding: EdgeInsets.all(10)
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          evaluate();
                        },
                        child: Text("=",
                          style: TextStyle(fontSize: 30,color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),
                        ),
                            primary: const Color(0xFFff9500),
                            padding: EdgeInsets.all(10)
                        ),
                      ),],
                      ),],
                      ),
                    ),
          ],
        );
      },

      )
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

  evaluate(){
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
