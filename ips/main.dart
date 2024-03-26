import 'bundle.dart';
import 'ips_parser.dart';

void main() {
  final parser = IpsParser(bundle);
  parser.printPatient();
  parser.printAllergies();
}
