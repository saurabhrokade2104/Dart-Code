import "dart:io";

void main(){

print("Enter Number of Rows :");
int rows = int.parse(stdin.readLineSync()!);
int num1 = 0;
for(int i=1;i<=rows;i++){
    if(num1==0){
        num1++;
    }
    else{
        num1--;
    }
    for(int j=1;j<=rows;j++){
        stdout.write("$num1 ");
    }
    print("");
}
}

  
