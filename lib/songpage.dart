import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SongPage(),
    );
  }
}

class SongPage extends StatefulWidget {
  @override
  _SongPage createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<SongPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;

  // List of songs (Added two more songs)
  final List<String> _songs = [
    'assets/audio/music.mp3',
    'assets/audio/bruno mars.mp3',
    'assets/audio/Humnava.mp3',
    'assets/audio/gulabo.mp3', // New Song
    'assets/audio/Nadaan Parindey.mp3', // New Song
  ];

  int _currentSongIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadSong(_currentSongIndex);
  }

  // Load the song at the given index
  void _loadSong(int index) {
    _audioPlayer.setAsset(_songs[index]).catchError((error) {
      // Handle error, e.g., show a toast or a dialog
      print("Error loading audio: $error");
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (isPlaying) {
        _audioPlayer.pause();
      } else {
        _audioPlayer.play();
      }
      isPlaying = !isPlaying;
    });
  }

  // Play the next song
  void _playNext() {
    setState(() {
      _currentSongIndex = (_currentSongIndex + 1) % _songs.length; // Loop back to the first song
      _loadSong(_currentSongIndex);
      _audioPlayer.play(); // Start playing the next song immediately
      isPlaying = true;
    });
  }

  // Play the previous song
  void _playPrevious() {
    setState(() {
      _currentSongIndex = (_currentSongIndex - 1 + _songs.length) % _songs.length; // Loop to the last song
      _loadSong(_currentSongIndex);
      _audioPlayer.play(); // Start playing the previous song immediately
      isPlaying = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image for album art
            Image.asset(
              'assets/humnava.png', // Replace with your image path
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Song Title
            Text(
              _songs[_currentSongIndex].split('/').last.replaceAll('.mp3', ''),
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Artist Name (Optional, can be dynamic too)
            const Text(
              'Artist Name',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 30),
            // Play/Pause, Previous, Next Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Previous Button
                IconButton(
                  onPressed: _playPrevious,
                  icon: const Icon(
                    Icons.skip_previous,
                    size: 64,
                    color: Colors.teal,
                  ),
                ),
                // Play/Pause Button
                IconButton(
                  onPressed: _togglePlayPause,
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    size: 64,
                    color: Colors.teal,
                  ),
                ),
                // Next Button
                IconButton(
                  onPressed: _playNext,
                  icon: const Icon(
                    Icons.skip_next,
                    size: 64,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Audio Progress Bar (Optional)
            StreamBuilder<Duration?>(
              stream: _audioPlayer.durationStream,
              builder: (context, snapshot) {
                final duration = snapshot.data ?? Duration.zero;
                return StreamBuilder<Duration>(
                  stream: _audioPlayer.positionStream,
                  builder: (context, snapshot) {
                    final position = snapshot.data ?? Duration.zero;
                    return Column(
                      children: [
                        Slider(
                          value: position.inSeconds.toDouble(),
                          max: duration.inSeconds.toDouble(),
                          onChanged: (value) {
                            _audioPlayer.seek(Duration(seconds: value.toInt()));
                          },
                        ),
                        Text(
                          '${position.inMinutes}:${(position.inSeconds % 60).toString().padLeft(2, '0')} / ${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}