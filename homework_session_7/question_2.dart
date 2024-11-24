// 2. Loops, Conditional Statements, and Strings
// Write a program that:
// - Accepts a string from the user.
// - Counts the occurrences of each vowel (a, e, i, o, u) in the string using a `Map<String, int>`.
// - Ignores case (e.g., count A and a together).
// - Prints the vowels and their counts.

import 'dart:io';

void main() {
  // طلب إدخال النص من المستخدم
  print("Enter a string:");
  String? input = stdin.readLineSync();
  Map<String, int> vowelCounts = countVowels(input!);

    // طباعة النتائج
    print("Vowel counts:");
    vowelCounts.forEach((vowel, count) {
      print("$vowel: $count");
    });
  } else {
    print("Invalid input. Please enter a non-empty string.");
  }
Map<String, int> countVowels(String input) {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  Map<String, int> counts = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };
  String lowerCaseInput = input.toLowerCase();
  for (var char in lowerCaseInput.split('')) {
    if (vowels.contains(char)) {
      counts[char] = (counts[char] ?? 0) + 1;
    }
  }

  return counts;
}