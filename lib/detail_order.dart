import 'package:flutter/material.dart';
import 'package:tugas_bloc/home.dart';
import 'package:tugas_bloc/mainlayout.dart';

class DetailOrderPage extends StatelessWidget {
  final String makanan;
  final String minuman;
  final int jumlahMakanan;
  final int jumlahMinuman;
  final int totalHarga;

    const DetailOrderPage({
    required this.makanan,
    required this.minuman,
    required this.jumlahMakanan,
    required this.jumlahMinuman,
    required this.totalHarga,
    super.key,
  });

   Widget _buildReceiptRow(String label, String value, {bool isTotal = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 18 : 15,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.w500,
              color:
                  isTotal
                      ? MainLayout.primaryColor
                      : MainLayout.textSubtitleColor,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 20 : 15,
              fontWeight: isTotal ? FontWeight.w900 : FontWeight.bold,
              color:
                  isTotal ? MainLayout.primaryColor : MainLayout.textTitleColor,
            ),
          ),
        ],
      ),
    );
  }
