// ignore_for_file: file_names

class UrlDomain {
  static const baseurl =
      "https://api.tomorrow.io/v4/weather/forecast?location=";
  static const apiKei = "&apikey=y7zcdFSB5Bi5teQfmIoZMnMXwwFqk2JR";
  // static const apiKei = "&apikey=YOrdEe828p12cvwWax8zaibRYeMPnXnV";
  String getApiweather(double? latitude, double? longitude) {
    return "$baseurl$latitude,$longitude$apiKei";
  }
// static const baseurl = "https://api.tomorrow.io/v4/weather/forecast?location=42.3478,-71.0466&apikey=YOrdEe828p12cvwWax8zaibRYeMPnXnV";
}
