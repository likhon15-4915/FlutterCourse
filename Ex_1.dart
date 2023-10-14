import 'dart:io';

void main() {
  print('Enter a string:');
  String userInput = stdin.readLineSync()!;
  
  String reversedString = reverseWords(userInput);
  print('Reversed string: $reversedString');
}

String reverseWords(String input) {
  List<String> words = input.split(' ');
  words = words.reversed.toList();
  return words.join(' ');
}
