import 'dart:io';

void main() {
  Map<String, String> birthdayDictionary = {
    'Albert Einstein': '03/14/1879',
    'Benjamin Franklin': '01/17/1706',
    'Ada Lovelace': '12/10/1815'
  };

  print('Welcome to the birthday dictionary. We know the birthdays of:');
  printAllNames(birthdayDictionary);

  print('Who\'s birthday do you want to look up?');
  String name = stdin.readLineSync()!;

  if (birthdayDictionary.containsKey(name)) {
    String birthday = birthdayDictionary[name]!;
    print('$name\'s birthday is $birthday');
  } else {
    print('Sorry, we don\'t have the birthday information for $name');
  }
}

void printAllNames(Map<String, String> dictionary) {
  for (String name in dictionary.keys) {
    print(name);
  }
}
