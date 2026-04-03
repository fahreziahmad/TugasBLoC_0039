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

   @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Order Summary',
      showAppBar: true,
      child: Container(
        color: MainLayout.backgroundColor,
        child: ScrollConfiguration(
          behavior: ScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(
              parent: ClampingScrollPhysics(),
            ),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green,
                      size: 80,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Order Successful!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: MainLayout.textTitleColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Here are your order details',
                    style: TextStyle(
                      fontSize: 14,
                      color: MainLayout.textTitleColor,
                    ),
                  ),
                  SizedBox(height: 40),

                   Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.08),
                          blurRadius: 20,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'RECEIPT',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              color: MainLayout.labelColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Divider(
                          thickness: 1,
                          color: MainLayout.inputBorderColor,
                        ),
                        SizedBox(height: 16),

                        Text(
                          "Food Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: MainLayout.accentOrange,
                          ),
                        ),
                        SizedBox(height: 8),
                        _buildReceiptRow("Item Name", makanan),
                        _buildReceiptRow("Quantity", 'x$jumlahMakanan'),

                        SizedBox(height: 16),
                        Divider(
                          thickness: 1,
                          color: MainLayout.inputBorderColor,
                        ),
                        SizedBox(height: 16),

                        Text(
                          "Drink Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 8),
                        _buildReceiptRow("Item Name", minuman),
                        _buildReceiptRow("Quantity", 'x$jumlahMinuman'),

                        SizedBox(height: 16),
                        Divider(thickness: 1.5, color: Colors.black12),
                        SizedBox(height: 16),

                        _buildReceiptRow(
                          'Total Price',
                          'Rp $totalHarga',
                          isTotal: true,
                        ),
                      ],
                    ),
                  ),
