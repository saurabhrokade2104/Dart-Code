import "dart:io";

void main(){

//print("Enter Start Number :");
//int start = int.parse(stdin.readLineSync()!);

print("Enter Number of rows you want :");
int rows = int.parse(stdin.readLineSync()!);
int num1 = 1;
for(int i=1;i<=rows;i++){
    for(int j=1;j<=rows;j++){
        stdout.write("$num1 ");
        num1++;
    }
    print("");
}

}
