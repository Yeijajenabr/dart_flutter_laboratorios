void main() {

  String department = 'Cundinamarca';
  String municipality = 'Chia';
  double plantedArea = 80.0;

  print('Initial area: $plantedArea ha');

  plantedArea = 82.5;

  print('Corrected area: $plantedArea ha');

  var crop = 'Potato';
  var cropCount = 3;

  print('Crop: $crop');
  print('Crop count: $cropCount');

  final startedAt = DateTime.now();
  const areaUnit = 'ha';

  print('Report date: $startedAt');
  print('Area unit: $areaUnit');

  // 5. Valor opcional (puede ser null)
  String? optionalNote;

  print('Department: $department');
  print('Municipality: $municipality');
  print('Note: $optionalNote');
}

/*
Comprobación (Respuestas teóricas)
1. Diferencia entre valor, variable y tipo:

Tipo: Es la categoría o naturaleza de la información (ej. texto String, número entero int).

Variable: Es el "contenedor" o nombre que le damos a un espacio en la memoria para guardar la información (ej. municipality).

Valor: Es el dato real y específico que está guardado dentro de ese contenedor (ej. 'Andes').

2. ¿Cuál elegirías (var, final o const) para cada caso?

Superficie que será corregida: var (o double). Como va a cambiar, no puede ser ni final ni constante.

Nombre de municipio recibido durante la ejecución: final. Se le asignará el valor una sola vez cuando el usuario lo escriba, pero no lo conocemos antes de que el programa arranque.

Etiqueta fija 'ha': const. Es un texto que nunca va a cambiar y lo conocemos desde que escribimos el código.  */
