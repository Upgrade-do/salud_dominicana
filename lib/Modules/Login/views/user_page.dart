import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:salud_dominicana/Entities/user/user.dart';
import 'package:salud_dominicana/Modules/Custom_Widgets/random/birthday_widget.dart';
import 'package:salud_dominicana/Modules/Custom_Widgets/random/button_widget.dart';
import 'package:salud_dominicana/Modules/Custom_Widgets/random/pets_buttons_widget.dart';
import 'package:salud_dominicana/Modules/Custom_Widgets/random/switch_widget.dart';
import 'package:salud_dominicana/Utils/Storange/user_preferences.dart';
import 'package:uuid/uuid.dart';

class UserPage extends StatefulWidget {
  final String idUser;

  const UserPage({
    Key key,
    this.idUser,
  }) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  User user;

  @override
  void initState() {
    super.initState();

    final id = Uuid().v4();
    print('Id: $id');

    user = widget.idUser == null
        ? User(id: id)
        : User(id: id); //UserPreferences.getUser(widget.idUser);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              buildUsers(),
              if (widget.idUser == null)
                Positioned(
                  left: 16,
                  top: 24,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.arrow_back, size: 32),
                  ),
                ),
              if (widget.idUser != null)
                Positioned(
                  right: 16,
                  top: 24,
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.logout, size: 32),
                  ),
                ),
            ],
          ),
        ),
      );

  Widget buildUsers() => ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildImage(),
          const SizedBox(height: 32),
          buildName(),
          const SizedBox(height: 12),
          buildBirthday(),
          const SizedBox(height: 12),
          buildPets(),
          const SizedBox(height: 12),
          buildAllowNotifications(),
          buildAllowNewsletter(),
          const SizedBox(height: 32),
          buildButton(),
        ],
      );

  Widget buildImage() => GestureDetector(
        child: buildAvatar(),
        onTap: () async {
          final image =
              await ImagePicker().getImage(source: ImageSource.gallery);

          if (image == null) return;

          final directory = await getApplicationDocumentsDirectory();
          final id = '_${widget.idUser}_${Uuid().v4()}';
          final imageFile = File('${directory.path}/${id}_avatar.png');
          final newImage = await File(image.path).copy(imageFile.path);

          setState(() => user = user.copyWith(imagePath: newImage.path));
        },
      );

  Widget buildAvatar() {
    const double size = 64;

    if (user.imagePath.isNotEmpty) {
      return CircleAvatar(
        radius: size,
        backgroundColor: Theme.of(context).accentColor,
        child: ClipOval(
          child: Image.file(
            File(user.imagePath),
            width: size * 2,
            height: size * 2,
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      return CircleAvatar(
        radius: size,
        backgroundColor: Theme.of(context).unselectedWidgetColor,
        child: Icon(Icons.add, color: Colors.white, size: size),
      );
    }
  }

  Widget buildName() => buildTitle(
        title: 'Name',
        child: TextFormField(
          initialValue: user.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Your Name',
          ),
          onChanged: (name) => setState(() => user = user.copyWith(name: name)),
        ),
      );

  Widget buildBirthday() => BirthdayWidget(
        birthday: user.dateOfBirth,
        onChangedBirthday: (dateOfBirth) =>
            setState(() => user = user.copyWith(dateOfBirth: dateOfBirth)),
      );

  Widget buildPets() => buildTitle(
        title: 'Pets',
        child: PetsButtonsWidget(
          pets: user.pets,
          onSelectedPet: (pet) => setState(() {
            final pets = user.pets.contains(pet)
                ? (List.of(user.pets)..remove(pet))
                : (List.of(user.pets)..add(pet));

            setState(() => user = user.copyWith(pets: pets));
          }),
        ),
      );

  Widget buildAllowNotifications() => SwitchWidget(
        title: 'Allow Notifications',
        value: user.settings.allowNotifications,
        onChanged: (allowNotifications) {
          final settings = user.settings.copyWith(
            allowNotifications: allowNotifications,
          );

          setState(() => user = user.copyWith(settings: settings));
        },
      );

  Widget buildAllowNewsletter() => SwitchWidget(
        title: 'Allow Newsletter',
        value: user.settings.allowNewsletter,
        onChanged: (allowNewsletter) {
          final settings = user.settings.copyWith(
            allowNewsletter: allowNewsletter,
          );

          setState(() => user = user.copyWith(settings: settings));
        },
      );

  Widget buildButton() => ButtonWidget(
      text: 'Save',
      onClicked: () async {
        final isNewUser = widget.idUser == null;

        if (isNewUser) {
          await UserPreferences.addUsers(user);
          await UserPreferences.setUser(user);

          // Navigator.of(context).pushReplacement(MaterialPageRoute(
          //   builder: (context) => UserPage(idUser: user.id),
          // ));
        } else {
          await UserPreferences.setUser(user);
        }
      });

  Widget buildTitle({
    @required String title,
    @required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          child,
        ],
      );
}
