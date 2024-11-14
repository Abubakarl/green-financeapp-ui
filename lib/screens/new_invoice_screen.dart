import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';
import 'package:invoice_app/widgets/back_button.dart';
import 'package:invoice_app/widgets/gradient_screen.dart';
import 'invoice_details_screen.dart';

class NewInvoiceScreen extends StatelessWidget {
  const NewInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const NewBackButton(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'New invoice',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Step 2 of 3',
              style: TextStyle(fontSize: 12, color: GlobalTheme.secondaryTextColor),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          const GradientScreen(),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ITEMS',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: GlobalTheme.backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        _buildInvoiceItem('AzimuT', '\$863.00', '1 x 863.00'),
                        const SizedBox(height: 12),
                        _buildInvoiceItem('TrustCo', '\$1895.00', '3 x 631.00'),
                        const SizedBox(height: 12),
                        _buildInvoiceItem(
                            'Internship', '\$900.00', '1 x 900.00'),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                              side: BorderSide(
                                width: 2,
                                color: GlobalTheme.primaryColor,
                              ),
                            ),
                            icon: Icon(
                              Icons.add,
                              size: 20,
                              color: GlobalTheme.primaryColor,
                            ),
                            onPressed: () {},
                            label: const Text(
                              'Add item',
                              style: TextStyle(
                                color: Color(0xFFB4FF4C),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: GlobalTheme.backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        _buildTotalRow('Subtotal', '\$3658.00'),
                        const Divider(height: 25),
                        _buildTotalRow('TAX 8%', '\$124.00'),
                        const Divider(height: 25),
                        _buildTotalRow('Total', '\$3782.00', isTotal: true),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InvoiceDetailsScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB4FF4C),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          color: GlobalTheme.darkTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInvoiceItem(String title, String amount, String subtitle) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: GlobalTheme.secondaryTextColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              amount,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(height: 0)
      ],
    );
  }

  Widget _buildTotalRow(String label, String amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isTotal ? 20 : 16,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            color: isTotal ? const Color(0xFFB4FF4C) : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: isTotal ? 20 : 16,
          ),
        ),
      ],
    );
  }
}
