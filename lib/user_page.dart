import 'package:appflutter/user.dart';
import 'package:appflutter/user_service.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late final TabController _tabController;
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Sample'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:<Widget>[
          Center(
            child: Column(
              children: [_buildUserList(),],
            ),
          ),
         Center(
            child: Column(
              children: [_buildAddUserForm()],
            ),
          ),
        ],
      ),
                floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        tooltip: 'Add User',
        child: const Icon(Icons.add),
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
    );
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
        title: Text("Edit User"),
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
            child: Text("Update"),
            onPressed: () {
              _updateUser(user);
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
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          TextFormField(
              controller: firstnameController,
              decoration: InputDecoration(labelText: 'First Name')),
          TextFormField(
              controller: lastnameController,
              decoration: InputDecoration(labelText: 'Last Name')),
          TextFormField(
              controller: emailController, // Added email input field
              decoration: InputDecoration(labelText: 'Email')),
          ElevatedButton(
            onPressed: _addUser,
            child: Text('Add User'),
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
