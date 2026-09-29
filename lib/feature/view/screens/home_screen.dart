import 'package:contact_app/core/routes/app_riutes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        
        title:Text("AbdelRhman Contacts",style:
        TextStyle(
          fontSize: 30,
        
          color: Colors.white
        ),) ,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CardPerson(
          subtitle: "01146529415$index",
          title: "Mohamed$index",
        ),
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).pushNamed(AppRiutes.addtask);
        },
        child: const Text(
          "Add",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
        
        
      
    );
  }
}

class CardPerson extends StatelessWidget {
  const CardPerson({
    super.key,
    required this.subtitle,
    required this.title,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.cyan,
            fontSize: 14,
          ),
        ),
        trailing: const Icon(
          Icons.person,
          size: 30,
          color: Colors.blue,
        ),
      ),
    );
  }
}