
import 'package:flutter/material.dart';

const bg = Color(0xFF090A10);
const panel = Color(0xFF151722);
const neon = Color(0xFFFF3155);
const purple = Color(0xFF9D4EDD);

class DetailPage extends StatelessWidget {
  final Map<String, String> produk;

  const DetailPage({
    super.key,
    required this.produk,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        foregroundColor: Colors.white,
        title: const Text(
          'PRODUCT DETAILS',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            fontSize: 16,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PRODUCT IMAGE
            Container(
              height: 340,
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF25101C),
                    Color(0xFF171522),
                    Color(0xFF28153D),
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: neon.withOpacity(0.5),
                ),
                boxShadow: [
                  BoxShadow(
                    color: neon.withOpacity(0.16),
                    blurRadius: 25,
                  )
                ],
              ),
              child: Image.network(
                produk['gambar']!,
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.phone_android,
                  color: neon,
                  size: 120,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BRAND
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: neon.withOpacity(0.15),
                      border: Border.all(color: neon),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      produk['merek']!.toUpperCase(),
                      style: const TextStyle(
                        color: neon,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                      ),
                    ),
                  ),

                  const SizedBox(height: 17),

                  // NAME
                  Text(
                    produk['nama']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // PRICE
                  Text(
                    produk['harga']!,
                    style: const TextStyle(
                      color: neon,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'TECH SPECIFICATION',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        child: specCard(
                          Icons.storage,
                          'STORAGE',
                          produk['penyimpanan']!,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: specCard(
                          Icons.palette,
                          'COLOR',
                          produk['warna']!,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    'ABOUT THIS DEVICE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                  ),

                  const SizedBox(height: 13),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      color: panel,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.white12,
                      ),
                    ),
                    child: Text(
                      produk['deskripsi']!,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Colors.white70,
                        height: 1.8,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // BACK BUTTON
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text(
                        'BACK TO COLLECTION',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: neon,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
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
  }

  Widget specCard(IconData icon, String title, String value) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: panel,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: purple.withOpacity(0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: neon, size: 27),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white38,
              fontSize: 10,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
