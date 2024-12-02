import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<NotesCubit>(context).notes ?? [];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: NoteItem(),
                  );
                }),
          );
        },
      ),
    );
  }
}
