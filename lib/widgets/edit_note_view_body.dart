import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            hint: 'Title',
            maxLines: 1,
          ),
          SizedBox(
            height: 18,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
    ;
  }
}
