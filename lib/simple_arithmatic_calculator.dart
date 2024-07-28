import 'dart:io';


var choice_number, number1, number2;
var result = 0.0;


class ChoiceStrings{

choice(){
  
  // ignore: prefer_interpolation_to_compose_strings, prefer_adjacent_string_concatenation
  print('Which Mathmatical Term are you Perform?\n\n'+ 
  ">>For Addition (+) Press 1\n" +
  ">>For Subtraction (-) Press 2\n>>" +
  "For Multiplication (*) Press 3\n>>"+
  "For Division (/) Press 4\n");
  
  stdout.write("Enter Your Operation Choice Number: ");

  choice_number = int.parse(stdin.readLineSync()!); 

  return choice_number;      
  }
}

class ConditonalTerm{
  mathmatical_Operation math = mathmatical_Operation();
  condition(){

    stdout.write("\nEnter Your First Number: ");
    number1 = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Your Second Number: ");
    number2 = double.parse(stdin.readLineSync()!);
    
if (choice_number == 1){
    math.addition(); }
   else if (choice_number == 2){
    math.subtraction(); }
    else if (choice_number == 3){
    math.multiplication(); }
    else if (choice_number == 4){
    math.division(); }
    else {
      print("Your Input Number is Wrong!!");
    }

  }
}

class mathmatical_Operation {

    addition(){
    print("\n\tAddition of Two Numbers");
    var result1 = number1 + number2;
    result = double.parse(result1.toStringAsFixed(5));
    print("\t     $number1 + $number2 = $result");
  }

  subtraction(){
    print("\n\tSubtraction of Two Numbers");
    var result1 = number1 - number2;
    result = double.parse(result1.toStringAsFixed(5));
    print("\t     $number1 - $number2 = $result");
  }

  multiplication(){
    print("\n\tMultiplication of Two Numbers");
    var result1 = number1 * number2;
    result = double.parse(result1.toStringAsFixed(5));
    print("\t     $number1 * $number2 = $result");
  }

  division(){
     print("\n\tDivision of Two Numbers");
    var result1 = number1 / number2;
    result = double.parse(result1.toStringAsFixed(5));
    print("\t     $number1 / $number2 = $result");
  }
}

void main(){
    
  print(">>>>>>>>>>>>>>>Welcome To Simple Calculator Project<<<<<<<<<<<<<<<<<<<\n");

  ChoiceStrings choiceStrings = ChoiceStrings();
  ConditonalTerm conditonalTerm = ConditonalTerm();

  choiceStrings.choice();

  if(choice_number<=4){
    if(choice_number>=1){
      conditonalTerm.condition();
    }else{
      print("Error! There Are No Negative Number are Allowed!!\n");
      choiceStrings.choice();
      conditonalTerm.condition();
    }    
  }else{
    print("\nError! Enter Between 1 to 4 Number are Allowed!!\n");
      choiceStrings.choice();
      conditonalTerm.condition();
  }



     stdout.write("Are You Perform Another Operation (Y/N): ");

     var another_operation_input = stdin.readLineSync()!.toLowerCase();

     another_operation_input.contains("y")? main()
     : another_operation_input.contains("n")? null: 
      print("Your Input is Wrong!! Please Type Y/N");



}