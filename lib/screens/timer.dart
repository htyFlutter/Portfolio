import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_textdata.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  async.Timer? _timer;
  int _count = 15 * 60;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    if (_count <= 0) {
      _count = 15 * 60;
    }

    _timer = async.Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _count--;
        if (_count <= 0) {
          timer.cancel();
        }
      });
    });
  }

  String _getTimer() {
    if (_count >= 60) {
      return "残り${_count ~/ 60}分";
    } else {
      return "残り$_count秒";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Icon(Icons.timer)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  SizedBox(
                    height: 110,
                    width: 110,
                    child: CircularProgressIndicator(
                      value: _count / (15 * 60),
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  Center(
                    child: Text(_getTimer(), style: AppTextdata.titleFonts),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 90, right: 70),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 25,
                  child: GestureDetector(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                    onTap: () {
                      _timer?.cancel();
                    },
                  ),
                ),
                const SizedBox(width: 50),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {
                      _startTimer();
                    },
                    icon: Icon(
                      Icons.play_arrow,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(width: 50),

                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {
                      _timer?.cancel();
                      setState(() {
                        _count = 15 * 60;
                      });
                    },
                    icon: Icon(
                      Icons.refresh,
                      size: 30,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
