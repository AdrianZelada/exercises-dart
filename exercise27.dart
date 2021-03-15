/**
 * 
 * In the previous exercise we created a dictionary of famous scientists’ birthdays.
 * In this exercise, modify your program from Part 1 to load the birthday dictionary from a JSON file on disk, rather than having the dictionary defined in the program.
 * Bonus:
 * Ask the user for another scientist’s name and birthday to add to the dictionary, and update the JSON file you have on disk with the scientist’s name. If you run the program multiple times and keep adding new names, your JSON file should keep getting bigger and bigger.
 */
import 'dart:io';
import 'dart:convert';


void main() {

  Map<String, dynamic> birthdays = readFile();
  print("\nHello there!. We know the birthdays of the following people: \n");

  printBirthDays(birthdays);

  stdout.write("\nAre you want to know the birthday of someone? (y) or (n)");
  String cmd = stdin.readLineSync() as String;
  cmd = cmd.toLowerCase();
  if(cmd == "y") {
      stdout.write("\nWho's birthday do you want to know? ");
      String cmdName = stdin.readLineSync() as String;
      cmdName = cmdName.toLowerCase();
      if(birthdays.containsKey(cmdName)) {
        print("${cmdName.toUpperCase()}'s birthday is ${birthdays[cmdName]}");
      } else {
        print("We don't know ${cmdName.toUpperCase()}'s birthday");
        addBirthday(cmdName);
      }
  } else {
    addBirthday("someone");
  }

  
}

void addBirthday (String name) {
  print("Are you want to add ${name.toUpperCase()}'s birthday? (y) or (n)");
  String cmd = stdin.readLineSync() as String;
  cmd = cmd.toLowerCase();
  if(cmd == "y") {
    Map<String, dynamic> birthdays = readFile();
    stdout.write("Give us a name: ");
    String nameKey = stdin.readLineSync() as String;
    stdout.write("Give us their birthday (dd-mm-yyyy): ");
    String birthday = stdin.readLineSync() as String;
    birthdays[nameKey] = birthday;
    writeFile(birthdays);
  } else {
    print("Bye!!!");
  }
}

void printBirthDays( Map<String, dynamic> birthdays){
  birthdays.forEach((key, value) {
    print("$key:    $value");
  });
}

Map<String, dynamic> readFile () {
  var file = File("birthdays.json");
  return json.decode(file.readAsStringSync());
}

void writeFile (Map<String, dynamic> data) {
  var file = File("birthdays.json");
  file.writeAsStringSync(json.encode(data));
  printBirthDays(data);
}



