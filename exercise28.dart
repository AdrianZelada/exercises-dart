/**
 * 
 * In the previous exercise we saved information about famous scientists’ names and birthdays to disk.
 * In this exercise, load that JSON file from disk, extract the months of all the birthdays, and count how many scientists have a birthday in each month.
 * Your program should output something like:
{
    "May": 3,
    "November": 2,
    "December": 1
}
 */
import 'dart:io';
import 'dart:convert';

void main() {

  Map<String, dynamic> birthdays = readFile();
  print("\nHello there!. We are count how many people have a birthday in each month: \n");  
  Map<String, int> monthsPeople = countPeopleMonth(birthdays);
  printMonths(monthsPeople);
}

Map<String, int> countPeopleMonth(Map<String, dynamic> birthdays) {
  Map<String, int> monthsPeople = {};
  birthdays.forEach((key, value) {
    String month = getMonthFromKey(value);
    if(monthsPeople.containsKey(month)) {
      int? valueMonth = absoluteValue(monthsPeople[month]);
      monthsPeople[month] = valueMonth +1;
    } else {
      monthsPeople[month] = 1;
    }
  });
  return monthsPeople;
}

String getMonthFromKey(String date) {
  List<String> months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  int dateIndex = int.parse(date.split("-")[1]);
  return months[dateIndex-1];
}

void printMonths( Map<String, dynamic> months){
  months.forEach((key, value) {
    print("$key:    $value");
  });
}

Map<String, dynamic> readFile () {
  var file = File("birthdays.json");
  return json.decode(file.readAsStringSync());
}


int absoluteValue(int? value) {
  if (value == null) {
    return 0;
  }
  // if we reach this point, value is non-null
  return value.abs();
}
