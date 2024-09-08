
class Hourly {
  String? time;
  ValuesHourly? values;

  Hourly({this.time, this.values});

  Hourly.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    values =
        json['values'] != null ? new ValuesHourly.fromJson(json['values']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    if (this.values != null) {
      data['values'] = this.values!.toJson();
    }
    return data;
  }
}

class ValuesHourly {
  num? cloudBase;
  num? cloudCeiling;
  num? cloudCover;
  num? dewPoint;
  num? evapotranspiration;
  num? freezingRainIntensity;
  num? humidity;
  num? iceAccumulation;
  num? iceAccumulationLwe;
  num? precipitationProbability;
  num? pressureSurfaceLevel;
  num? rainAccumulation;
  num? rainAccumulationLwe;
  num? rainIntensity;
  num? sleetAccumulation;
  num? sleetAccumulationLwe;
  num? sleetIntensity;
  num? snowAccumulation;
  num? snowAccumulationLwe;
  num? snowDepth;
  num? snowIntensity;
  num? temperature;
  num? temperatureApparent;
  num? uvHealthConcern;
  num? uvIndex;
  num? visibility;
  num? weatherCode;
  num? windDirection;
  num? windGust;
  num? windSpeed;

  ValuesHourly(
      {this.cloudBase,
      this.cloudCeiling,
      this.cloudCover,
      this.dewPoint,
      this.evapotranspiration,
      this.freezingRainIntensity,
      this.humidity,
      this.iceAccumulation,
      this.iceAccumulationLwe,
      this.precipitationProbability,
      this.pressureSurfaceLevel,
      this.rainAccumulation,
      this.rainAccumulationLwe,
      this.rainIntensity,
      this.sleetAccumulation,
      this.sleetAccumulationLwe,
      this.sleetIntensity,
      this.snowAccumulation,
      this.snowAccumulationLwe,
      this.snowDepth,
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

  ValuesHourly.fromJson(Map<String, dynamic> json) {
    cloudBase = json['cloudBase'];
    cloudCeiling = json['cloudCeiling'];
    cloudCover = json['cloudCover'];
    dewPoint = json['dewPoint'];
    evapotranspiration = json['evapotranspiration'];
    freezingRainIntensity = json['freezingRainIntensity'];
    humidity = json['humidity'];
    iceAccumulation = json['iceAccumulation'];
    iceAccumulationLwe = json['iceAccumulationLwe'];
    precipitationProbability = json['precipitationProbability'];
    pressureSurfaceLevel = json['pressureSurfaceLevel'];
    rainAccumulation = json['rainAccumulation'];
    rainAccumulationLwe = json['rainAccumulationLwe'];
    rainIntensity = json['rainIntensity'];
    sleetAccumulation = json['sleetAccumulation'];
    sleetAccumulationLwe = json['sleetAccumulationLwe'];
    sleetIntensity = json['sleetIntensity'];
    snowAccumulation = json['snowAccumulation'];
    snowAccumulationLwe = json['snowAccumulationLwe'];
    snowDepth = json['snowDepth'];
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cloudBase'] = this.cloudBase;
    data['cloudCeiling'] = this.cloudCeiling;
    data['cloudCover'] = this.cloudCover;
    data['dewPoint'] = this.dewPoint;
    data['evapotranspiration'] = this.evapotranspiration;
    data['freezingRainIntensity'] = this.freezingRainIntensity;
    data['humidity'] = this.humidity;
    data['iceAccumulation'] = this.iceAccumulation;
    data['iceAccumulationLwe'] = this.iceAccumulationLwe;
    data['precipitationProbability'] = this.precipitationProbability;
    data['pressureSurfaceLevel'] = this.pressureSurfaceLevel;
    data['rainAccumulation'] = this.rainAccumulation;
    data['rainAccumulationLwe'] = this.rainAccumulationLwe;
    data['rainIntensity'] = this.rainIntensity;
    data['sleetAccumulation'] = this.sleetAccumulation;
    data['sleetAccumulationLwe'] = this.sleetAccumulationLwe;
    data['sleetIntensity'] = this.sleetIntensity;
    data['snowAccumulation'] = this.snowAccumulation;
    data['snowAccumulationLwe'] = this.snowAccumulationLwe;
    data['snowDepth'] = this.snowDepth;
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