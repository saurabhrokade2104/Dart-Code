import "dart:io";

void main(){

    print("Enter the Number of Rows :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1 = rows;
    int num2 = 1;

    for(int i=1;i<=rows;i++){

        num1 = (rows-i)+1;
        
        for(int j=1;j<=i;j++){

            if(j%2==0){
                stdout.write("$num2 ");
                num2++;
            }
            else{
                stdout.write("$num1 ");
                num1--;
                num1=num1+2;

            }
        }
        print("");
    }
}
