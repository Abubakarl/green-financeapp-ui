import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';
import 'package:invoice_app/widgets/gradient_screen.dart';

import '../widgets/back_button.dart';

class InvoiceDetailsScreen extends StatelessWidget {
  const InvoiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const NewBackButton(),
        title: const Text(
          'Details',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          const GradientScreen(),
          SafeArea(
            bottom: false,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: GlobalTheme.primaryTextColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Invoices #04317',
                          style: TextStyle(
                            color: GlobalTheme.darkTextColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildInfoColumn('Invoice date', '27 Jun 2024'),
                            _buildInfoColumn('Total amount', '\$3782.00'),
                            _buildInfoColumn('Status', 'Open', isStatus: true),
                            const SizedBox()
                          ],
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB4FF4C),
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'Mark as paid',
                              style: TextStyle(
                                color: GlobalTheme.darkTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      color: GlobalTheme.darkTextColor),
                                  padding: const EdgeInsets.all(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.share,
                                      color: GlobalTheme.darkTextColor,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Share',
                                      style: TextStyle(
                                          color: GlobalTheme.darkTextColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      color: GlobalTheme.darkTextColor),
                                  padding: const EdgeInsets.all(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(CupertinoIcons.pencil_outline,
                                        color: GlobalTheme.darkTextColor),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                          color: GlobalTheme.darkTextColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.file_download_outlined,
                          color: GlobalTheme.darkTextColor,
                          size: 26,
                        ),
                        label: Text(
                          'Download receipt',
                          style: TextStyle(
                            color: GlobalTheme.darkTextColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * .7,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Image.network(
                              'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=example',
                              width: 180,
                              height: 180,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=100&h=100&dpr=1",
                                  ),
                                  radius: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'OliveCo',
                                  style: TextStyle(
                                    color: GlobalTheme.darkTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value, {bool isStatus = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: GlobalTheme.secondaryTextColor,
              fontSize: 14,
            ),
          ),
          if (isStatus)
            Row(
              children: [
                Container(
                  height: 5,
                  width: 5,
                  margin: const EdgeInsets.only(right: 4, left: 2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  'Open',
                  style: TextStyle(
                    color: GlobalTheme.darkTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          else
            Text(
              value,
              style: TextStyle(
                color: GlobalTheme.darkTextColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
