import 'package:flutter/material.dart';

class Atiksuyuyonetimi {
  final String name;
  final String image;
  final String description;

  Atiksuyuyonetimi({
    required this.name,
    required this.image,
    required this.description,
  });
}

class AtiksuYonetimiPage extends StatelessWidget {
  AtiksuYonetimiPage({super.key});

  final List<Atiksuyuyonetimi> products = [
    Atiksuyuyonetimi(
      name: 'Dalgıç Karıştırıcı',
      image: 'assets/images/products/dalgic_karistirici.jpg',
      description: 'EYS Dalgıç Karıştırıcılar sağlam yapısı, ince düşünülmüş detayları ve yüksek kaliteli aksamları ile operasyondan beklenen azami karıştırma sonuçlarını elde etmenizi sağlar. Aerobik ve anaerobik uygulamalarda, asgari servis ihtiyacı ile görevini tam anlamıyla yerine getirir.\n'
      'Sıvı gübre havuzlarında, biyogaz tesislerinde, ham gübre havuzlarında, arıtma tesislerinde ve endüstriyel tesislerde kullanılmaya uygundur. Biyogaz tesislerinde kullanım için opsiyonel olarak ex-proof modeller de mevcuttur.',
    ),
    Atiksuyuyonetimi(
      name: 'Dalgıç Pompa',
      image: 'assets/images/products/dalgic_pompa.jpg',
      description: 'Dalgıç gübre pompaları çiftlik içerisinde en zor işi üstlenen ekipmandır. EYS dalgıç pompalar bu sebeple en zor koşullara dayanıklı ve daima güveneceğiniz bir ürün olarak üretilmektedir. İster biyogaz uygulamaları sonrası elde edilen digestat olsun, ister sap samanla karışık ham gübre olsun, EYS ürün yelpazesinde size uygun bir ürün mutlaka bulunmaktadır.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Atık Suyu Yönetimi Ürünleri',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final Atiksuyuyonetimi product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: product.image,
              child: Image.asset(
                product.image,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    product.description,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
