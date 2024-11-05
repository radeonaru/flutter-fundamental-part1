import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 35000,
      imageUrl:
          'https://th.bing.com/th/id/OIP.Rjp3ywSRuOWFtjUcuubXigHaHa?rs=1&pid=ImgDetMain',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl:
          'https://images.tokopedia.net/img/cache/700/product-1/2018/1/5/6893524/6893524_92e781e3-6682-44f0-9cd1-842ff5678b93_1000_1486.png',
      stock: 15,
      rating: 4.0,
    ),
    Item(
      name: 'Black Pepper',
      price: 30000,
      imageUrl:
          'https://down-id.img.susercontent.com/file/28da320418bb452db39f3fb1ff01aeb3',
      stock: 24,
      rating: 4.7,
    ),
    Item(
      name: 'MSG',
      price: 1500,
      imageUrl:
          'https://longdan.co.uk/cdn/shop/files/1405046_1024x.png?v=1726826907',
      stock: 7,
      rating: 4.8,
    ),
    Item(
      name: 'White Pepper',
      price: 29000,
      imageUrl:
          'https://th.bing.com/th/id/OIP.Lf0tqFpJDkvDVnFp-YSi0QHaHa?rs=1&pid=ImgDetMain',
      stock: 13,
      rating: 4.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
            body: Column(
        children: [
          Expanded(child: ProductGrid(items: items)),
          Footer(),
        ],
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  final List<Item> items;
  ProductGrid({required this.items});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 380,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ProductCard(item: item);
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final Item item;
  ProductCard({required this.item});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/item', extra: item);
      },
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Hero(
              tag: item.name,
              child: Image.network(
                item.imageUrl,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Price: ${item.price}',
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            Text(
              'Stock: ${item.stock}',
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange[600]),
                SizedBox(width: 4),
                Text(
                  '${item.rating}',
                  style: TextStyle(fontSize: 14, color: Colors.orange[600]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 236, 221, 239),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Text(
          'Muhammad Bagus Indrawan | 2241720217',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}