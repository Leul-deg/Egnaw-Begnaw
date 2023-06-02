import 'dart:convert';
// import 'dart:html' hide VoidCallback;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/organizer/organizer_update/organizer_update_bloc.dart';
import 'package:frontend/infrastructure/event/repositories/event_repository_imp.dart';
import 'package:frontend/infrastructure/organizer/data_sources/organizer_data_sources.dart';
import 'package:frontend/infrastructure/organizer/repositories/organizer_repository_imp.dart';
import 'package:image_picker/image_picker.dart';

class ProfileWidget extends StatefulWidget {
  final String imagePath;
  final bool isEdit;
  final VoidCallback onClicked;

  

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();

}

class _ProfileWidgetState extends State<ProfileWidget> {
  MemoryImage? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<String> _pickImageBase64() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile == null) return '';

    Uint8List bytes = await pickedFile.readAsBytes();
    String base64 = base64Encode(bytes);

    print("base64");
    // print(base64);
    print("base64 end here");

    setState(() {
      _imageFile = MemoryImage(bytes);
    });

    return base64;
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

  // final blocConsumer = BlocProvider.of<OrganizerUpdateBloc>(context).blocConsumerBuilder(context);


    return Center(
      child: Stack(
        children: [
          buildImage(_imageFile),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage(MemoryImage? image) {
    final finalImage = image ?? NetworkImage(widget.imagePath);

    return BlocProvider(
      create: (context) => OrganizerUpdateBloc(
        OrganizerRepositoryImp(organizerDataSource: OrganizerDataSource()),
      ),
      child: BlocBuilder<OrganizerUpdateBloc, OrganizerUpdateState>(
        builder: (context, state) {
          return ClipOval(
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: finalImage as ImageProvider,
                fit: BoxFit.cover,
                width: 128,
                height: 128,
                child: InkWell(onTap: widget.onClicked),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: IconButton(
            onPressed: () async {
              final image = await _pickImageBase64();

              context
                  .read<OrganizerUpdateBloc>()
                  .add(OrganizerUpdateEvent.profileImageChanged(image));
            },
            icon: Icon(widget.isEdit ? Icons.add_a_photo : Icons.edit),
            color: Color(0xffffffff),
            iconSize: 18,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
