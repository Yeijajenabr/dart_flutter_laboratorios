// 1. Función que devuelve una suma de tres áreas
double calculateTotalArea(double first, double second, double third) {
  return first + second + third;
}

// 2. Función que devuelve un promedio
double calculateAverageArea(double total, int count) {
  return total / count;
}

// 3. Función que solo muestra una ficha (void)
void showObservation(String municipality, String crop, double area) {
  print('Lugar: $municipality | Cultivo: $crop | Área: $area ha');
}

void main() {
  print('--- PRUEBAS DE SHOW OBSERVATION ---');
  showObservation('Andes', 'Café', 125.5);
  showObservation('Jericó', 'Plátano', 40.0);

  print('\n--- PRUEBAS DE TOTAL AREA ---');
  double total1 = calculateTotalArea(10.0, 20.0, 30.0);
  double total2 = calculateTotalArea(15.5, 5.5, 9.0);
  print('Total del grupo 1: $total1');
  print('Total del grupo 2: $total2');

  print('\n--- PRUEBAS DE AVERAGE AREA ---');
  double avg1 = calculateAverageArea(total1, 3);
  double avg2 = calculateAverageArea(100.0, 2); // Usando un dato directo
  print('Promedio del grupo 1: $avg1');
  print('Promedio de 100 entre 2: $avg2');
}