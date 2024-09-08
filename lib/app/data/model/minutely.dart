class Minutely {
  String? time;
  ValuesMinutely? values;

  Minutely({this.time, this.values});

  Minutely.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    values =
        json['values'] != null ? ValuesMinutely.fromJson(json['values']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['time'] = this.time;
    if (this.values != null) {
      data['values'] = this.values!.toJson();
    }
    return data;
  }
}

class ValuesMinutely {
  double? cloudBase;
  double? cloudCeiling;
  int? cloudCover;
  double? dewPoint;
  int? freezingRainIntensity;
  int? humidity;
  int? precipitationProbability;
  double? pressureSurfaceLevel;
  int? rainIntensity;
  int? sleetIntensity;
  int? snowIntensity;
  double? temperature;
  double? temperatureApparent;
  int? uvHealthConcern;
  int? uvIndex;
  double? visibility;
  int? weatherCode;
  double? windDirection;
  double? windGust;
  double? windSpeed;

  ValuesMinutely(
      {this.cloudBase,
      this.cloudCeiling,
      this.cloudCover,
      this.dewPoint,
      this.freezingRainIntensity,
      this.humidity,
      this.precipitationProbability,
      this.pressureSurfaceLevel,
      this.rainIntensity,
      this.sleetIntensity,
      this.snowIntensity,
      this.temperature,
      this.temperatureApparent,
      this.uvHealthConcern,
      this.uvIndex,
      this.visibility,
      this.weatherCode,
      this.windDirection,
      this.windGust,
      this.windSpeed});

  ValuesMinutely.fromJson(Map<String, dynamic> json) {
    cloudBase = json['cloudBase'];
    cloudCeiling = json['cloudCeiling'];
    cloudCover = json['cloudCover'];
    dewPoint = json['dewPoint'];
    freezingRainIntensity = json['freezingRainIntensity'];
    humidity = json['humidity'];
    precipitationProbability = json['precipitationProbability'];
    pressureSurfaceLevel = json['pressureSurfaceLevel'];
    rainIntensity = json['rainIntensity'];
    sleetIntensity = json['sleetIntensity'];
    snowIntensity = json['snowIntensity'];
    temperature = json['temperature'];
    temperatureApparent = json['temperatureApparent'];
    uvHealthConcern = json['uvHealthConcern'];
    uvIndex = json['uvIndex'];
    visibility = json['visibility'];
    weatherCode = json['weatherCode'];
    windDirection = json['windDirection'];
    windGust = json['windGust'];
    windSpeed = json['windSpeed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['cloudBase'] = this.cloudBase;
    data['cloudCeiling'] = this.cloudCeiling;
    data['cloudCover'] = this.cloudCover;
    data['dewPoint'] = this.dewPoint;
    data['freezingRainIntensity'] = this.freezingRainIntensity;
    data['humidity'] = this.humidity;
    data['precipitationProbability'] = this.precipitationProbability;
    data['pressureSurfaceLevel'] = this.pressureSurfaceLevel;
    data['rainIntensity'] = this.rainIntensity;
    data['sleetIntensity'] = this.sleetIntensity;
    data['snowIntensity'] = this.snowIntensity;
    data['temperature'] = this.temperature;
    data['temperatureApparent'] = this.temperatureApparent;
    data['uvHealthConcern'] = this.uvHealthConcern;
    data['uvIndex'] = this.uvIndex;
    data['visibility'] = this.visibility;
    data['weatherCode'] = this.weatherCode;
    data['windDirection'] = this.windDirection;
    data['windGust'] = this.windGust;
    data['windSpeed'] = this.windSpeed;
    return data;
  }
}
