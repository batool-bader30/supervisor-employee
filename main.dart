import 'model/employee.dart';
import 'model/supervisor.dart';
import 'system/controller.dart';

void main() {
  system s = system();
  Employee e1 = Employee(id: 1, name: "ahmad", domain: "HR", checkin_hour: 8);
  Employee e2 = Employee(id: 2, name: "batool", domain: "it", checkin_hour: 8);
  Employee e3 = Employee(id: 3, name: "sara", domain: "HR", checkin_hour: 8);

  Supervisor s1 = Supervisor(id: 1, name: "farah", domain: "HR");
  Supervisor s2 = Supervisor(id: 2, name: "maher", domain: "it");
  s.addemployee(e1);
  s.addemployee(e2);
  s.addemployee(e3);
  s.addsupervisor(s1);
  s.addsupervisor(s2);
  s.addemplo_to_supervisor(1, 1);
  s.addemplo_to_supervisor(1, 3);
  s.checkin(1);
  s1.desplayinfo();
  s1.removeemplo(3);
  s1.desplayinfo();
}
