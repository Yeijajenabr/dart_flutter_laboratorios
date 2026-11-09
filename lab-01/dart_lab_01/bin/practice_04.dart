import 'dart:io';

void main() {
  stdout.write('Enter observation year: ');
  String yearText = stdin.readLineSync() ?? '';
  int observationYear = int.parse(yearText);

  stdout.write('Enter planted area (ha): ');
  String areaText = stdin.readLineSync() ?? '';
  double plantedArea = double.parse(areaText);

  print('Year: $observationYear');
  print('Area: $plantedArea ha');
}