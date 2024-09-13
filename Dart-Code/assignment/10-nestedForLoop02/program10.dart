import "dart:io";

void main() {
  print("enter no of rows :");
  int row = int.parse(stdin.readLineSync()!);
  int num = 1;
  int temp1 = 1;
  int temp2 = 1;

  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$num     ");

      num = temp1 + temp2;

      temp1 = temp2;

      temp2 = num;
    }

    print("");
  }
  print("");
}
