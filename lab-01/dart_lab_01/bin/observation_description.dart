import 'dart:io';

void main() {
  print('--- REGISTRO DESCRIPTIVO ---');

  // 1. Departamento
  stdout.write('Ingrese el departamento: ');
  String department = (stdin.readLineSync() ?? '').trim();

  // 2. Municipio
  stdout.write('Ingrese el municipio: ');
  String municipality = (stdin.readLineSync() ?? '').trim();

  // 3. Cultivo
  stdout.write('Ingrese el cultivo: ');
  String crop = (stdin.readLineSync() ?? '').trim();

  // 4. Año
  stdout.write('Ingrese el año de observación: ');
  String yearText = stdin.readLineSync() ?? '';
  int year = int.parse(yearText.trim());

  // 5. Área sembrada
  stdout.write('Ingrese el área sembrada (en hectáreas): ');
  String areaText = stdin.readLineSync() ?? '';
  double area = double.parse(areaText.trim());

  // Resumen usando interpolación y toUpperCase para resaltar el cultivo
  print('\n--- RESUMEN DE LA OBSERVACIÓN ---');
  print('Ubicación: $municipality, $department');
  print('Cultivo registrado: ${crop.toUpperCase()}');
  print('Año de reporte: $year');
  print('Área total sembrada: $area ha');
}

/* Comprobación (Respuestas teóricas)
1. Diferencia entre mostrar un dato con print y recibirlo con stdin.readLineSync():

print es una operación de salida (Output): envía información desde el código hacia la pantalla para que el usuario la vea.

stdin.readLineSync() es una operación de entrada (Input): pausa el programa, habilita el teclado y espera a que el usuario escriba información y presione Enter para llevarla hacia adentro del código.

2. ¿Por qué utilizas int.parse o double.parse antes de calcular?
Porque todo lo que el usuario escribe en la terminal entra al programa como Texto (String), incluso si teclea "2025". Como la computadora no puede hacer operaciones matemáticas (sumas, promedios) usando palabras o texto, usamos parse para traducir esa cadena de caracteres a un número real.

3. ¿Qué problema podría ocasionar una entrada numérica inválida?
Si el usuario escribe letras, símbolos o deja el espacio en blanco cuando el programa espera un número, la función parse entra en pánico al no encontrar dígitos y lanza una excepción (FormatException). Al no tener (aún) un mecanismo para manejar ese error, la aplicación se cierra inesperadamente. */