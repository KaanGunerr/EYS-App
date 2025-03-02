import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hakkımızda',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Arka plan görseli
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/about-us-2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Yarı saydam siyah katman
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          // İçerik
          SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100), // AppBar için boşluk
                const Text(
                  'EYS Makina',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Dünya\'da değişen coğrafyalarda, değişken şartlara uygun proje bazlı çözümler sunuyoruz.\n\n'
                  'Pompalardan karıştırıcılara, sıyırıcılardan seperatörlere, organik atık kompostlaştırmadan atık su ve yeşil atık yönetimine hayal edilebilecek tüm çözümleri, geniş ürün ve model yelpazesinde sunuyoruz. AR-GE çalışmaları ile her geçen gün yeni tasarımsal ürünler sunarak dünyada ve Türkiye\'de standartları belirliyoruz.\n\n'
                  'Gübre yanlış kullanıldığında gerçek bir baş ağrısı olabilir. Doğru yönlendirme ve doğru tekniklerle işletmeye ekonomik girdi sağlayacak değerli bir ürün haline gelebilir. İşletmenin kapasitesi hangi büyüklükte olursa olsun EYS\'nin bir çözümü muhakkak vardır.\n\n'
                  'Sürdürülebilir bir çiftlik operasyonu için, atığın işlenmesinde ve araziye uygulanmasına kadar EYS\'nin tecrübesine ve çözümlerine güvenebilirsiniz. Gübre daha önce hiç bu kadar heyecan verici olmamıştı!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 30),
                // Misyon & Vizyon bölümü
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Misyonumuz',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Faaliyet gösterdiğimiz "Gübre Yönetimi,  Kompost Çözümleri, Yeşil Atık , Atık Su Yönetimi ve  Biyogaz" uygulamalarında edindiğimiz tecrübelerimizi, paydaşlarımıza aktararak sorunlarına kalıcı çözümler bulurken aynı zamanda hem çevreye, hem de ülke ekonomisine değer katan kaliteli ürünler üretip hizmet sunmaktır.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Vizyonumuz',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sunduğumuz inovatif çözümler ile tüm dünyada tercih edilen lider markası olmaktır.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
