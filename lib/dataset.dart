class Weather {
  final int max;
  final int min;
  final int current;
  final String name;
  final String day;
  final int wind;
  final int humidity;
  final int chanceRain;
  final String image;
  final String time;
  final String location;

  Weather(
      {this.max=0,
      this.min=0,
      this.name='',
      this.day='',
      this.wind=0,
      this.humidity=0,
      this.chanceRain=0,
      this.image='',
      this.current=0,
      this.time='',
      this.location=''});
}

List<Weather> todayWeather = [
  Weather(current: 23, image: "assets/pluvieux.png", time: "10:00"),
  Weather(current: 21, image: "assets/solei.png", time: "11:00"),
  Weather(current: 22, image: "assets/pluvieux.png", time: "12:00"),
  Weather(current: 19, image: "assets/neige.png", time: "01:00")
];

Weather currentTemp = Weather(
    current: 21,
    image: "assets/soleil.png",
    name: "sunny",
    day: "Monday, 17 May",
    wind: 13,
    humidity: 24,
    chanceRain: 87,
   );

Weather tomorrowTemp = Weather(
  max: 20,
  min: 17,
  image: "assets/soleil.png",
  name: "Sunny",
  wind: 9,
  humidity: 31,
  chanceRain: 20,
);

List<Weather> sevenDay = [
  Weather(
      max: 20,
      min: 14,
      image: "assets/pluvieux.png",
      day: "Mon",
      name: "Rainy"),
  Weather(
      max: 22,
      min: 16,
      image: "assets/soleil.png",
      day: "Tue",
      name: "Sunny"),
  Weather(
      max: 19,
      min: 13,
      image: "assets/pluvieux.png",
      day: "Wed",
      name: "Rainy"),
  Weather(
      max: 18, min: 12, image: "assets/neige.png", day: "Thu", name: "Snow"),
  Weather(
      max: 23,
      min: 19,
      image: "assets/soleil.png",
      day: "Fri",
      name: "Sunny"),
  Weather(
      max: 25,
      min: 17,
      image: "assets/pluvieux.png",
      day: "Sat",
      name: "Rainy"),
  Weather(
      max: 21,
      min: 18,
      image: "assets/soleil.png",
      day: "Sun",
      name: "Thunder")
];