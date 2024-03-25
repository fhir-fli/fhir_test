import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void resourceTest() {
  test('Patient', () {
    var pat1 = Patient(id: '12345', name: [
      HumanName(family: 'Faulkenberry'),
      HumanName(given: ['Jason', 'Grey'])
    ]);

    expect(pat1.name?[0].family, 'Faulkenberry');
    expect(pat1.name?[1].given?[1], 'Grey');
  });
}
