import 'package:flutter/material.dart';

class RecommendFoodCard extends StatefulWidget {
  const RecommendFoodCard({super.key});

  @override
  State<RecommendFoodCard> createState() => _RecommendFoodCardState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String price;

  const CardItem(
      {required this.urlImage, required this.title, required this.price});
}

class _RecommendFoodCardState extends State<RecommendFoodCard> {
  List<CardItem> items = [
    const CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1497800640957-3100979af57c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2338&q=80',
      title: 'Hot Tea Set',
      price: '149฿',
    ),
    const CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1521302080334-4bebac2763a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
      title: 'Hot Black Coffee',
      price: '79฿',
    ),
    const CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1515823064-d6e0c04616a7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2342&q=80',
      title: 'Hot Matcha Milk Tea',
      price: '59฿',
    ),
    const CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1526424382096-74a93e105682?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      title: 'Mixed Cold Lime Soda Set',
      price: '99฿',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('เครื่องดื่มแนะนำประจำวันนี้',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
        ),
        SizedBox(
          height: 256,
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (context, _) => const SizedBox(width: 12),
            itemBuilder: ((context, index) => buildCard(item: items[index])),
          ),
        ),
      ],
    );
  }

  Widget buildCard({required CardItem item}) => SizedBox(
      width: 200,
      child: Column(children: [
        Expanded(
            child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      item.urlImage,
                      fit: BoxFit.cover,
                    )))),
        const SizedBox(height: 4),
        Text(item.title, style: const TextStyle(fontSize: 15)),
        Text(item.price, style: const TextStyle(fontSize: 12)),
      ]));
}
