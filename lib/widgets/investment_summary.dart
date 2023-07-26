import 'package:flutter/material.dart';

class InvestmentSummary extends StatefulWidget {
  final double balance;
  final double profit;

  const InvestmentSummary({
    Key? key,
    required this.balance,
    required this.profit,
  }) : super(key: key);

  @override
  _InvestmentSummaryState createState() => _InvestmentSummaryState();
}

class _InvestmentSummaryState extends State<InvestmentSummary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(198, 81, 205, 1),
            Color.fromRGBO(135, 57, 249, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(135, 57, 249, 0.9),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Portfolio Value',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '\$${widget.balance.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Profit',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(
                widget.profit >= 0 ? Icons.arrow_upward : Icons.arrow_downward,
                color: widget.profit >= 0
                    ? const Color.fromARGB(255, 24, 217, 30)
                    : const Color.fromARGB(255, 243, 101, 91),
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                '\$${widget.profit.abs().toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: widget.profit >= 0
                      ? const Color.fromARGB(255, 24, 217, 30)
                      : const Color.fromARGB(255, 243, 101, 91),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
