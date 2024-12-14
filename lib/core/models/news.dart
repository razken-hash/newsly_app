import 'dart:convert';

class News {
  final String title;
  final String image;
  final String contant;
  final bool isImportant;
  News({
    required this.title,
    required this.image,
    required this.contant,
    required this.isImportant,
  });

  News copyWith({
    String? title,
    String? image,
    String? contant,
    bool? isImportant,
  }) {
    return News(
      title: title ?? this.title,
      image: image ?? this.image,
      contant: contant ?? this.contant,
      isImportant: isImportant ?? this.isImportant,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'contant': contant,
      'isImportant': isImportant,
    };
  }

  factory News.fromMap(Map<String, dynamic> map) {
    return News(
      title: map['title'] as String,
      image: map['image'] as String,
      contant: map['contant'] as String,
      isImportant: map['isImportant'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory News.fromJson(String source) =>
      News.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'News(title: $title, image: $image, contant: $contant, isImportant: $isImportant)';
  }

  @override
  bool operator ==(covariant News other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.image == image &&
        other.contant == contant &&
        other.isImportant == isImportant;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        image.hashCode ^
        contant.hashCode ^
        isImportant.hashCode;
  }
}
