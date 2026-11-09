
import 'package:flutter/material.dart';
import 'detail_page.dart';

const bg = Color(0xFF090A10);
const panel = Color(0xFF151722);
const neon = Color(0xFFFF3155);
const purple = Color(0xFF9D4EDD);

void main() {
  runApp(const DarkTechApp());
}

class DarkTechApp extends StatelessWidget {
  const DarkTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bg,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String keyword = '';
  String kategori = 'Semua';

  final List<Map<String, String>> produk = [
    {
      'nama': 'iPhone 15 Pro Max',
      'merek': 'Apple',
      'harga': 'Rp 19.999.000',
      'gambar': 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=600',
      'warna': 'Natural Titanium',
      'penyimpanan': '256 GB',
      'deskripsi': 'iPhone 15 Pro Max memiliki layar Super Retina XDR, chip A17 Pro, kamera 48 MP dan desain titanium premium. Performa tinggi untuk gaming, fotografi dan produktivitas.'
    },
    {
      'nama': 'Galaxy S24 Ultra',
      'merek': 'Samsung',
      'harga': 'Rp 18.999.000',
      'gambar': 'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?w=600',
      'warna': 'Titanium Gray',
      'penyimpanan': '256 GB',
      'deskripsi': 'Samsung Galaxy S24 Ultra memiliki layar Dynamic AMOLED 2X, kamera 200 MP, S Pen dan performa premium untuk multitasking.'
    },
    {
      'nama': 'Xiaomi 14',
      'merek': 'Xiaomi',
      'harga': 'Rp 10.999.000',
      'gambar': 'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=600',
      'warna': 'Black',
      'penyimpanan': '256 GB',
      'deskripsi': 'Xiaomi 14 menawarkan kamera Leica, layar AMOLED, prosesor Snapdragon dan desain elegan.'
    },
    {
      'nama': 'OPPO Reno 12',
      'merek': 'OPPO',
      'harga': 'Rp 5.999.000',
      'gambar': 'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=600',
      'warna': 'Astro Silver',
      'penyimpanan': '256 GB',
      'deskripsi': 'OPPO Reno 12 hadir dengan desain modern, layar AMOLED, kamera portrait dan fitur AI.'
    },
    {
      'nama': 'Vivo V30',
      'merek': 'Vivo',
      'harga': 'Rp 6.499.000',
      'gambar': 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=600',
      'warna': 'Peacock Green',
      'penyimpanan': '256 GB',
      'deskripsi': 'Vivo V30 mempunyai layar AMOLED, kamera portrait berkualitas dan desain tipis yang elegan.'
    },
    {
      'nama': 'Realme 12 Pro+',
      'merek': 'Realme',
      'harga': 'Rp 5.499.000',
      'gambar': 'https://images.unsplash.com/photo-1605236453806-6ff36851218e?w=600',
      'warna': 'Submarine Blue',
      'penyimpanan': '256 GB',
      'deskripsi': 'Realme 12 Pro+ menawarkan kamera periskop, layar AMOLED dan performa yang nyaman untuk multitasking.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final hasil = produk.where((p) {
      final cocokNama =
          p['nama']!.toLowerCase().contains(keyword.toLowerCase()) ||
          p['merek']!.toLowerCase().contains(keyword.toLowerCase());

      final cocokKategori =
          kategori == 'Semua' || p['merek'] == kategori;

      return cocokNama && cocokKategori;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.bolt, color: neon, size: 30),
            SizedBox(width: 8),
            Text(
              'DARKTECH',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(Icons.shopping_bag_outlined, color: neon),
          )
        ],
      ),

      body: Column(
        children: [
          // HERO SECTION
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF35101D),
                  Color(0xFF171522),
                  Color(0xFF25113B),
                ],
              ),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: neon.withOpacity(0.5),
              ),
              boxShadow: [
                BoxShadow(
                  color: neon.withOpacity(0.15),
                  blurRadius: 20,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'NEXT LEVEL\\nTECHNOLOGY.',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 1.5,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Upgrade your device. Upgrade your world.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(Icons.circle, color: neon, size: 9),
                    const SizedBox(width: 8),
                    const Text(
                      'PREMIUM COLLECTION',
                      style: TextStyle(
                        color: neon,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontSize: 11,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                )
              ],
            ),
          ),

          // SEARCH
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              onChanged: (value) {
                setState(() => keyword = value);
              },
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Search your smartphone...',
                hintStyle: const TextStyle(color: Colors.white38),
                prefixIcon: const Icon(Icons.search, color: neon),
                filled: true,
                fillColor: panel,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(height: 18),

          // CATEGORY
          SizedBox(
            height: 42,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: [
                'Semua',
                'Apple',
                'Samsung',
                'Xiaomi',
                'OPPO',
                'Vivo',
                'Realme',
              ].map((item) {
                final aktif = kategori == item;

                return GestureDetector(
                  onTap: () {
                    setState(() => kategori = item);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 9),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: aktif ? neon : panel,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: aktif ? neon : Colors.white12,
                      ),
                    ),
                    child: Text(
                      item,
                      style: TextStyle(
                        color: aktif ? Colors.white : Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 18),

          // TITLE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Container(
                  width: 4,
                  height: 23,
                  color: neon,
                ),
                const SizedBox(width: 10),
                const Text(
                  'ELITE COLLECTION',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
                const Spacer(),
                Text(
                  '${hasil.length} ITEMS',
                  style: const TextStyle(
                    color: neon,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 14),

          // PRODUCT GRID
          Expanded(
            child: hasil.isEmpty
                ? const Center(
                    child: Text(
                      'PRODUCT NOT FOUND',
                      style: TextStyle(color: neon),
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                    itemCount: hasil.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.60,
                      crossAxisSpacing: 13,
                      mainAxisSpacing: 14,
                    ),
                    itemBuilder: (context, index) {
                      final p = hasil[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailPage(produk: p),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: panel,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                              color: Colors.white12,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: neon.withOpacity(0.08),
                                blurRadius: 13,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          const BorderRadius.vertical(
                                        top: Radius.circular(18),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0xFF202330),
                                        padding: const EdgeInsets.all(12),
                                        child: Image.network(
                                          p['gambar']!,
                                          fit: BoxFit.contain,
                                          errorBuilder: (_, __, ___) =>
                                              const Icon(
                                            Icons.phone_android,
                                            size: 70,
                                            color: neon,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 9,
                                          vertical: 5,
                                        ),
                                        decoration: BoxDecoration(
                                          color: neon,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Text(
                                          p['merek']!.toUpperCase(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      p['nama']!,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 9),
                                    Text(
                                      p['harga']!,
                                      style: const TextStyle(
                                        color: neon,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [neon, purple],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(9),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'EXPLORE PRODUCT  →',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}
