class Video {
  final String id;
  final String title;
  final String thumb;
  final String channel;

  Video(
      {required this.id,
      required this.title,
      required this.thumb,
      required this.channel});

  factory Video.fromjson(Map<String, dynamic> json) {
    return Video(
        id: json["id"]["videoId"],
        title: json["snippet"]["Title"],
        thumb: json["snippet"]["thumbnails"]["high"]["url"],
        channel: json["snippet"]["channelTitle"]);
  }
}
