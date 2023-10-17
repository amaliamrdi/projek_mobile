import 'package:flutter/material.dart';
import 'CategoryPage.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItem('Pantai', 'assets/images/vacations.png'),
          CategoryItem('Air Terjun', 'assets/images/waterfall.png'),
          CategoryItem('Pulau', 'assets/images/island.png'),
          CategoryItem('Perbukitan', 'assets/images/landscape.png'),
          CategoryItem('Sungai', 'assets/images/river.png'),
          CategoryItem('Lebih', 'assets/images/app.png'),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String category;
  final String icon;

  CategoryItem(this.category, this.icon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryPage(category),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        width: 100,
        decoration: BoxDecoration(
          color: Color(0xFF20B4BC),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              icon,
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              category,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
