// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'imc_gauce_range.dart';

class ImcGauceWidget extends StatelessWidget {
  const ImcGauceWidget({
    Key? key,
    required this.imc,
  }) : super(key: key);

  final double imc;

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 12.5,
          maximum: 47.9,
          ranges: [
            ImcGauceRange(
                color: Colors.blue, start: 12.5, end: 18.5, label: 'MAGREZA'),
            ImcGauceRange(
                color: Colors.green, start: 18.5, end: 24.5, label: 'NORMAL'),
            ImcGauceRange(
                color: Colors.yellow[600]!,
                start: 24.5,
                end: 29.9,
                label: 'SOBREPESO'),
            ImcGauceRange(
                color: Colors.red[500]!,
                start: 29.9,
                end: 39.9,
                label: 'OBESIDADE'),
            ImcGauceRange(
                color: Colors.red[900]!,
                start: 39.9,
                end: 47.9,
                label: 'OBESIDDE GRAVE'),
          ],
          pointers: [
            NeedlePointer(
              value: imc,
              enableAnimation: true,
            ),
          ],
        )
      ],
    );
  }
}
