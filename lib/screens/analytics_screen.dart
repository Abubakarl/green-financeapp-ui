import 'package:flutter/material.dart';
import 'package:invoice_app/global/theme.dart';
import 'package:invoice_app/widgets/gradient_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

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
                    'Analytics',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildAnalyticsCard(
                    'Total Revenue',
                    '\$50,234.00',
                    Icons.arrow_upward,
                    '+8.5%',
                    GlobalTheme.primaryColor,
                  ),
                  const SizedBox(height: 16),
                  _buildAnalyticsCard(
                    'Pending Invoices',
                    '\$7,431.00',
                    Icons.arrow_downward,
                    '-1.3%',
                    Colors.redAccent,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Monthly Revenue Chart',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 260,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: GlobalTheme.backgroundColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      tooltipBehavior: TooltipBehavior(enable: true),
                      legend: Legend(isVisible: true),
                      series: [
                        ColumnSeries<SalesData, String>(
                          dataSource: getRevenueData(),
                          xValueMapper: (SalesData sales, _) => sales.month,
                          yValueMapper: (SalesData sales, _) => sales.revenue,
                          name: 'Revenue',
                          color: GlobalTheme.primaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Expense Breakdown',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 260,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: GlobalTheme.backgroundColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SfCircularChart(
                      legend: Legend(isVisible: true),
                      tooltipBehavior: TooltipBehavior(enable: true),
                      series: <CircularSeries>[
                        PieSeries<ExpenseData, String>(
                          dataSource: getExpenseData(),
                          xValueMapper: (ExpenseData expense, _) =>
                              expense.category,
                          yValueMapper: (ExpenseData expense, _) =>
                              expense.amount,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        ),
                      ],
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

  Widget _buildAnalyticsCard(
    String title,
    String amount,
    IconData icon,
    String percentage,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: GlobalTheme.backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(icon, color: color, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    percentage,
                    style: TextStyle(
                      color: color,
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

  // Function to generate realistic revenue data
  List<SalesData> getRevenueData() {
    return [
      SalesData('Jan', 4200),
      SalesData('Feb', 4800),
      SalesData('Mar', 5400),
      SalesData('Apr', 5300),
      SalesData('May', 5900),
      SalesData('Jun', 6100),
      SalesData('Jul', 6400),
      SalesData('Aug', 6200),
      SalesData('Sep', 6800),
      SalesData('Oct', 7000),
      SalesData('Nov', 7300),
      SalesData('Dec', 7500),
    ];
  }

  // Function to generate realistic expense data
  List<ExpenseData> getExpenseData() {
    return [
      ExpenseData('Salaries', 15000),
      ExpenseData('Utilities', 5000),
      ExpenseData('Marketing', 3000),
      ExpenseData('Maintenance', 2000),
      ExpenseData('Miscellaneous', 1000),
    ];
  }
}

// Data model for SalesData
class SalesData {
  SalesData(this.month, this.revenue);
  final String month;
  final double revenue;
}

// Data model for ExpenseData
class ExpenseData {
  ExpenseData(this.category, this.amount);
  final String category;
  final double amount;
}
