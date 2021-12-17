import 'package:first_app/api/cities.dart';
import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';
part 'city.g.dart';

getCity(int id) {
  get(Uri.parse(citiesEndpoint + "/" + id.toString()));
}

@JsonSerializable()
class City {
  final int id;
  final String name;
  final String country;
  final List<Itinerary> itineraries;

  City(this.id, this.name, this.country, this.itineraries);

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Itinerary {
  final int id;
  final String title;
  final int time;
  final int price;
  final List<String> activities;
  final List<String> hashtags;
  final List<Comment> comments;
  final Author creator;

  Itinerary(this.id, this.title, this.time, this.price, this.activities,
      this.hashtags, this.comments, this.creator);

  factory Itinerary.fromJson(Map<String, dynamic> json) =>
      _$ItineraryFromJson(json);
}

@JsonSerializable()
class Comment {
  final String id;
  final Author author;
  final String comment;

  Comment(this.id, this.author, this.comment);

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@JsonSerializable()
class Author {
  final String id;
  final String username;
  final String? profilePic;

  Author(this.id, this.username, this.profilePic);

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
