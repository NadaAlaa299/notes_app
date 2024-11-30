import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 204, 142),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Flutter tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build your career with nada alaa',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28,
                  )),
            ),
            Text('May21 , 2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 16))
          ],
        ),
      ),
    );
  }
}
