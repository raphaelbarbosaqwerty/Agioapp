import 'package:agioapp/app/modules/home/model/balance_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BalanceChart extends StatelessWidget {
  final List<BalanceData> balanceData;

  const BalanceChart({required this.balanceData});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      child: Center(
        child: SfCircularChart(
          legend: Legend(
              isVisible: true,
              position: LegendPosition.bottom,
              textStyle: textTheme.bodyText2
                  ?.copyWith(fontSize: 12, color: Colors.white)),
          series: <CircularSeries>[
            DoughnutSeries<BalanceData, String>(
                dataSource: balanceData,
                pointColorMapper: (BalanceData data, _) => data.color,
                xValueMapper: (BalanceData data, _) => data.x,
                yValueMapper: (BalanceData data, _) => data.y,
                dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  labelPosition: ChartDataLabelPosition.outside,
                  connectorLineSettings: ConnectorLineSettings(
                    type: ConnectorType.curve,
                  ),
                  textStyle: textTheme.bodyText1!.copyWith(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
