import "dart:io";

void main(){

    print("Enter number of Rows :");
    int rows = int.parse(stdin.readLineSync()!);

    int num1 = 1;
    
    for(int i=1;i<=rows;){
        
        for(int j=1;j<rows;j++){
            
            stdout.write("$i ");
        }
        //num1++;
        i++;
        print("$i ");
        
    }
}

