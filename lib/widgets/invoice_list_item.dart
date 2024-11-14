import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';

class InvoiceListItem extends StatelessWidget {
  final String company;
  final String date;
  final double amount;
  final bool isPaid;

  const InvoiceListItem({
    super.key,
    required this.company,
    required this.date,
    required this.amount,
    required this.isPaid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: GlobalTheme.backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: GlobalTheme.secondaryTextColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(Icons.cloud),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  company,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Created: $date',
                  style: TextStyle(
                    color: GlobalTheme.secondaryTextColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$${amount.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    margin: const EdgeInsets.only(right: 4, left: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isPaid ? GlobalTheme.primaryColor : Colors.orange,
                    ),
                  ),
                  Text(
                    isPaid ? 'Paid' : 'Open',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
