import "dart:io";

void main(){
    print("Enter the number of rows :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1 = 0;
    int num2 = 0;
    for(int i=1;i<=rows;i++){
        num2 = i;
        num1 = rows;
        for(int j=1;j<=i;j++){
            stdout.write("$num2 ");
            num2 = num2 + num1;
            num1--;
        }
        print("");
    }
}
