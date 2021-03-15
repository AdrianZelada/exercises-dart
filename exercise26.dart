// For this exercise, we will keep track of when our friend’s birthdays are, and be able to find that information based on their name.
// Create a dictionary (in your file) of names and birthdays. When you run your program it should ask the user to enter a name, and return the birthday of that person back to them. The interaction should look something like this:
import 'dart:io';

void main() {

  Map<String, String> birthdays = {
    "adrian zelada": "16-03-1989",
    "viviana fernandez": "08-08-1989",
    "guillermo paredes": "25-02-1991",
  };
  print("\nHello there!. We know the birthdays of the following people: \n");

  birthdays.forEach((key, value) {
    print(key);
  });

  stdout.write("\nWho's birthday do you want to know? ");
  String cmd = stdin.readLineSync() as String;
  cmd = cmd.toLowerCase();

  if(birthdays.containsKey(cmd)) {
    print("${cmd.toUpperCase()}'s birthday is ${birthdays[cmd]}");
  } else {
    print("We don't know ${cmd.toUpperCase()}'s birthday");
  }
  
}
