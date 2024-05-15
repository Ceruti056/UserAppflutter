import 'package:appflutter/user.dart';
import 'package:appflutter/user_service.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late Future<List<User>> futureUsers;
  final UserService userService = UserService();

  final TextEditingController tituloController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController =
      TextEditingController(); // Added for email
  final TextEditingController pictureController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _refreshUserList();
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('User List')),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.list_alt_rounded),
              ),
              Tab(
                icon: Icon(Icons.person_add),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                children: [_buildUserList()],
              ),
            ),
            Center(
              child: Column(
                children: [_buildAddUserForm()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserList() {
    return Expanded(
      child: FutureBuilder<List<User>>(
        future: futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            }
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                User user = snapshot.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.picture!),
                  ),
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text(user.email), // Changed to display email
                  trailing: _buildEditAndDeleteButtons(user),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),

      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SearchAnchor(
      //       builder: (BuildContext context, SearchController controller) {
      //     return SearchBar(
      //       controller: controller,
      //       padding: const MaterialStatePropertyAll<EdgeInsets>(
      //           EdgeInsets.symmetric(horizontal: 16.0)),
      //       onTap: () {
      //         controller.openView();
      //       },
      //       onChanged: (_) {
      //         controller.openView();
      //       },
      //       leading: const Icon(Icons.search),
      //     );
      //   }, suggestionsBuilder:
      //           (BuildContext context, SearchController controller) {
      //     return List<ListTile>.generate(5, (int index) {
      //       final String item = 'item $index';
      //       return ListTile(
      //         title: Text(item),
      //         onTap: () {
      //           setState(() {
      //             controller.closeView(item);
      //           });
      //         },
      //       );
      //     });
      //   }),
      // ),

    );
  }

  void _clear() {
    firstnameController.text = "";
    lastnameController.text = "";
    emailController.text = "";
    tituloController.text = "";
    pictureController.text = "";
  }

  Widget _buildEditAndDeleteButtons(User user) {
    return Wrap(
      spacing: 12,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () => _showEditDialog(user),
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => _deleteUser(user.id!),
        ),
      ],
    );
  }

  void _showEditDialog(User user) {
    tituloController.text = user.title!;
    firstnameController.text = user.firstName;
    lastnameController.text = user.lastName;
    emailController.text =
        user.email; // Assuming email cannot be updated, disable this field
    pictureController.text = user.picture!;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Edit User"),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                  controller: tituloController,
                  decoration: InputDecoration(labelText: 'Title')),
              TextFormField(
                  controller: firstnameController,
                  decoration: InputDecoration(labelText: 'First Name')),
              TextFormField(
                  controller: lastnameController,
                  decoration: InputDecoration(labelText: 'Last Name')),
              TextFormField(
                  controller: pictureController,
                  decoration: InputDecoration(labelText: 'Picture URL')),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text("Update"),
            onPressed: () {
              _updateUser(user);
              _clear();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void _updateUser(User user) {
    // Inicializa um Map para armazenar apenas os campos permitidos para atualização
    Map<String, dynamic> dataToUpdate = {
      'firstName': firstnameController.text,
      'lastName': lastnameController.text,
      'picture': pictureController.text,
      // Não inclua 'email' pois é proibido atualizar
    };

    if (tituloController.text.isNotEmpty &&
        firstnameController.text.isNotEmpty &&
        lastnameController.text.isNotEmpty &&
        pictureController.text.isNotEmpty) {
      userService.updateUser(user.id!, dataToUpdate).then((updatedUser) {
        _showSnackbar('User updated successfully!');
        _refreshUserList();
      }).catchError((error) {
        _showSnackbar('Failed to update user: $error');
      });
    }
  }

  void _deleteUser(String id) {
    userService.deleteUser(id).then((_) {
      _showSnackbar('User deleted successfully!');
      _refreshUserList();
    }).catchError((error) {
      _showSnackbar('Failed to delete user.');
    });
  }

  Widget _buildAddUserForm() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            'assets/image/user.png',
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 20),
          TextFormField(
              controller: firstnameController,
              decoration: InputDecoration(labelText: 'First Name')),
          const SizedBox(height: 30),
          TextFormField(
              controller: lastnameController,
              decoration: InputDecoration(labelText: 'Last Name')),
          const SizedBox(height: 30),
          TextFormField(
              controller: emailController, // Added email input field
              decoration: InputDecoration(labelText: 'Email')),
          const SizedBox(height: 30),
          const Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
            onPressed: _addUser,
            child: const Text('Add User'),
          ),
        ],
      ),
    );
  }

  void _addUser() {
    if (firstnameController.text.isNotEmpty &&
        lastnameController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      userService
          .createUser(User(
        id: '', // ID é gerado pela API, não precisa enviar
        title: tituloController
            .text, // Incluído, assumindo que você ainda quer enviar isso
        firstName: firstnameController.text,
        lastName: lastnameController.text,
        email: emailController.text,
        picture: pictureController.text, // Incluído, assumindo que é necessário
      ))
          .then((newUser) {
        _showSnackbar('User added successfully!');
        _refreshUserList();
        _clear();
      }).catchError((error) {
        _showSnackbar('Failed to add user: $error');
      });
    } else {
      _showSnackbar('Please fill in all fields.');
    }
  }

  void _refreshUserList() {
    setState(() {
      futureUsers = userService.getUsers();
    });
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
