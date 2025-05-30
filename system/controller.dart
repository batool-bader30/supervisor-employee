import '../model/employee.dart';
import '../model/supervisor.dart';

class system {
  List<Employee> employees = [];
  List<Supervisor> supervisors = [];

  void addemployee(Employee e) {
    employees.add(e);
    print("Employee added successfully.");
  }

  void addsupervisor(Supervisor s) {
    supervisors.add(s);
    print("supervisor added successfully.");
  }

  void addemplo_to_supervisor(int superid, int emploid) {
    final Employee = employees.firstWhere((s) => s.id == emploid);
    final Supervisor = supervisors.firstWhere((s) => s.id == superid);
    if (Employee.domain == Supervisor.domain) {
      Supervisor.employees.add(Employee);
      print(
        "The employee with id=${emploid} has been added to the supervisor with id =${superid}.",
      );
    } else {
      print(
        "You cannot assign the employee, they must be in the same domain as the supervisor.",
      );
    }
  }

  void checkin(int emploid) {
    final Employee = employees.firstWhere((s) => s.id == emploid);
    print(
      "the employee with id= ${emploid} checkin at ${Employee.checkin_hour} am",
    );
  }
}
