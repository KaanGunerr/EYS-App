import 'package:flutter/material.dart';

class GubreProduct {
  final String name;
  final String image;
  final String description;

  GubreProduct({
    required this.name,
    required this.image,
    required this.description,
  });
}

class GubrePage extends StatefulWidget {
  GubrePage({super.key});

  @override
  State<GubrePage> createState() => _GubrePageState();
}

class _GubrePageState extends State<GubrePage> {
  final TextEditingController _searchController = TextEditingController();
  List<GubreProduct> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = products; // Başlangıçta tüm ürünleri göster
  }

  void _filterProducts(String query) {
    setState(() {
      filteredProducts = products.where((product) {
        return product.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  final List<GubreProduct> products = [
    GubreProduct(
      name: 'Gübre Sıyırıcı',
      image: 'assets/images/products/gubresiyirici.jpg',
      description:
          ' Hayvan barınaklarındaki gübrenin sık sık temizlenmesi, hem hayvan sağlığını hem de barınak ortamını iyileştirir. EYS gübre sıyırıcılarda kullanılan teknoloji ve yenilikler sayesinde sıyırıcı yolu temizliği ekonomik, verimli ve iş gücü gerektirmeden yapılabilmektedir. Sıyırıcı arabalarının özel tasarımı sayesinde, arabalar geri giderken gübreyi taşımaz.\n'
          ' EYS gübre sıyırıcıları hidrolik, zincirli, çelik halatlı ve kanal tipi olmak üzere dört farklı modele sahiptir.\n'
          ' Zincirli sıyırıcılar tek tahrik üniteli sisteme sahip olup sadece çift yollu ahırlarda çalışmaya uygundur. Genellikle orta uzunluktaki ahırlarda tercih edilirler. Hidrolik sıyırıcılar tahrikini elektrik motorlu bir hidrolik üniteden alır. Hem tek hem de çift yollu ahırlara uygundur. Genellikle 80 metre altındaki kısa ahırlarda tercih edilirler. Halatlı sıyırıcılar ise tahrikini çift tahrik ünitesinden alır. Halatlı sıyırıcılar da hem tek yollu hem de çift yollu ahırlarda çalışmaya uygun olup 200 metreye kadar uzunluklarda sorunsuzca çalışmaktadır. Kanal tip sıyırıcılar dökülüş kanalında çalışmak üzere tasarlanmış olup halatlı sıyırıcı ile aynı çalışma prensibine ve tahrik ünitelerine sahiptir. Halatlı sıyırıcıda olduğu gibi 200 metre uzunluğa kadar sorunsuz çalışabilir.',
    ),
    GubreProduct(
      name: 'Dalgıç Karıştırıcı',
      image: 'assets/images/products/dalgic_karistirici.jpg',
      description:
          ' EYS Dalgıç Karıştırıcılar sağlam yapısı, ince düşünülmüş detayları ve yüksek kaliteli aksamları ile operasyondan beklenen azami karıştırma sonuçlarını elde etmenizi sağlar. Aerobik ve anaerobik uygulamalarda, asgari servis ihtiyacı ile görevini tam anlamıyla yerine getirir.\n'
          ' Sıvı gübre havuzlarında, biyogaz tesislerinde, ham gübre havuzlarında, arıtma tesislerinde ve endüstriyel tesislerde kullanılmaya uygundur. Biyogaz tesislerinde kullanım için opsiyonel olarak ex-proof modeller de mevcuttur.',
    ),
    GubreProduct(
      name: 'Dalgıç Pompa',
      image: 'assets/images/products/dalgic_pompa.jpg',
      description:
          ' Dalgıç gübre pompaları çiftlik içerisinde en zor işi üstlenen ekipmandır. EYS dalgıç pompalar bu sebeple en zor koşullara dayanıklı ve daima güveneceğiniz bir ürün olarak üretilmektedir. İster biyogaz uygulamaları sonrası elde edilen digestat olsun, ister sap samanla karışık ham gübre olsun, EYS ürün yelpazesinde size uygun bir ürün mutlaka bulunmaktadır.',
    ),
    GubreProduct(
      name: 'Vidalı Pres Seperatör',
      image: 'assets/images/products/vidalipress.jpg',
      description:
          ' EYS Gübre Seperatörleri, hayvan gübresi gibi yapısında lif ihtiva eden çamur kıvamındaki malzemelerin mekanik olarak seperasyonu için, bir başka deyişle malzemeyi katı ve sıvı fazına ayırmak için tasarlanmıştır. EYS olarak en yaygın susuzlaştırma uygulamamız hayvan gübresi üzerine olup dünya genelinde binlerce EYS Gübre Seperatörü sistemi sorunsuz bir şekilde çalışmaktadır. EYS Gübre Seperatörleri en zorlu koşullarda bile en iyi sonuçları elde etmek için tasarlanmıştır. Her türlü çiftlik hayvan gübresi ve biyogaz atıkları (nem oranı düşük katı fraksiyon, askıda katı madde oranı düşük sıvı fraksiyon) EYS Gübre Seperatörlerinde yüksek verimle işlenir.\n'
          ' Gübre seperatöründen elde ettiğiniz hayvan gübresini, yine Eys Marka Gübre Kompost makineleri ile kompostlaştırıp gelir elde edebilir, kendi arazilerinizde kullanmak suretiyle işletme maliyetlerinizi düşürebilirsiniz.\n'
          ' Sürdürülebilir organik tarım için olmazsa olmaz organik gübre kullanımı ile ekolojik dengenin korunmasına katkıda bulunabilirsiniz.',
    ),
    GubreProduct(
      name: 'Katı Gübre Römorku',
      image: 'assets/images/products/katigubreromorku.jpg',
      description:
          ' EYS KGR serisi Katı Gübre Dağıtma Römorku, sepere edilmiş veya kompostlaştırılmış gübrenizi en etkin şekilde kullanmanızı sağlar. Sepere edilen katı gübreyi arsanıza homojen bir şekilde dağıtarak, ekilebilen arazinizin bereketini yıllar geçtikçe arttırır.\n'
          ' KGR Serisi, en zorlu koşullar altında çalışmaya uygun olarak üretilmiştir. Büyük boy lastikleri, sağlam şasisi ve yenilikçi hareketli bant sistemi ile KGR arazinizdeki en büyük yardımcınız olacaktır.',
    ),
    GubreProduct(
      name: 'Sıvı Gübre Tankeri',
      image: 'assets/images/products/sivigubretanki.jpg',
      description:
          ' EYS SGT serisi Sıvı Gübre Tankerleri, ham gübrenin ve sepere edilmiş sıvı gübrenin araziye uygulanmasında vazgeçilmez yardımcınızdır. Sıvı gübre tankerini ihtiyacınıza göre taşıma, dağıtma, veya sulama gibi alanlarda kullanabilirsiniz.\n'
          ' Zorlu arazi koşullarına uyum sağlar ve sıvı veya ham gübrenin arazi uygulamaları için yapılabilecek en faydalı yatırımlardan biridir. 5 dakikadan kısa bir sürede tankın tamamını kolaylıkla doldurup boşaltabilirsiniz. Sıvı gübre, tankın arkasındaki kaşık tipi dağıtıcı yardımıyla 12 – 16 metre çapında bir yarım daireyi tarayacak şekilde serpilebilir.\n'
          ' Opsiyonel olarak sunulan püskürtme nozülü, gübreyi olumsuz hava koşulları sonucu girilemeyen arazilere püskürtmeye yarar. Maksimum basınçta sepere edilmiş sıvı gübreyi 70 m uzaklığa kadar homojen şekilde dağıtabilmektedir.',
    ),
    GubreProduct(
      name: 'Düşey Milli Pompa & Karıştırıcı',
      image: 'assets/images/products/milli_pompa.jpg',
      description:
          'Eğer dalgıç pompa ve karıştırıcılara alternatif arıyorsanız EYS düşey '
          'milli karıştırıcı ve pompalar tam size göre. Modüler yapısı sayesinde farklı havuz '
          'derinliklerine ve farklı ihtiyaçlara göre üretilebilir. Her ihtiyaca cevap verebilen '
          'EYS düşey milli grubunda pompa, karıştırıcı ve hem pompa hem karıştırıcı özelliğine '
          'sahip modeller yer alır. Düşey milli pompa grubu 7.5 kW\'den 37 kW\'ye kadar, düşey '
          'milli karıştırıcı grubu ise 5.5 kW\'den 37 kW\'ye kadar modellere sahiptir.\n\n'
          'Verti-Pump düşey milli pompa, ham gübre transferi veya EYS seperatör beslemesi için kullanılır.\n\n'
          'Verti-Mix düşey milli karıştırıcı, ham gübre havuzunuzu homojen olarak karıştırmada kullanılır.',
    ),
    GubreProduct(
      name: 'Kompost Tamburu',
      image: 'assets/images/products/Kompost_Tamburu.jpg',
      description:
          ' EYS BC Serisi kompost tamburları, aerobik fermantasyon sürecini önemli ölçüde hızlandıran son teknoloji ürünü bir inovasyondur. Aerobik bakterinin çoğalması için gerekli ideal ortamı oluşturur ve organik içeriğin mineralize edilmesiyle kompostlaştırma sürecini başlatır. EYS Kompost Tamburunun görevi, doğada bu işi yapan bakterilerin doğal işlemini "HIZLI" bir şekilde gerçekleştirmesine yardımcı olmaktır.\n'
          ' Fermantasyon işlemi için, sisteme dışarıdan herhangi bir sıcaklık verilmemektedir. Ekzotermik aerobik fermantasyonun sonucu olarak, organik katının ısısı +70°C dereceye kadar çıkar ve böylece Avrupa Birliği hijyenizasyon şartlarına uygunluk sağlanmış olur. Sıcaklıklar, hijyenizasyonun kanıtı olarak kablosuz sıcaklık sistemi sayesinde sürekli gözlenip kayıt altına alınır.\n'
          ' BC Serisi Kompost Tamburunda bulunan özel dizayn HD Separatör (ağır-şart separatörü) ile organik atık optimum nem düzeyine kadar susuzlaştırılır. Separatörün ayrıştırdığı katı faz, separatörün ağız mekanizmasından çıktığı anda özel üretim polimerik tamburun içine düşer ve burada 24-72 saat boyunca tutulur. Bu periyot boyunca, sistemin bilgisayarlı kontrol ünitesi ile tamburun içindeki sıcaklık derecesi, nem ve oksijen seviyesi otomatik olarak kontrol edilir. Sistem parametrelerinin izlenmesi ve ayarlanması dokunmatik kontrol ünitesi ile veya internet üzerinden kendi akıllı telefonunuz aracılığıyla da kolayca gerçekleşir.',
    ),
    GubreProduct(
      name: 'Kompost Makinası',
      image: 'assets/images/products/Kompost_Makinası.jpg',
      description:
          'EYS GK3000 kompost makinası, sepere edilmiş organik atığı (örneğin: sepere '
          'edilmiş gübre) periyodik olarak karıştırarak parasal değere sahip kompost ürüne çevirmek '
          'üzere dizayn edilmiştir. Kompost makinası, namlu olarak tabir edilen organik yığınların '
          'havalandırılmasına ve homojen olarak oksijen ile daha fazla temas etmesine yardımcı olur. '
          'Aynı zamanda yığın içerisinde yoğunlaşan CO2 (Karbondioksit) gazını dağıtır.\n\n'
          'EYS GK3000 kompost makinası, traktör kuyruk mili tahrikiyle çalışır. Taşıma esnasında '
          'hidrolik sistem vasıtasıyla, taşıma tekerleği üzerinde dik konuma getirilir. Bu şekilde '
          'makina kolay taşınır ve yüksek manevra kabiliyeti sağlanır. GK3000\'ün çalışma hızı '
          'operatör tarafından ayarlanabilir.',
    ),
    GubreProduct(
      name: 'Kendi Yürür Kompost Makinesi',
      image: 'assets/images/products/kendi_yurur.jpg',
      description:
          ' EYS KYK serisi Kendi Yürür Kompost Makineleri yığın metodunu kullanan geniş ölçekli kompost işletmeleri için özel olarak geliştirilmiştir. Dizel motorlu yapısı yüksek performans sunarken minimum periyodik bakım ihtiyacıyla daha uzun süre çalışmaya olanak sağlar.\n'
          ' Dar alanlarda bile yüksek manevra kabiliyeti, panoramik kabin, olduğu yerde tam tur dönebilme, kullanım kolaylığı sağlayan joystick kontrollü yapısı sahip olduğu özelliklerden sadece birkaçıdır. Ayrıca, hidrolik tesisat donanımı kompostunuzun ihtiyacı ölçüsünde, ekstra güç sarf etmeden sulanmasına ve nem dengesinin korunmasına yardımcı olur.',
    ),
    GubreProduct(
      name: 'Mobil Eleme Ünitesi',
      image: 'assets/images/products/mobil_eleme_unitesi.jpg',
      description:
          ' EYS MTS serisi mobil eleme ünitesi, ve talebinize uygun boyutlarda ürün elde etmek istediğiniz her türlü eleme uygulamasında yanınızda!\n'
          ' Eşsiz tasarımı ve uzun elek ömrü sayesinde toprak, kompost, biyolojik atık ve daha birçok materyallerle rahatlıkla kullanılabilir.\n'
          ' Mobil eleme ünitesi, elenmek istenen malzemelerin boyutlarına göre seçilen eleklerin rahat takılıp çıkartılabilir yapıda olmasıyla en zorlu eleme operasyonlarında bile üstün performans sağlar.',
    ),
    GubreProduct(
      name: 'Paketleme Makinesi',
      image: 'assets/images/products/paket_makinesi.jpg',
      description:
          ' EYS paketleme makinesi, kurtulmuş kompostun paketlenmesi için tasarlanmıştır. İstenilen kapasiteye bağlı olarak tek kefeli veya çift kefeli ve manuel veya otomatik dikiş makineli olarak kullanılabilir.\n'
          ' Paketleme makinesine malzeme beslemesi konveyör bant ve besleme bunkeri ile yapılır. Besleme bunkerine yüklenen malzeme konveyörle paketleme makinesinin giriş haznesine aktarılır. Paketleme makinesinin dahili ön yükleme bandında ağırlık ölçen loadcell bulunur. Böylece istenilen paket tipine göre (25 kg, 50 kg vb.) paket dolumu ayarlanır.',
    ),
    GubreProduct(
      name: 'Piston Pompa',
      image: 'assets/images/products/piston_pompa.jpg',
      description:
          ' EYS Piston Pompa, yoğun ve yüksek viskoziteye sahip malzemelerden içinde sap, saman ve hatta kum bulunan malzemelere kadar her malzeme ile sorunsuz çalışır. Düşük güç tüketimi ve güçlü yapısı sayesinde malzemeleri yüksek kotlara ve uzun mesafelere transfer etmek için idealdir.',
    ),
    GubreProduct(
      name: 'Hat Üstü Parçalayıcı',
      image: 'assets/images/products/hatustu_parcaliyici.jpg',
      description:
          ' EYS hat üstü parçalayıcılar malzeme içerisindeki yabancı cisimlerin ayrıştırılması ve lifli malzemelerin parçalanması için tasarlanmıştır. Gübre tesisleri, çiftlikler, biyogaz ve arıtma tesislerinde kesintisiz ve verimli bir operasyon, malzeme içindeki yabancı maddelerin parçalanmasına bağlıdır. EYS hat üstü parçalayıcılar bu is için biçilmiş kaftandır.',
    ),
    GubreProduct(
      name: 'Mobil Seperatör',
      image: 'assets/images/products/mobil_seperator.jpg',
      description:
          ' EYS SEP2GO™ mobil seperatör, çiftliğinizdeki en büyük yardımcınız olmaya geliyor. Sep2GO™, gübre seperasyonu için gerekli tüm ekipmanları bünyesinde barındıran kompakt ve kapsamlı bir sistemdir. EYS Mobil Seperatör sayesinde seperasyon işlemini ister kendi çiftliğinizde isterseniz komşu çiftliklerde kolay bir şekilde yapabilirsiniz.\n'
          ' Özel tasarlanmış şasesi, ek yerleri ve forklift açıklıkları sayesinde kolayca bir römork üzerine yerleştirilebilir. Bu sayede mobil seperatör ünitesi istenilen yere kolayca taşınabilir ve seperasyon işlemi zahmetsizce başlatılabilir.',
    ),
    GubreProduct(
      name: 'Hat Üstü Pompa',
      image: 'assets/images/products/hatustu_pompa.jpg',
      description:
          ' EYS kesici bıçaklı hat üstü pompaları, yüksek kapasiteli housing ve fan tasarımı ve kesici bıçak takımı sayesinde en zorlu koşullarda çalışmaya uygundur. Gübre, digestat, balık atıkları vb. parçalar, kesici bıçaklı hat üstü pompada kolayca parçalanıp transfer edilebilir.\n'
          ' EYS kesici bıçaklı hat üstü pompalarda ayarlanabilir sabit bıçaklar ve döner bıçak mevcut olup tüm bıçaklar kolaylıkla değiştirilebilir. Hat üstü pompalar kendinden emişli olmadığı için sadece kendilerine yüksek bir kottan veya basınçla gelen malzemeyi transfer etmeye uygundur.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gübre Yönetimi Ürünleri',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Arama kutusu
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterProducts,
              decoration: InputDecoration(
                hintText: 'Ürün Ara...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          // Ürün listesi
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
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
                          builder: (context) =>
                              ProductDetailPage(product: product),
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
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class ProductDetailPage extends StatelessWidget {
  final GubreProduct product;

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
                  const SizedBox(height: 24),
                  // Buraya ürün özellikleri, teknik detaylar gibi
                  // ek bilgiler eklenebilir
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
