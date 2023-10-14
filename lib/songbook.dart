import 'package:flutter/material.dart';
import 'package:shalom/showdetails.dart';
import 'package:shalom/song.dart';

class SongBookScreen extends StatelessWidget {
  const SongBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
        title: const Text('Song Book'),
      ),
      body: ListView.separated(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Color.fromARGB(255, 128, 0, 128),
            ),
            title: Text(songs[index].name),
            subtitle: Text(songs[index].albumname),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowDetails(index: index)));
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 3,
          );
        },
      ),
    );
  }
}
