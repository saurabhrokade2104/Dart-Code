import "dart:io";

void main(){
    print("Enter number of Rows :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1 =rows*rows;

    for(int i=rows;i>=1;i--){
        for(int j=rows;j>=1;j--){
            stdout.write("$num1 ");
            num1--;
        }
        print("");
    }
}
