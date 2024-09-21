import "dart:io";

void main(){

    print("Enter the number of rows :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1 = 1;
    for(int i=1;i<=rows;i++){

        num1 = 1;

        for(int j=1;j<=(rows-i);j++){
            stdout.write("  ");
            num1++;
        }

        for(int k=1;k<=i;k++){
            stdout.write("$num1 ");
            num1++;
                   
        }
        print("");
    }
}
