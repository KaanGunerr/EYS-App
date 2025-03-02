import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class DealersMapPage extends StatelessWidget {
  DealersMapPage({super.key});

  final List<Dealer> dealers = [
    Dealer(
      name: 'EYS Endüstri Makina (Merkez)',
      country: 'Türkiye',
      location: LatLng(37.856407, 27.841228), // Aydın
    ),
    Dealer(
      name: 'EYS Agrar- und Umwelttechnik Lohne GmbH',
      country: 'Almanya',
      location: LatLng(52.657989, 8.235551), // Lohne
    ),
    Dealer(
      name: 'DARITECH INC.',
      country: 'Amerika Birleşik Devletleri',
      location: LatLng(47.751076, -120.740135), // Washington
    ),
    Dealer(
      name: 'CORNES AG. CORPORATION',
      country: 'Japonya',
      location: LatLng(36.204824, 138.252924),
    ),
    Dealer(
      name: 'DEJONGHE TECHNIEK',
      country: 'Belçika',
      location: LatLng(50.503887, 4.469936),
    ),
    Dealer(
      name: 'EKOAGRO',
      country: 'Polonya',
      location: LatLng(52.237049, 21.017532),
    ),
    Dealer(
      name: 'FARMTEC A.S.',
      country: 'Çek Cumhuriyeti',
      location: LatLng(49.817492, 15.472962),
    ),
    Dealer(
      name: 'FARMTEC SLOVAKIA',
      country: 'Slovakya',
      location: LatLng(48.669026, 19.699024),
    ),
    Dealer(
      name: 'FARMTEC HUNGARIA KFT.',
      country: 'Macaristan',
      location: LatLng(47.162494, 19.503304),
    ),
    Dealer(
      name: 'FARMTEC ROMANIA',
      country: 'Romanya',
      location: LatLng(45.943161, 24.966760),
    ),
    Dealer(
      name: 'FARMTEC BULGARIA',
      country: 'Bulgaristan',
      location: LatLng(42.733883, 25.485830),
    ),
    Dealer(
      name: 'FARMTEC SERBIA',
      country: 'Sırbistan',
      location: LatLng(44.016521, 21.005859),
    ),
    Dealer(
      name: 'FARMTEC CROATIA',
      country: 'Hırvatistan',
      location: LatLng(45.815399, 15.966568),
    ),
    Dealer(
      name: 'FARMTEC SLOVENIA',
      country: 'Slovenya',
      location: LatLng(46.151241, 14.995463),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dünya\'da EYS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Harita
          Expanded(
            flex: 2,
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(41.015137, 28.979530), // İstanbul merkez
                zoom: 2.0,
                minZoom: 2.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                MarkerLayer(
                  markers: dealers.map((dealer) {
                    return Marker(
                      point: dealer.location,
                      child: GestureDetector(
                        onTap: () {
                          showDealerInfo(context, dealer);
                        },
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          // Bayi Listesi
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: dealers.length,
                itemBuilder: (context, index) {
                  final dealer = dealers[index];
                  return ListTile(
                    title: Text(dealer.name),
                    subtitle: Text(dealer.country),
                    leading: const Icon(Icons.business),
                    onTap: () {
                      showDealerInfo(context, dealer);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showDealerInfo(BuildContext context, Dealer dealer) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(dealer.name),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ülke: ${dealer.country}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Kapat'),
          ),
        ],
      ),
    );
  }
}

class Dealer {
  final String name;
  final String country;
  final LatLng location;

  Dealer({
    required this.name,
    required this.country,
    required this.location,
  });
}
