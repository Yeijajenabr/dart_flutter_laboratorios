import 'dart:io';

// --- FUNCIONES REUTILIZABLES ---

// Calcula el área total de 3 cultivos
double calcularAreaTotal(double area1, double area2, double area3) {
  return area1 + area2 + area3;
}

// Calcula el promedio de hectáreas por cultivo
double calcularPromedio(double totalArea, int cantidadCultivos) {
  return totalArea / cantidadCultivos;
}

// Calcula el porcentaje de participación de un cultivo respecto al total
double calcularPorcentaje(double areaCultivo, double areaTotal) {
  return (areaCultivo / areaTotal) * 100;
}

void main() {
  print('====================================');
  print('   REGISTRO AGRÍCOLA - AGRODIVERSA  ');
  print('====================================\n');

  // --- 1. ENTRADA DE DATOS GENERALES ---
  stdout.write('Ingrese el departamento: ');
  String departamento = (stdin.readLineSync() ?? '').trim();

  stdout.write('Ingrese el municipio: ');
  String municipio = (stdin.readLineSync() ?? '').trim();

  stdout.write('Ingrese el año de observación: ');
  int anio = int.parse((stdin.readLineSync() ?? '').trim());

  // --- 2. ENTRADA DE DATOS DE LOS CULTIVOS ---
  print('\n--- Cultivo 1 ---');
  stdout.write('Nombre del cultivo 1: ');
  String nombreCultivo1 = (stdin.readLineSync() ?? '').trim();
  stdout.write('Superficie sembrada (ha): ');
  double areaCultivo1 = double.parse((stdin.readLineSync() ?? '').trim());

  print('\n--- Cultivo 2 ---');
  stdout.write('Nombre del cultivo 2: ');
  String nombreCultivo2 = (stdin.readLineSync() ?? '').trim();
  stdout.write('Superficie sembrada (ha): ');
  double areaCultivo2 = double.parse((stdin.readLineSync() ?? '').trim());

  print('\n--- Cultivo 3 ---');
  stdout.write('Nombre del cultivo 3: ');
  String nombreCultivo3 = (stdin.readLineSync() ?? '').trim();
  stdout.write('Superficie sembrada (ha): ');
  double areaCultivo3 = double.parse((stdin.readLineSync() ?? '').trim());

  // --- 3. PROCESAMIENTO (USO DE FUNCIONES) ---
  double areaTotal = calcularAreaTotal(areaCultivo1, areaCultivo2, areaCultivo3);
  double promedio = calcularPromedio(areaTotal, 3);
  
  double porcentaje1 = calcularPorcentaje(areaCultivo1, areaTotal);
  double porcentaje2 = calcularPorcentaje(areaCultivo2, areaTotal);
  double porcentaje3 = calcularPorcentaje(areaCultivo3, areaTotal);

  // --- 4. SALIDA DE RESULTADOS ---
  print('\n====================================');
  print('       INFORME DE LA OBSERVACIÓN    ');
  print('====================================');
  print('Ubicación: $municipio, $departamento');
  print('Año: $anio');
  print('------------------------------------');
  print('Área Total Registrada: ${areaTotal.toStringAsFixed(2)} ha');
  print('Promedio por Cultivo: ${promedio.toStringAsFixed(2)} ha');
  print('------------------------------------');
  print('Participación por cultivo:');
  print('- $nombreCultivo1: ${porcentaje1.toStringAsFixed(2)}%');
  print('- $nombreCultivo2: ${porcentaje2.toStringAsFixed(2)}%');
  print('- $nombreCultivo3: ${porcentaje3.toStringAsFixed(2)}%');
  print('====================================');
}