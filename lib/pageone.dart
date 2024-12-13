import 'package:flutter/material.dart';
import 'package:hustleapp/pagefive.dart';
import 'package:hustleapp/pagetwo.dart';
import 'package:hustleapp/allpage.dart';
import 'package:audioplayers/audioplayers.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int _selectedIndex = 0;
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  Duration _currentPosition = Duration.zero;
  Duration _totalDuration = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() {
        _totalDuration = d;
      });
    });

    _audioPlayer.onPositionChanged.listen((Duration p) {
      setState(() {
        _currentPosition = p;
      });
    });

    _audioPlayer.onPlayerStateChanged.listen((PlayerState state) {});
  }

  void _toggleAudio() async {
    try {
      if (_isPlaying) {
        await _audioPlayer.pause();
      } else {
        await _audioPlayer.setSource(AssetSource('hustleapp/assets/assets/audio/gulabo.mp3'));
        await _audioPlayer.resume();
      }
      setState(() {
        _isPlaying = !_isPlaying;
      });
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  void _seekAudio(double value) {
    final position = Duration(seconds: value.toInt());
    _audioPlayer.seek(position);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/humnava.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Text(
                    '${_currentPosition.inMinutes}:${(_currentPosition.inSeconds % 60).toString().padLeft(2, '0')} / ${_totalDuration.inMinutes}:${(_totalDuration.inSeconds % 60).toString().padLeft(2, '0')}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Slider(
                    value: _currentPosition.inSeconds.toDouble(),
                    min: 0.0,
                    max: _totalDuration.inSeconds.toDouble(),
                    onChanged: _seekAudio,
                    activeColor: Colors.purple[400],
                    inactiveColor: Colors.white.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.thumb_up,
                    color: _selectedIndex == 0 ? Colors.purple[400] : Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllPage()),
                    );
                  },
                ),
                Text(
                  'Like',
                  style: TextStyle(
                    color: _selectedIndex == 0 ? Colors.purple[400] : Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.skip_previous,
                    color: _selectedIndex == 1 ? Colors.purple[400] : Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageOne()),
                    );
                  },
                ),
                Text(
                  'Previous',
                  style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.purple[400] : Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                    color: _selectedIndex == 2 ? Colors.purple[400] : Colors.white,
                  ),
                  onPressed: _toggleAudio,
                ),
                Text(
                  'Play',
                  style: TextStyle(
                    color: _selectedIndex == 2 ? Colors.purple[400] : Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.skip_next,
                    color: _selectedIndex == 3 ? Colors.purple[400] : Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageTwo()),
                    );
                  },
                ),
                Text(
                  'Next',
                  style: TextStyle(
                    color: _selectedIndex == 3 ? Colors.purple[400] : Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.download,
                    color: _selectedIndex == 4 ? Colors.purple[400] : Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllPage()),
                    );
                  },
                ),
                Text(
                  'Download',
                  style: TextStyle(
                    color: _selectedIndex == 4 ? Colors.purple[400] : Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
