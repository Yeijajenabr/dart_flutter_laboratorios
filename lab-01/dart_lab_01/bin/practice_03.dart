void main() {
  int a = 10;
  int b = 3;

  print('Addition: ${a + b}');
  print('Subtraction: ${a - b}');
  print('Multiplication: ${a * b}');
  print('Division: ${a / b}');
  print('Integer division: ${a ~/ b}');
  print('Remainder: ${a % b}');

  double firstArea = 20.0;
  double secondArea = 30.0;

  // Corrección: agregamos paréntesis
  double averageAreaa = (firstArea + secondArea) / 2; 

  print(averageAreaa); 


  // Reto calculando áreas de tres cultivos 
  double area1 = 120.0;
  double area2 = 80.0;
  double area3 = 50.0;

  // 2. Cálculos iniciales
  double totalArea = area1 + area2 + area3;
  double averageArea = totalArea / 3;
  double shareArea1 = (area1 / totalArea) * 100;

  print('--- RESULTADOS INICIALES ---');
  print('Total registrado: ${totalArea.toStringAsFixed(2)} hectáreas');
  print('Promedio por cultivo: ${averageArea.toStringAsFixed(2)} hectáreas');
  print('Participación del primer cultivo: ${shareArea1.toStringAsFixed(2)}%\n');

  // 3. Modificamos una superficie 
  area2 = 100.0; // Cambiamos de 80.0 a 100.0

  // 4. Volvemos a ejecutar las fórmulas para actualizar los resultados
  totalArea = area1 + area2 + area3;
  averageArea = totalArea / 3;
  shareArea1 = (area1 / totalArea) * 100;

  print('--- RESULTADOS ACTUALIZADOS ---');
  print('Nuevo total registrado: ${totalArea.toStringAsFixed(2)} hectáreas');
  print('Nuevo promedio por cultivo: ${averageArea.toStringAsFixed(2)} hectáreas');
  print('Nueva participación del primer cultivo: ${shareArea1.toStringAsFixed(2)}%');


}
