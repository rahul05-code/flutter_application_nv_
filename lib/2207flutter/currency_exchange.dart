import 'package:flutter/material.dart';

class CurrencyExchangePage extends StatefulWidget {
  @override
  _CurrencyExchangePageState createState() => _CurrencyExchangePageState();
}

class _CurrencyExchangePageState extends State<CurrencyExchangePage> {
  final TextEditingController _amountController = TextEditingController();
  String _fromCurrency = 'USD';
  String _toCurrency = 'INR';
  double _convertedAmount = 0.0;

  final List<String> _currencies = ['USD', 'INR', 'EUR', 'GBP', 'JPY'];

  // Dummy conversion rates
  final Map<String, double> _conversionRates = {
    'USDINR': 83.12,
    'INRUSD': 0.012,
    'USDEUR': 0.91,
    'EURUSD': 1.10,
    'USDGBP': 0.78,
    'GBPUSD': 1.27,
    'USDJPY': 146.42,
    'JPYUSD': 0.0068,
    'INREUR': 0.011,
    'EURINR': 90.0,
    'INRGBP': 0.0094,
    'GBPINR': 106.0,
    // Add more if needed
  };

  void _convertCurrency() {
    String key = _fromCurrency + _toCurrency;
    double rate = _conversionRates[key] ?? 1.0;

    double inputAmount = double.tryParse(_amountController.text) ?? 0.0;
    setState(() {
      _convertedAmount = inputAmount * rate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Currency Exchange'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _fromCurrency,
                    items: _currencies.map((currency) {
                      return DropdownMenuItem<String>(
                        value: currency,
                        child: Text(currency),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _fromCurrency = val!;
                      });
                    },
                    decoration: InputDecoration(labelText: 'From'),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _toCurrency,
                    items: _currencies.map((currency) {
                      return DropdownMenuItem<String>(
                        value: currency,
                        child: Text(currency),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _toCurrency = val!;
                      });
                    },
                    decoration: InputDecoration(labelText: 'To'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _convertCurrency, child: Text('Convert')),
            SizedBox(height: 30),
            Text(
              'Converted Amount: $_convertedAmount $_toCurrency',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
