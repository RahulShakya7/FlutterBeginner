// Create a simple to-do application that allows users to add, remove, and view their task.
import 'dart:io';

void main(List<String> args) {
  Map<int, String> tasks = {};
  toDotasks(tasks);
}

void toDotasks(Map<int, String> tasks) {
  while (true) {
    stdout
        .write("Would you like to add, remove or view a task?(end to End) : ");
    String what = stdin.readLineSync()!;
    if (what == 'add') {
      add(tasks);
    } else if (what == 'remove') {
      remove(tasks);
    } else if (what == 'view') {
      view(tasks); 
    } else if (what == 'end') {
      break;
    } else {
      print("Error");
    }
    stdout.write("Would you like to continue? Y/N : ");
    String c = stdin.readLineSync()!;
    if (c.toUpperCase() == 'Y') {
    } else if (c.toUpperCase() == 'N') {
      break;
    } else {
      print("Error");
    }
  }
}

void add(Map<int, String> tasks) {
  // print('add');
  stdout.write("Number the task : ");
  int key = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the task : ");
  String task = stdin.readLineSync()!;
  tasks[key] = task;
  stdout.write("Would you like to continue adding? Y/N : ");
  String a = stdin.readLineSync()!;
  if (a.toUpperCase() == 'Y') {
    add(tasks);
  } else if (a.toUpperCase() == 'N') {
    toDotasks(tasks);
  } else {
    print("Error");
  }
}

void remove(Map<int, String> tasks) {
  // print('remove');
  stdout.write("Enter task number you want to remove : ");
  int key = int.parse(stdin.readLineSync()!);
  tasks.remove(key);
  stdout.write("Would you like to continue removing? Y/N : ");
  String a = stdin.readLineSync()!;
  if (a.toUpperCase() == 'Y') {
    remove(tasks);
    print("Remove $tasks");
  } else if (a.toUpperCase() == 'N') {
    toDotasks(tasks);
  } else {
    print("Error");
  }
}

void view(Map<int, String> tasks) {
  // print('view');
  // stdout.write("Enter task number to view : ");
  // int key = int.parse(stdin.readLineSync()!);
  // tasks.containsKey(key);
  print('Tasks : ');
  print(tasks);
  stdout.write("Would you like to continue viewing? Y/N : ");
  String a = stdin.readLineSync()!;
  if (a.toUpperCase() == 'Y') {
    view(tasks);
  } else if (a.toUpperCase() == 'N') {
    toDotasks(tasks);
  } else {
    print("Error");
  }
}
