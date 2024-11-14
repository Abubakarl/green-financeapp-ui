import 'package:flutter/material.dart';

import '../global/theme.dart';

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            "assets/lines_wavy_white.jpg",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              top: 14,
              bottom: 14,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Due date',
                            style: TextStyle(
                              color: GlobalTheme.darkTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Tomorrow',
                            style: TextStyle(
                              fontSize: 12,
                              color: GlobalTheme.tertiaryTextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 130,
                              decoration: BoxDecoration(
                                color: GlobalTheme.darkTextColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        const Center(
                            child: Text(
                          "\$5K",
                          style: TextStyle(fontSize: 12),
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jun 1',
                        style: TextStyle(
                          color: GlobalTheme.tertiaryTextColor,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Jun 30',
                        style: TextStyle(
                          color: GlobalTheme.tertiaryTextColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const VerticalDivider(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 14,
                  top: 14,
                  bottom: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        color: GlobalTheme.darkTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$5731.23',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: GlobalTheme.darkTextColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Payout in 12:00 PM',
                      style: TextStyle(
                        color: GlobalTheme.tertiaryTextColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
