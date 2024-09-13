void main(){
  int sum=0;
  int product=1;
  int i=1;
  while(i<=10){
    if(i%2==0){
      sum=sum+i;
    }else if(i%2==1){
      product=product*i;
    }
    i++;;
  }
  print("Sum of all even no $sum");
  print("product of all odd no $product");
}