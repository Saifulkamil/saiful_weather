import 'daily.dart';
import 'hourly.dart';
import 'minutely.dart';

class Weather {
  Timelines? timelines;
  Location? location;

  Weather({this.timelines, this.location});

  Weather.fromJson(Map<String, dynamic> json) {
    timelines = json['timelines'] != null
        ? new Timelines.fromJson(json['timelines'])
        : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.timelines != null) {
      data['timelines'] = this.timelines!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    return data;
  }
}

class Timelines {
  // List<Minutely>? minutely;
  List<Hourly>? hourly;
  List<Daily>? daily;

  Timelines({
    // this.minutely,
    this.hourly, 
    this.daily});

  Timelines.fromJson(Map<String, dynamic> json) {
    // if (json['minutely'] != null) {
    //   minutely = <Minutely>[];
    //   json['minutely'].forEach((v) {
    //     minutely!.add(new Minutely.fromJson(v));
    //   });
    // }
    if (json['hourly'] != null) {
      hourly = <Hourly>[];
      json['hourly'].forEach((v) {
        hourly!.add(new Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = <Daily>[];
      json['daily'].forEach((v) {
        daily!.add(new Daily.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // if (this.minutely != null) {
    //   data['minutely'] = this.minutely!.map((v) => v.toJson()).toList();
    // }
    if (this.hourly != null) {
      data['hourly'] = this.hourly!.map((v) => v.toJson()).toList();
    }
    if (this.daily != null) {
      data['daily'] = this.daily!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class Location {
  double? lat;
  double? lon;

  Location({this.lat, this.lon});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    return data;
  }
}