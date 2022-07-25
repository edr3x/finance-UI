import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SfCartesianChart(
        // Initialize category axis
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            // Bind data source
            dataSource: <SalesData>[
              SalesData('Jan', 35),
              SalesData('Feb', 28),
              SalesData('Mar', 34),
              SalesData('Apr', 32),
              SalesData('May', 40)
            ],
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
