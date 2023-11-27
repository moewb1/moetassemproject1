import 'package:flutter/material.dart';
import 'package:moetassemproject1/Company.dart';
import 'package:moetassemproject1/NextPage.dart';

class CompanyListPage extends StatelessWidget {
  final List<Company> companies;

  CompanyListPage({required this.companies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company List'),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0), // Add padding for more space around the cards
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Display two cards per row
          crossAxisSpacing: 16.0, // Horizontal spacing between cards
          mainAxisSpacing: 16.0, // Vertical spacing between cards
        ),
        itemCount: companies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0, // Add elevation for a slight shadow effect
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage(companyName: companies[index].name),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(12.0), // Add padding within the card
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      companies[index].figureUrl,
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Text(
                        companies[index].name,
                        style: TextStyle(fontSize: 20.0, color: Colors.transparent),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

