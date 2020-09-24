//Task 1:
int[] sortArray = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};

//Task 3:
import java.util.Arrays;
int[] myArray = { 1, 6423, 64, 6, 3, 123, 61, 6, 36, 1236, 347, 3, 1326, 246, 4 };

//Task 4:
int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };

//Task 5:
int board[][] = new int[8][8]; 

void setup() {
  //Task 1:
  println("Task 1:");
  sortFunction(sortArray);

  //Task 3:
  Arrays.sort(myArray);
  println("\nTask 3:");
  println(myArray);

  //Task 4:
  println("\nTask 4: \n A:");
  intDiveded(23);
  println(" C: \n" + randomFromArray(arr));
  println(" D:");
  allBelow(randomFromArray(arr));
  println(" E:");
  calculate(1, 1);

  //Task 5:
  size(350, 350);
  drawBoard();
}

//Task 1:
void sortFunction(int[] input) {
  boolean end = true;

  for (int i = 1; i < input.length; i++) {
    if (input[i] < input[i-1]) {
      int holder = input[i -1];
      input[i - 1] = input[i];
      input[i] = holder;
      end = false;
      break;
    }
  }

  if (!end)
    sortFunction(input);
  else {
    println(input);
  }
}

//Task 4:
void intDiveded(int input) {
  for (int i = 0; i < 101; i++) {
    if (i % input == 0)
      println(i);
  }
}

int randomFromArray(int[] input) {
  return input[(int)random(0, input.length)];
}

void allBelow(int input) {
  println(input);
  input--;

  if (input >= 0)
    allBelow(input);
}

void calculate(int a, int b) {
  println(a + "\t" + b);

  int cur = 1, pre = 0;
  while (cur < 10000) {
    println(cur);
    int holder = pre;
    pre = cur;
    cur += holder;
  }
}

//Task 5;
void drawBoard() {
  int start = 0;
  float w = width / 8, h = height / 8;

  for (int x = 0; x < 8; x++) {
    board[x][0] = start;
    for (int y = 0; y < 8; y++) {
      if (y != 0)
        board[x][y] = 1 - (board[x][y - 1]);

      fill(board[x][y] * 255);
      rect(x * w, y * h, w, h);
    }

    if (start == 0)
      start = 1;
    else
      start = 0;
  }
}
