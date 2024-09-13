void main(){
  double bmi=22;
  if(bmi<18.5){
    print("Underweight");
  }else if(bmi>=18.5&&bmi<24.9){
    print("Normal");
  }else if(bmi>=25.0&&bmi<29.0){
    print("Overweight");

  }else if(bmi>=30&&bmi<34.9){
    print("Obese");

  }else if(bmi>=35){
    print("Extreme obese");

  }else{
    print("Invalid no ");
  }


}