import "dart:io";

void main(){
    print("Enter the rows of numbers :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1 = rows*(rows+1)~/2;

    for(int i=1;i<=rows;i++){

        for(int j=1;j<=i;j++){

            stdout.write("$num1 ");
            num1--;
        }
        num1++;
        print("");
    }
}

