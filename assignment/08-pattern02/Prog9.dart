import "dart:io";

void main(){
    print("Enter number of rows :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1 =0;
    int j;
    for(int i=1;i<=rows;i++){

        for(j=1;j<=rows;j++){

            if(i%2==1){
                stdout.write("$j ");
                
            }
            else{
                if(j%2==1){
                    stdout.write("$num1 ");
                    num1 = num1 - 2;
                }
                else{
                    stdout.write("$num1 ");
                    num1++;
                }
            }
        }
        num1 = j-1;
        print("");
    }
}
