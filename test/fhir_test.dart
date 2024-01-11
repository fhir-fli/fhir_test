import 'fhir_date_test.dart';
import 'fhir_date_time_test.dart';
import 'fhir_instant_test.dart';
import 'fhir_time_test.dart';
import 'primitive_test.dart';
import 'resource_test.dart';
import 'roundtrip_test.dart';

Future<void> main() async {
  // primitiveTest();
  // resourceTest();
  await roundtripTestJson();
  // resourceTest();
  // await roundtripTestJson();
  // await roundtripTestYaml();
  // await roundtripTestXml();
}
