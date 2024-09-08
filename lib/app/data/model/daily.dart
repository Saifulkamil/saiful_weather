
class Daily {
  String? time;
  ValuesDaily? values;

  Daily({this.time, this.values});

  Daily.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    values =
        json['values'] != null ? new ValuesDaily.fromJson(json['values']) : null;
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

class ValuesDaily {
  num? cloudBaseAvg;
  num? cloudBaseMax;
  num? cloudBaseMin;
  num? cloudCeilingAvg;
  num? cloudCeilingMax;
  num? cloudCeilingMin;
  num? cloudCoverAvg;
  num? cloudCoverMax;
  num? cloudCoverMin;
  num? dewPointAvg;
  num? dewPointMax;
  num? dewPointMin;
  num? evapotranspirationAvg;
  num? evapotranspirationMax;
  num? evapotranspirationMin;
  num? evapotranspirationSum;
  num? freezingRainIntensityAvg;
  num? freezingRainIntensityMax;
  num? freezingRainIntensityMin;
  num? humidityAvg;
  num? humidityMax;
  num? humidityMin;
  num? iceAccumulationAvg;
  num? iceAccumulationLweAvg;
  num? iceAccumulationLweMax;
  num? iceAccumulationLweMin;
  num? iceAccumulationLweSum;
  num? iceAccumulationMax;
  num? iceAccumulationMin;
  num? iceAccumulationSum;
  String? moonriseTime;
  String? moonsetTime;
  num? precipitationProbabilityAvg;
  num? precipitationProbabilityMax;
  num? precipitationProbabilityMin;
  num? pressureSurfaceLevelAvg;
  num? pressureSurfaceLevelMax;
  num? pressureSurfaceLevelMin;
  num? rainAccumulationAvg;
  num? rainAccumulationLweAvg;
  num? rainAccumulationLweMax;
  num? rainAccumulationLweMin;
  num? rainAccumulationMax;
  num? rainAccumulationMin;
  num? rainAccumulationSum;
  num? rainIntensityAvg;
  num? rainIntensityMax;
  num? rainIntensityMin;
  num? sleetAccumulationAvg;
  num? sleetAccumulationLweAvg;
  num? sleetAccumulationLweMax;
  num? sleetAccumulationLweMin;
  num? sleetAccumulationLweSum;
  num? sleetAccumulationMax;
  num? sleetAccumulationMin;
  num? sleetIntensityAvg;
  num? sleetIntensityMax;
  num? sleetIntensityMin;
  num? snowAccumulationAvg;
  num? snowAccumulationLweAvg;
  num? snowAccumulationLweMax;
  num? snowAccumulationLweMin;
  num? snowAccumulationLweSum;
  num? snowAccumulationMax;
  num? snowAccumulationMin;
  num? snowAccumulationSum;
  num? snowDepthAvg;
  num? snowDepthMax;
  num? snowDepthMin;
  num? snowDepthSum;
  num? snowIntensityAvg;
  num? snowIntensityMax;
  num? snowIntensityMin;
  String? sunriseTime;
  String? sunsetTime;
  num? temperatureApparentAvg;
  num? temperatureApparentMax;
  num? temperatureApparentMin;
  num? temperatureAvg;
  num? temperatureMax;
  num? temperatureMin;
  num? uvHealthConcernAvg;
  num? uvHealthConcernMax;
  num? uvHealthConcernMin;
  num? uvIndexAvg;
  num? uvIndexMax;
  num? uvIndexMin;
  num? visibilityAvg;
  num? visibilityMax;
  num? visibilityMin;
  num? weatherCodeMax;
  num? weatherCodeMin;
  num? windDirectionAvg;
  num? windGustAvg;
  num? windGustMax;
  num? windGustMin;
  num? windSpeedAvg;
  num? windSpeedMax;
  num? windSpeedMin;

  ValuesDaily(
      {
        this.cloudBaseAvg,
      this.cloudBaseMax,
      this.cloudBaseMin,
      this.cloudCeilingAvg,
      this.cloudCeilingMax,
      this.cloudCeilingMin,
      this.cloudCoverAvg,
      this.cloudCoverMax,
      this.cloudCoverMin,
      this.dewPointAvg,
      this.dewPointMax,
      this.dewPointMin,
      this.evapotranspirationAvg,
      this.evapotranspirationMax,
      this.evapotranspirationMin,
      this.evapotranspirationSum,
      this.freezingRainIntensityAvg,
      this.freezingRainIntensityMax,
      this.freezingRainIntensityMin,
      this.humidityAvg,
      this.humidityMax,
      this.humidityMin,
      this.iceAccumulationAvg,
      this.iceAccumulationLweAvg,
      this.iceAccumulationLweMax,
      this.iceAccumulationLweMin,
      this.iceAccumulationLweSum,
      this.iceAccumulationMax,
      this.iceAccumulationMin,
      this.iceAccumulationSum,
      this.moonriseTime,
      this.moonsetTime,
      this.precipitationProbabilityAvg,
      this.precipitationProbabilityMax,
      this.precipitationProbabilityMin,
      this.pressureSurfaceLevelAvg,
      this.pressureSurfaceLevelMax,
      this.pressureSurfaceLevelMin,
      this.rainAccumulationAvg,
      this.rainAccumulationLweAvg,
      this.rainAccumulationLweMax,
      this.rainAccumulationLweMin,
      this.rainAccumulationMax,
      this.rainAccumulationMin,
      this.rainAccumulationSum,
      this.rainIntensityAvg,
      this.rainIntensityMax,
      this.rainIntensityMin,
      this.sleetAccumulationAvg,
      this.sleetAccumulationLweAvg,
      this.sleetAccumulationLweMax,
      this.sleetAccumulationLweMin,
      this.sleetAccumulationLweSum,
      this.sleetAccumulationMax,
      this.sleetAccumulationMin,
      this.sleetIntensityAvg,
      this.sleetIntensityMax,
      this.sleetIntensityMin,
      this.snowAccumulationAvg,
      this.snowAccumulationLweAvg,
      this.snowAccumulationLweMax,
      this.snowAccumulationLweMin,
      this.snowAccumulationLweSum,
      this.snowAccumulationMax,
      this.snowAccumulationMin,
      this.snowAccumulationSum,
      this.snowDepthAvg,
      this.snowDepthMax,
      this.snowDepthMin,
      this.snowDepthSum,
      this.snowIntensityAvg,
      this.snowIntensityMax,
      this.snowIntensityMin,
      this.sunriseTime,
      this.sunsetTime,
      this.temperatureApparentAvg,
      this.temperatureApparentMax,
      this.temperatureApparentMin,
      this.temperatureAvg,
      this.temperatureMax,
      this.temperatureMin,
      this.uvHealthConcernAvg,
      this.uvHealthConcernMax,
      this.uvHealthConcernMin,
      this.uvIndexAvg,
      this.uvIndexMax,
      this.uvIndexMin,
      this.visibilityAvg,
      this.visibilityMax,
      this.visibilityMin,
      this.weatherCodeMax,
      this.weatherCodeMin,
      this.windDirectionAvg,
      this.windGustAvg,
      this.windGustMax,
      this.windGustMin,
      this.windSpeedAvg,
      this.windSpeedMax,
      this.windSpeedMin
      });

  ValuesDaily.fromJson(Map<String, dynamic> json) {
    cloudBaseAvg = json['cloudBaseAvg'];
    cloudBaseMax = json['cloudBaseMax'];
    cloudBaseMin = json['cloudBaseMin'];
    cloudCeilingAvg = json['cloudCeilingAvg'];
    cloudCeilingMax = json['cloudCeilingMax'];
    cloudCeilingMin = json['cloudCeilingMin'];
    cloudCoverAvg = json['cloudCoverAvg'];
    cloudCoverMax = json['cloudCoverMax'];
    cloudCoverMin = json['cloudCoverMin'];
    dewPointAvg = json['dewPointAvg'];
    dewPointMax = json['dewPointMax'];
    dewPointMin = json['dewPointMin'];
    evapotranspirationAvg = json['evapotranspirationAvg'];
    evapotranspirationMax = json['evapotranspirationMax'];
    evapotranspirationMin = json['evapotranspirationMin'];
    evapotranspirationSum = json['evapotranspirationSum'];
    freezingRainIntensityAvg = json['freezingRainIntensityAvg'];
    freezingRainIntensityMax = json['freezingRainIntensityMax'];
    freezingRainIntensityMin = json['freezingRainIntensityMin'];
    humidityAvg = json['humidityAvg'];
    humidityMax = json['humidityMax'];
    humidityMin = json['humidityMin'];
    iceAccumulationAvg = json['iceAccumulationAvg'];
    iceAccumulationLweAvg = json['iceAccumulationLweAvg'];
    iceAccumulationLweMax = json['iceAccumulationLweMax'];
    iceAccumulationLweMin = json['iceAccumulationLweMin'];
    iceAccumulationLweSum = json['iceAccumulationLweSum'];
    iceAccumulationMax = json['iceAccumulationMax'];
    iceAccumulationMin = json['iceAccumulationMin'];
    iceAccumulationSum = json['iceAccumulationSum'];
    moonriseTime = json['moonriseTime'];
    moonsetTime = json['moonsetTime'];
    precipitationProbabilityAvg = json['precipitationProbabilityAvg'];
    precipitationProbabilityMax = json['precipitationProbabilityMax'];
    precipitationProbabilityMin = json['precipitationProbabilityMin'];
    pressureSurfaceLevelAvg = json['pressureSurfaceLevelAvg'];
    pressureSurfaceLevelMax = json['pressureSurfaceLevelMax'];
    pressureSurfaceLevelMin = json['pressureSurfaceLevelMin'];
    rainAccumulationAvg = json['rainAccumulationAvg'];
    rainAccumulationLweAvg = json['rainAccumulationLweAvg'];
    rainAccumulationLweMax = json['rainAccumulationLweMax'];
    rainAccumulationLweMin = json['rainAccumulationLweMin'];
    rainAccumulationMax = json['rainAccumulationMax'];
    rainAccumulationMin = json['rainAccumulationMin'];
    rainAccumulationSum = json['rainAccumulationSum'];
    rainIntensityAvg = json['rainIntensityAvg'];
    rainIntensityMax = json['rainIntensityMax'];
    rainIntensityMin = json['rainIntensityMin'];
    sleetAccumulationAvg = json['sleetAccumulationAvg'];
    sleetAccumulationLweAvg = json['sleetAccumulationLweAvg'];
    sleetAccumulationLweMax = json['sleetAccumulationLweMax'];
    sleetAccumulationLweMin = json['sleetAccumulationLweMin'];
    sleetAccumulationLweSum = json['sleetAccumulationLweSum'];
    sleetAccumulationMax = json['sleetAccumulationMax'];
    sleetAccumulationMin = json['sleetAccumulationMin'];
    sleetIntensityAvg = json['sleetIntensityAvg'];
    sleetIntensityMax = json['sleetIntensityMax'];
    sleetIntensityMin = json['sleetIntensityMin'];
    snowAccumulationAvg = json['snowAccumulationAvg'];
    snowAccumulationLweAvg = json['snowAccumulationLweAvg'];
    snowAccumulationLweMax = json['snowAccumulationLweMax'];
    snowAccumulationLweMin = json['snowAccumulationLweMin'];
    snowAccumulationLweSum = json['snowAccumulationLweSum'];
    snowAccumulationMax = json['snowAccumulationMax'];
    snowAccumulationMin = json['snowAccumulationMin'];
    snowAccumulationSum = json['snowAccumulationSum'];
    snowDepthAvg = json['snowDepthAvg'];
    snowDepthMax = json['snowDepthMax'];
    snowDepthMin = json['snowDepthMin'];
    snowDepthSum = json['snowDepthSum'];
    snowIntensityAvg = json['snowIntensityAvg'];
    snowIntensityMax = json['snowIntensityMax'];
    snowIntensityMin = json['snowIntensityMin'];
    sunriseTime = json['sunriseTime'];
    sunsetTime = json['sunsetTime'];
    temperatureApparentAvg = json['temperatureApparentAvg'];
    temperatureApparentMax = json['temperatureApparentMax'];
    temperatureApparentMin = json['temperatureApparentMin'];
    temperatureAvg = json['temperatureAvg'];
    temperatureMax = json['temperatureMax'];
    temperatureMin = json['temperatureMin'];
    uvHealthConcernAvg = json['uvHealthConcernAvg'];
    uvHealthConcernMax = json['uvHealthConcernMax'];
    uvHealthConcernMin = json['uvHealthConcernMin'];
    uvIndexAvg = json['uvIndexAvg'];
    uvIndexMax = json['uvIndexMax'];
    uvIndexMin = json['uvIndexMin'];
    visibilityAvg = json['visibilityAvg'];
    visibilityMax = json['visibilityMax'];
    visibilityMin = json['visibilityMin'];
    weatherCodeMax = json['weatherCodeMax'];
    weatherCodeMin = json['weatherCodeMin'];
    windDirectionAvg = json['windDirectionAvg'];
    windGustAvg = json['windGustAvg'];
    windGustMax = json['windGustMax'];
    windGustMin = json['windGustMin'];
    windSpeedAvg = json['windSpeedAvg'];
    windSpeedMax = json['windSpeedMax'];
    windSpeedMin = json['windSpeedMin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cloudBaseAvg'] = this.cloudBaseAvg;
    data['cloudBaseMax'] = this.cloudBaseMax;
    data['cloudBaseMin'] = this.cloudBaseMin;
    data['cloudCeilingAvg'] = this.cloudCeilingAvg;
    data['cloudCeilingMax'] = this.cloudCeilingMax;
    data['cloudCeilingMin'] = this.cloudCeilingMin;
    data['cloudCoverAvg'] = this.cloudCoverAvg;
    data['cloudCoverMax'] = this.cloudCoverMax;
    data['cloudCoverMin'] = this.cloudCoverMin;
    data['dewPointAvg'] = this.dewPointAvg;
    data['dewPointMax'] = this.dewPointMax;
    data['dewPointMin'] = this.dewPointMin;
    data['evapotranspirationAvg'] = this.evapotranspirationAvg;
    data['evapotranspirationMax'] = this.evapotranspirationMax;
    data['evapotranspirationMin'] = this.evapotranspirationMin;
    data['evapotranspirationSum'] = this.evapotranspirationSum;
    data['freezingRainIntensityAvg'] = this.freezingRainIntensityAvg;
    data['freezingRainIntensityMax'] = this.freezingRainIntensityMax;
    data['freezingRainIntensityMin'] = this.freezingRainIntensityMin;
    data['humidityAvg'] = this.humidityAvg;
    data['humidityMax'] = this.humidityMax;
    data['humidityMin'] = this.humidityMin;
    data['iceAccumulationAvg'] = this.iceAccumulationAvg;
    data['iceAccumulationLweAvg'] = this.iceAccumulationLweAvg;
    data['iceAccumulationLweMax'] = this.iceAccumulationLweMax;
    data['iceAccumulationLweMin'] = this.iceAccumulationLweMin;
    data['iceAccumulationLweSum'] = this.iceAccumulationLweSum;
    data['iceAccumulationMax'] = this.iceAccumulationMax;
    data['iceAccumulationMin'] = this.iceAccumulationMin;
    data['iceAccumulationSum'] = this.iceAccumulationSum;
    data['moonriseTime'] = this.moonriseTime;
    data['moonsetTime'] = this.moonsetTime;
    data['precipitationProbabilityAvg'] = this.precipitationProbabilityAvg;
    data['precipitationProbabilityMax'] = this.precipitationProbabilityMax;
    data['precipitationProbabilityMin'] = this.precipitationProbabilityMin;
    data['pressureSurfaceLevelAvg'] = this.pressureSurfaceLevelAvg;
    data['pressureSurfaceLevelMax'] = this.pressureSurfaceLevelMax;
    data['pressureSurfaceLevelMin'] = this.pressureSurfaceLevelMin;
    data['rainAccumulationAvg'] = this.rainAccumulationAvg;
    data['rainAccumulationLweAvg'] = this.rainAccumulationLweAvg;
    data['rainAccumulationLweMax'] = this.rainAccumulationLweMax;
    data['rainAccumulationLweMin'] = this.rainAccumulationLweMin;
    data['rainAccumulationMax'] = this.rainAccumulationMax;
    data['rainAccumulationMin'] = this.rainAccumulationMin;
    data['rainAccumulationSum'] = this.rainAccumulationSum;
    data['rainIntensityAvg'] = this.rainIntensityAvg;
    data['rainIntensityMax'] = this.rainIntensityMax;
    data['rainIntensityMin'] = this.rainIntensityMin;
    data['sleetAccumulationAvg'] = this.sleetAccumulationAvg;
    data['sleetAccumulationLweAvg'] = this.sleetAccumulationLweAvg;
    data['sleetAccumulationLweMax'] = this.sleetAccumulationLweMax;
    data['sleetAccumulationLweMin'] = this.sleetAccumulationLweMin;
    data['sleetAccumulationLweSum'] = this.sleetAccumulationLweSum;
    data['sleetAccumulationMax'] = this.sleetAccumulationMax;
    data['sleetAccumulationMin'] = this.sleetAccumulationMin;
    data['sleetIntensityAvg'] = this.sleetIntensityAvg;
    data['sleetIntensityMax'] = this.sleetIntensityMax;
    data['sleetIntensityMin'] = this.sleetIntensityMin;
    data['snowAccumulationAvg'] = this.snowAccumulationAvg;
    data['snowAccumulationLweAvg'] = this.snowAccumulationLweAvg;
    data['snowAccumulationLweMax'] = this.snowAccumulationLweMax;
    data['snowAccumulationLweMin'] = this.snowAccumulationLweMin;
    data['snowAccumulationLweSum'] = this.snowAccumulationLweSum;
    data['snowAccumulationMax'] = this.snowAccumulationMax;
    data['snowAccumulationMin'] = this.snowAccumulationMin;
    data['snowAccumulationSum'] = this.snowAccumulationSum;
    data['snowDepthAvg'] = this.snowDepthAvg;
    data['snowDepthMax'] = this.snowDepthMax;
    data['snowDepthMin'] = this.snowDepthMin;
    data['snowDepthSum'] = this.snowDepthSum;
    data['snowIntensityAvg'] = this.snowIntensityAvg;
    data['snowIntensityMax'] = this.snowIntensityMax;
    data['snowIntensityMin'] = this.snowIntensityMin;
    data['sunriseTime'] = this.sunriseTime;
    data['sunsetTime'] = this.sunsetTime;
    data['temperatureApparentAvg'] = this.temperatureApparentAvg;
    data['temperatureApparentMax'] = this.temperatureApparentMax;
    data['temperatureApparentMin'] = this.temperatureApparentMin;
    data['temperatureAvg'] = this.temperatureAvg;
    data['temperatureMax'] = this.temperatureMax;
    data['temperatureMin'] = this.temperatureMin;
    data['uvHealthConcernAvg'] = this.uvHealthConcernAvg;
    data['uvHealthConcernMax'] = this.uvHealthConcernMax;
    data['uvHealthConcernMin'] = this.uvHealthConcernMin;
    data['uvIndexAvg'] = this.uvIndexAvg;
    data['uvIndexMax'] = this.uvIndexMax;
    data['uvIndexMin'] = this.uvIndexMin;
    data['visibilityAvg'] = this.visibilityAvg;
    data['visibilityMax'] = this.visibilityMax;
    data['visibilityMin'] = this.visibilityMin;
    data['weatherCodeMax'] = this.weatherCodeMax;
    data['weatherCodeMin'] = this.weatherCodeMin;
    data['windDirectionAvg'] = this.windDirectionAvg;
    data['windGustAvg'] = this.windGustAvg;
    data['windGustMax'] = this.windGustMax;
    data['windGustMin'] = this.windGustMin;
    data['windSpeedAvg'] = this.windSpeedAvg;
    data['windSpeedMax'] = this.windSpeedMax;
    data['windSpeedMin'] = this.windSpeedMin;
    return data;
  }
}
