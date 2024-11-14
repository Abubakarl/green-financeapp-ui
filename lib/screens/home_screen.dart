import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';
import 'package:invoice_app/widgets/gradient_screen.dart';
import '../widgets/invoice_card.dart';
import '../widgets/invoice_list_item.dart';
import 'invoice_details_screen.dart';
import 'new_invoice_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: GlobalTheme.backgroundColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 5),
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=200&h=200&dpr=1',
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Welcome, Arina',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Your wallet — Grey',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: GlobalTheme.secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        FloatingActionButton.small(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          backgroundColor: const Color(0xFFB4FF4C),
                          child:
                              Icon(Icons.add, color: GlobalTheme.darkTextColor),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NewInvoiceScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const InvoiceCard(),
                  const SizedBox(height: 14),
                  const Text(
                    "Invoices",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: MediaQuery.of(context).size.width * .09,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        label: const Text('All'),
                        backgroundColor: const Color(0xFFB4FF4C),
                        labelStyle: TextStyle(color: GlobalTheme.darkTextColor),
                      ),
                      Chip(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: MediaQuery.of(context).size.width * .09,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        label: const Text('Open'),
                        backgroundColor: GlobalTheme.backgroundColor,
                      ),
                      Chip(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: MediaQuery.of(context).size.width * .09,
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        label: const Text('Paid'),
                        backgroundColor: GlobalTheme.backgroundColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'TODAY',
                    style: TextStyle(
                      fontSize: 12,
                      color: GlobalTheme.secondaryTextColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InvoiceDetailsScreen(),
                        ),
                      );
                    },
                    child: const InvoiceListItem(
                      company: 'AzimuT',
                      date: '27 Jun 2024',
                      amount: 863.00,
                      isPaid: true,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'THIS MONTH',
                    style: TextStyle(
                      fontSize: 12,
                      color: GlobalTheme.secondaryTextColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const InvoiceListItem(
                    company: 'Tariq P.',
                    date: '11 Jun 2024',
                    amount: 1720.00,
                    isPaid: false,
                  ),
                  const SizedBox(height: 12),
                  const InvoiceListItem(
                    company: 'OliveCo',
                    date: '2 Jun 2024',
                    amount: 2167.00,
                    isPaid: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
