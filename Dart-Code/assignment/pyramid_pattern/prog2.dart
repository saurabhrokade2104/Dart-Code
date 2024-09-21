import "dart:io";

void main() {
  print("Enter row:");
  int row = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= row; i++) {
    for (int space = row; space > i; space--) {
      stdout.write("  ");
    }

    for (int j = 1; j <= i * 2 - 1; j++) {
      stdout.write("1 ");
    }
    print("");
  }
}

