import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_dstu2/fhir_dstu2.dart' as dstu2;
import 'package:fhir_r4/fhir_r4.dart' as r4;
import 'package:fhir_r5/fhir_r5.dart' as r5;
import 'package:fhir_r6/fhir_r6.dart' as r6;
import 'package:fhir_stu3/fhir_stu3.dart' as stu3;

part 'dstu2_validation.dart';
part 'r4_validation.dart';
part 'r5_validation.dart';
part 'r6_validation.dart';
part 'stu3_validation.dart';
part 'utils.dart';

Future<List<String>> dstu2JsonValidation() async {
  var tested = <String>[];
  tested.addAll(await dstu2Validation());
  print('Completed Dstu2 Json');
  return tested;
}

Future<List<String>> stu3JsonValidation() async {
  var tested = <String>[];
  tested.addAll(await stu3Validation());
  print('Completed Stu3 Json');
  return tested;
}

Future<List<String>> r4JsonValidation() async {
  var tested = <String>[];
  tested.addAll(await r4Validation());
  print('Completed R4 Json');
  return tested;
}

Future<List<String>> r5JsonValidation() async {
  var tested = <String>[];
  tested.addAll(await r5Validation());
  print('Completed R5 Json');
  return tested;
}

Future<List<String>> r6JsonValidation() async {
  var tested = <String>[];
  tested.addAll(await r6Validation());
  print('Completed R6 Json');
  return tested;
}

Future<List<String>> dstu2YamlValidation() async {
  var tested = <String>[];
  tested.addAll(await dstu2ValidationYaml());
  print('Completed Dstu2 Yaml');
  return tested;
}

Future<List<String>> stu3YamlValidation() async {
  var tested = <String>[];
  tested.addAll(await stu3ValidationYaml());
  print('Completed Stu3 Yaml');
  return tested;
}

Future<List<String>> r4YamlValidation() async {
  var tested = <String>[];
  tested.addAll(await r4ValidationYaml());
  print('Completed R4 Yaml');
  return tested;
}

Future<List<String>> r5YamlValidation() async {
  var tested = <String>[];
  tested.addAll(await r5ValidationYaml());
  print('Completed R5 Yaml');
  return tested;
}

Future<List<String>> r6YamlValidation() async {
  var tested = <String>[];
  tested.addAll(await r6ValidationYaml());
  print('Completed R6 Yaml');
  return tested;
}
