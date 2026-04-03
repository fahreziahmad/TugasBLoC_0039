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