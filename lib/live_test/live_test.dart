class Media {
  void play() {
    print("Playing media...");
  }
}

class Song extends Media {
  final String artist;

  Song(this.artist);

  @override
  void play() {
    print("Playing song by $artist...");
  }
}

void main() {
  // Create an instance of Media
  Media media = Media();

  // Create an instance of Song with an artist name
  Song song = Song("The Beatles");

  // Call play() methods
  media.play();
  song.play();
}
