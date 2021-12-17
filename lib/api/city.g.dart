// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      json['id'] as int,
      json['name'] as String,
      json['country'] as String,
      (json['itineraries'] as List<dynamic>)
          .map((e) => Itinerary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'itineraries': instance.itineraries,
    };

Itinerary _$ItineraryFromJson(Map<String, dynamic> json) => Itinerary(
      json['id'] as int,
      json['title'] as String,
      json['time'] as int,
      json['price'] as int,
      (json['activities'] as List<dynamic>).map((e) => e as String).toList(),
      (json['hashtags'] as List<dynamic>).map((e) => e as String).toList(),
      (json['comments'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      Author.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItineraryToJson(Itinerary instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time': instance.time,
      'price': instance.price,
      'activities': instance.activities,
      'hashtags': instance.hashtags,
      'comments': instance.comments,
      'creator': instance.creator,
    };

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      json['id'] as String,
      Author.fromJson(json['author'] as Map<String, dynamic>),
      json['comment'] as String,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'comment': instance.comment,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      json['id'] as String,
      json['username'] as String,
      json['profilePic'] as String?,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profilePic': instance.profilePic,
    };
