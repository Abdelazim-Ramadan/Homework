// ## 3. Nested Loops, Conditional Logic, and String Manipulation
// Write a program that:
// - **Prints a multiplication table from 1 to 5 using nested loops.**
// - **Skips printing results where either multiplier or multiplicand is even.**
// - **Formats the output so each result is padded to 4 characters for better alignment.**
// ### Example Output:
// ```dart
//  1 3 5
//  3 9 15
//  5 15 25
// ```

import 'dart:io';

void main() {
  for (int i = 1; i < 6; i++) {
    for (int j = 1; j < 13; j++) {
      i * j % 2 == 0 ? 0 : stdout.write(i * j);
      stdout.write(' ');
    }
    print('');
  }
}
