import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';
import 'package:invoice_app/widgets/gradient_screen.dart';
import '../widgets/invoice_list_item.dart';
import 'new_invoice_screen.dart';

class InvoicesScreen extends StatelessWidget {
  const InvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientScreen(),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'All Invoices',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search invoices...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: GlobalTheme.backgroundColor,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: const [
                      InvoiceListItem(
                        company: 'AzimuT',
                        date: '27 Jun 2024',
                        amount: 863.00,
                        isPaid: true,
                      ),
                      SizedBox(height: 12),
                      InvoiceListItem(
                        company: 'Tariq P.',
                        date: '11 Jun 2024',
                        amount: 1720.00,
                        isPaid: false,
                      ),
                      SizedBox(height: 12),
                      InvoiceListItem(
                        company: 'OliveCo',
                        date: '2 Jun 2024',
                        amount: 2167.00,
                        isPaid: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            40,
          ),
        ),
        backgroundColor: const Color(0xFFB4FF4C),
        child: Icon(Icons.add, color: GlobalTheme.darkTextColor),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewInvoiceScreen(),
            ),
          );
        },
      ),
    );
  }
}
