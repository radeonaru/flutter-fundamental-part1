import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            
            return InkWell(
              onTap: () {
                // Navigasi ke halaman item dengan membawa data item
                Navigator.pushNamed(context,'/item',
                  arguments: item, // Mengirim item sebagai argument
                );
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(item.name),
                      ),
                      Expanded(
                        child: Text(
                          'Rp ${item.price}',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ], 
                  ),
                ),
              ),
            ); 
          },
        ), 
      ), 
    );
  }
}