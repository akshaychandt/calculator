import 'package:math_expressions/math_expressions.dart';
import 'calculatorpotrait.dart';
class calculations{
  var x="";
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