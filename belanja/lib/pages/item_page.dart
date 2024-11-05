import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item item = GoRouterState.of(context).extra as Item;

return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(item.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: item.name, // Tag yang sama dengan di HomePage
              child: Image.network(
                item.imageUrl,
                height: 400,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '${item.name}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Price: ${item.price}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Stock: ${item.stock}',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange[600]),
                SizedBox(width: 4),
                Text(
                  '${item.rating}',
                  style: TextStyle(fontSize: 20, color: Colors.orange[600]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}