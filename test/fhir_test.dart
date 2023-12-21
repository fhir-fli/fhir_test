import 'date_time_test.dart';
import 'primitive_test.dart';
import 'resource_test.dart';
import 'roundtrip_test.dart';

Future<void> main() async {
  primitiveTest();
  resourceTest();
  dateTimeTest();
  await roundtripTestJson();
  await roundtripTestYaml();
  // await roundtripTestXml();
}
