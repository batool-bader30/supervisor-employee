import 'employee.dart';

class Supervisor {
  String name;
  String domain;
  int id;
  List<Employee> employees = [];

  Supervisor({required this.id, required this.name, required this.domain});

  void show_employees() {
    print("employee:");
    for (Employee i in employees) {
      print(i.name);
    }
  }

  void desplayinfo() {
    print("-" * 20);
    print("Supervisor info:");
    print("name: $name");
    print("id: $id");
    print("domain: $domain");
    show_employees();
    print("-" * 20);
  }

  void removeemplo(int id) {
    employees.removeWhere((e) => e.id == id);
    print("the employee with id= $id has been removed");
  }
}
