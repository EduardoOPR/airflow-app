class AirModel {
  final String? id;
  final String? name;
  final int? minTemp;
  final int? maxTemp;
  final int? temp;
  final bool isActive;

  AirModel({
    required this.id,
    required this.name,
    required this.minTemp,
    required this.maxTemp,
    required this.temp,
    required this.isActive,
  });

  static AirModel parse(Map<String, dynamic> air) => AirModel(
        id: air['id'],
        name: air['name'],
        minTemp: air['minTemp'],
        maxTemp: air['maxTemp'],
        temp: air['temp'],
        isActive: air['isActive'],
      );
}
