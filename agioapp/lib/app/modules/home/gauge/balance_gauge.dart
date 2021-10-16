import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';

class BalanceGauge extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;
  final double wealth;
  final double loaned;

  BalanceGauge(this.seriesList,
      {required this.animate, required this.wealth, required this.loaned})

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(
        seriesList,
        animate: animate,
        defaultRenderer: new charts.ArcRendererConfig(
          arcWidth: 30, startAngle: 4 / 5 * pi, arcLength: 7 / 5 * pi
        ),
    );
  }

  static List<charts.Series<GaugeSegment, String>> _createSampleDate() {
      final data = [
        new GaugeSegment("Sexo", 75),
        new GaugeSegment("Sexo 2", 30)
      ];

      return [
        new charts.Series(
            id: 'Segments',
            data: data,
            domainFn: (GaugeSegment segment, _) => segment.segment,
            measureFn: (GaugeSegment segment, _) => segment.size)
      ];
  }

}

class GaugeSegment {
  final String segment;
  final int size;

  GaugeSegment(this.segment, this.size);
}