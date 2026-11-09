import 'dart:io';

// --- FUNCIONES REUTILIZABLES ---

// 1. costo total del alojamiento
double calculateTotalAccommodation(double costPerNight, int nights) {
  return costPerNight * nights;
}

// 2. costo total de alimentación de todo el grupo
double calculateTotalFood(double dailyFoodPerPerson, int days, int travelers) {
  return dailyFoodPerPerson * days * travelers;
}

// 3. costo total de la excursión sumando los tres rubros
double calculateTotalBudget(double transport, double accommodation, double food) {
  return transport + accommodation + food;
}

// 4. costo por persona
double calculateCostPerPerson(double totalBudget, int travelers) {
  return totalBudget / travelers;
}

// 5. porcentaje del presupuesto total que se va en transporte
double calculateTransportShare(double transportCost, double totalBudget) {
  return (transportCost / totalBudget) * 100;
}

// 6. Función para imprimir el encabezado (opcional pero lo pedía la guía)
void showReportHeader(String destination, int travelers, int days, int nights) {
  print('\n========================================');
  print('          EXCURSION BUDGET REPORT       ');
  print('========================================');
  print('Destination: $destination');
  print('Travelers: $travelers');
  print('Duration: $days days, $nights nights');
  print('----------------------------------------');
}

void main() {
  print('--- EXCURSION CALCULATOR ---\n');

  // --- 1. ENTRADA DE DATOS ---
  stdout.write('Destination: ');
  String destination = (stdin.readLineSync() ?? '').trim();

  stdout.write('Number of travelers: ');
  int travelers = int.parse((stdin.readLineSync() ?? '').trim());

  stdout.write('Days of travel: ');
  int days = int.parse((stdin.readLineSync() ?? '').trim());

  stdout.write('Nights of accommodation: ');
  int nights = int.parse((stdin.readLineSync() ?? '').trim());

  stdout.write('Total transport cost for the group: \$');
  double transportCost = double.parse((stdin.readLineSync() ?? '').trim());

  stdout.write('Accommodation cost per night (for the whole group): \$');
  double accommodationPerNight = double.parse((stdin.readLineSync() ?? '').trim());

  stdout.write('Daily food cost per person: \$');
  double foodPerPerson = double.parse((stdin.readLineSync() ?? '').trim());

  // --- 2. PROCESAMIENTO MATEMÁTICO ---
  double totalAccommodation = calculateTotalAccommodation(accommodationPerNight, nights);
  double totalFood = calculateTotalFood(foodPerPerson, days, travelers);
  
  double totalBudget = calculateTotalBudget(transportCost, totalAccommodation, totalFood);
  double costPerPerson = calculateCostPerPerson(totalBudget, travelers);
  double transportShare = calculateTransportShare(transportCost, totalBudget);

  // --- 3. PRESENTACIÓN DEL INFORME ---
  showReportHeader(destination, travelers, days, nights);
  
  print('Cost breakdown:');
  print('- Transport: \$${transportCost.toStringAsFixed(2)}');
  print('- Accommodation: \$${totalAccommodation.toStringAsFixed(2)}');
  print('- Food: \$${totalFood.toStringAsFixed(2)}');
  print('----------------------------------------');
  print('TOTAL EXCURSION BUDGET: \$${totalBudget.toStringAsFixed(2)}');
  print('Cost per traveler: \$${costPerPerson.toStringAsFixed(2)}');
  print('Transport share of budget: ${transportShare.toStringAsFixed(2)}%');
  print('========================================');
}