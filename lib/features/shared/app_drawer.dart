import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0D1B2A), // koyu mavi arka plan
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              // Arama kutusu
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Dolar kaç lira oldu?',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Popüler Kategoriler
              const Text(
                'Popüler kategoriler',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 8,
                children: [
                  _buildCategoryChip('Son Dakika', selected: true),
                  _buildCategoryChip('Dünya'),
                  _buildCategoryChip('Spor'),
                  _buildCategoryChip('Savunma'),
                ],
              ),
              const SizedBox(height: 24),

              // Bunlara da bakın
              const Text(
                'Bunlara da bakın',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 8,
                children: [
                  _buildCategoryChip('Podcast'),
                  _buildCategoryChip('Kültür'),
                  _buildCategoryChip('Kimdir?'),
                  _buildCategoryChip('Politika'),
                  _buildCategoryChip('Galeri'),
                  _buildCategoryChip('Neler oldu?'),
                ],
              ),
              const SizedBox(height: 24),

              // Kurumsal
              const Text(
                'Kurumsal',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildOutlinedButton('Resmi İlanlar'),
                  _buildOutlinedButton('Çerez Politikası'),
                  _buildOutlinedButton('Künye'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, {bool selected = false}) {
    return Chip(
      backgroundColor: selected ? Colors.red : Colors.white,
      label: Text(
        label,
        style: TextStyle(color: selected ? Colors.white : Colors.black),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }

  Widget _buildOutlinedButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white24),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(text, style: const TextStyle(color: Colors.white70)),
        ),
      ),
    );
  }
}
