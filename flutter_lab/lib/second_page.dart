import 'package:flutter/material.dart';
import 'package:flutter_lab/widget/custom_card.dart';
import 'package:flutter_lab/third_page.dart'; // استوردي صفحة ثالثة

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الكتب')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.7,
          children: [
            CustomCard(
              title: 'صالون غريب',
              author: 'يحيى صفوت',
              price: 29.99,
              imageUrl: 'images/BOOK1.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(
                      title: 'صالون غريب',
                      imageUrl: 'images/BOOK1.jpg',
                      description: 'كتاب رائع يتحدث عن مواضيع شيقة.',
                    ),
                  ),
                );
              },
            ),
            CustomCard(
              title: 'فاتتني صلاة',
              author: 'اسلام جمال',
              price: 39.99,
              imageUrl: 'images/BOOK2.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(
                      title: 'فاتتني صلاة',
                      imageUrl: 'images/BOOK2.jpg',
                      description: 'كتاب يحفز على الاهتمام بالصلاة.',
                    ),
                  ),
                );
              },
            ),
            CustomCard(
              title: 'حمامة بكماء',
              author: 'هديل اليوسف',
              price: 49.99,
              imageUrl: 'images/BOOK3.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(
                      title: 'حمامة بكماء',
                      imageUrl: 'images/BOOK3.png',
                      description: 'رواية أدبية ممتعة وعميقة.',
                    ),
                  ),
                );
              },
            ),
            CustomCard(
              title: 'فن اللامبالاة',
              author: 'مارك مانسون',
              price: 50.99,
              imageUrl: 'images/book4.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(
                      title: 'فن اللامبالاة',
                      imageUrl: 'images/book4.jpg',
                      description: 'دروس نفسية مهمة عن التعامل مع الحياة.',
                    ),
                  ),
                );
              },
            ),
            CustomCard(
              title: 'الاب الغني والاب الفقير',
              author: 'روبرت كيوساكي',
              price: 30.99,
              imageUrl: 'images/book5.jpeg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(
                      title: 'الاب الغني والاب الفقير',
                      imageUrl: 'images/book5.jpeg',
                      description: 'أهم دروس في المال والاستثمار.',
                    ),
                  ),
                );
              },
            ),
            CustomCard(
              title: 'أغنى رجل في بابل',
              author: 'جورج صامويل كلاسون',
              price: 32.99,
              imageUrl: 'images/book6.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(
                      title: 'أغنى رجل في بابل',
                      imageUrl: 'images/book6.jpg',
                      description: 'أسرار بناء الثروة بطريقة مبسطة.',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
