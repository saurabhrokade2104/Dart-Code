void main(){
  int x=15;
  if(x%5==0 && x%3==0){
    print("divisible by both 3 and 5");

  }else if(x%3==0){
    print("divisible by 3");

  }else if(x%5==0){
    print("divisible by 5");
  }else{
    print("invalid input");
  }
}