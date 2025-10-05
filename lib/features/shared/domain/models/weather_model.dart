class WeatherModel {
  final String label;
  final int degree;
  final String icon;
  final String? city;

  WeatherModel({
    required this.label,
    required this.degree,
    required this.icon,
    this.city,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      label: json['label'] as String,
      degree: json['degree'] as int,
      icon: json['icon'] as String,
      city: json['city'] as String?,
    );
  }

  /// CopyWith method to create a new instance with updated values
  WeatherModel copyWith({
    String? label,
    int? degree,
    String? icon,
    String? city,
  }) {
    return WeatherModel(
      label: label ?? this.label,
      degree: degree ?? this.degree,
      icon: icon ?? this.icon,
      city: city ?? this.city,
    );
  }
}
