import 'package:flutter/material.dart';

class Biyogaz {
  final String name;
  final String image;
  final String description;

  Biyogaz({
    required this.name,
    required this.image,
    required this.description,
  });
}

class BiyogazPage extends StatelessWidget {
  BiyogazPage({super.key});

  final List<Biyogaz> products = [
    Biyogaz(
      name: 'Vidalı Pres Seperatör',
      image: 'assets/images/products/vidalipress.jpg',
      description:
          ' EYS Gübre Seperatörleri, hayvan gübresi gibi yapısında lif ihtiva eden çamur kıvamındaki malzemelerin mekanik olarak seperasyonu için, bir başka deyişle malzemeyi katı ve sıvı fazına ayırmak için tasarlanmıştır. EYS olarak en yaygın susuzlaştırma uygulamamız hayvan gübresi üzerine olup dünya genelinde binlerce EYS Gübre Seperatörü sistemi sorunsuz bir şekilde çalışmaktadır. EYS Gübre Seperatörleri en zorlu koşullarda bile en iyi sonuçları elde etmek için tasarlanmıştır. Her türlü çiftlik hayvan gübresi ve biyogaz atıkları (nem oranı düşük katı fraksiyon, askıda katı madde oranı düşük sıvı fraksiyon) EYS Gübre Seperatörlerinde yüksek verimle işlenir.\n'
          ' Gübre seperatöründen elde ettiğiniz hayvan gübresini, yine Eys Marka Gübre Kompost makineleri ile kompostlaştırıp gelir elde edebilir, kendi arazilerinizde kullanmak suretiyle işletme maliyetlerinizi düşürebilirsiniz.\n'
          ' Sürdürülebilir organik tarım için olmazsa olmaz organik gübre kullanımı ile ekolojik dengenin korunmasına katkıda bulunabilirsiniz.',
    ),
    Biyogaz(
      name: 'Dalgıç Karıştırıcı',
      image: 'assets/images/products/dalgic_karistirici.jpg',
      description:
          ' EYS Dalgıç Karıştırıcılar sağlam yapısı, ince düşünülmüş detayları ve yüksek kaliteli aksamları ile operasyondan beklenen azami karıştırma sonuçlarını elde etmenizi sağlar. Aerobik ve anaerobik uygulamalarda, asgari servis ihtiyacı ile görevini tam anlamıyla yerine getirir.\n'
          ' Sıvı gübre havuzlarında, biyogaz tesislerinde, ham gübre havuzlarında, arıtma tesislerinde ve endüstriyel tesislerde kullanılmaya uygundur. Biyogaz tesislerinde kullanım için opsiyonel olarak ex-proof modeller de mevcuttur.',
    ),
    Biyogaz(
      name: 'Dalgıç Pompa',
      image: 'assets/images/products/dalgic_pompa.jpg',
      description:
      ' Dalgıç gübre pompaları çiftlik içerisinde en zor işi üstlenen ekipmandır. EYS dalgıç pompalar bu sebeple en zor koşullara dayanıklı ve daima güveneceğiniz bir ürün olarak üretilmektedir. İster biyogaz uygulamaları sonrası elde edilen digestat olsun, ister sap samanla karışık ham gübre olsun, EYS ürün yelpazesinde size uygun bir ürün mutlaka bulunmaktadır.',
    ),
    Biyogaz(
      name: 'Hat Üstü Parçalayıcı',
      image: 'assets/images/products/hatustu_parcaliyici.jpg',
      description:
      ' EYS hat üstü parçalayıcılar malzeme içerisindeki yabancı cisimlerin ayrıştırılması ve lifli malzemelerin parçalanması için tasarlanmıştır. Gübre tesisleri, çiftlikler, biyogaz ve arıtma tesislerinde kesintisiz ve verimli bir operasyon, malzeme içindeki yabancı maddelerin parçalanmasına bağlıdır. EYS hat üstü parçalayıcılar bu is için biçilmiş kaftandır.',
    ),
    Biyogaz(
      name: 'Kompost Tamburu',
      image: 'assets/images/products/Kompost_Tamburu.jpg',
      description:
          ' EYS BC Serisi kompost tamburları, aerobik fermantasyon sürecini önemli ölçüde hızlandıran son teknoloji ürünü bir inovasyondur. Aerobik bakterinin çoğalması için gerekli ideal ortamı oluşturur ve organik içeriğin mineralize edilmesiyle kompostlaştırma sürecini başlatır. EYS Kompost Tamburunun görevi, doğada bu işi yapan bakterilerin doğal işlemini “HIZLI” bir şekilde gerçekleştirmesine yardımcı olmaktır.\n'
          ' Fermantasyon işlemi için, sisteme dışarıdan herhangi bir sıcaklık verilmemektedir. Ekzotermik aerobik fermantasyonun sonucu olarak, organik katının ısısı +70°C dereceye kadar çıkar ve böylece Avrupa Birliği hijyenizasyon şartlarına uygunluk sağlanmış olur. Sıcaklıklar, hijyenizasyonun kanıtı olarak kablosuz sıcaklık sistemi sayesinde sürekli gözlenip kayıt altına alınır.\n'
          ' BC Serisi Kompost Tamburunda bulunan özel dizayn HD Separatör (ağır-şart separatörü) ile organik atık optimum nem düzeyine kadar susuzlaştırılır. Separatörün ayrıştırdığı katı faz, separatörün ağız mekanizmasından çıktığı anda özel üretim polimerik tamburun içine düşer ve burada 24-72 saat boyunca tutulur. Bu periyot boyunca, sistemin bilgisayarlı kontrol ünitesi ile tamburun içindeki sıcaklık derecesi, nem ve oksijen seviyesi otomatik olarak kontrol edilir. Sistem parametrelerinin izlenmesi ve ayarlanması dokunmatik kontrol ünitesi ile veya internet üzerinden kendi akıllı telefonunuz aracılığıyla da kolayca gerçekleşir.'
      ,
    ),
    Biyogaz(
      name: 'Piston Pompa',
      image: 'assets/images/products/piston_pompa.jpg',
      description:
      ' EYS Piston Pompa, yoğun ve yüksek viskoziteye sahip malzemelerden içinde sap, saman ve hatta kum bulunan malzemelere kadar her malzeme ile sorunsuz çalışır. Düşük güç tüketimi ve güçlü yapısı sayesinde malzemeleri yüksek kotlara ve uzun mesafelere transfer etmek için idealdir.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Biyogaz Ürünleri',
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
  final Biyogaz product;

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
