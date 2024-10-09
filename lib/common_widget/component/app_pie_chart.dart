import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/component/app_line_chart.dart';
import 'package:components/theme/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AppPieChart extends StatefulWidget {
  const AppPieChart({super.key, required this.yearsOfExperiance});

  final List<Map<String, int>> yearsOfExperiance;

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<AppPieChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 300,
      showShadow: false,
      bgColor: const Color(0xffF7F9FB),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            'Attendance',
            textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppColors.txtPrimaryColor,
                ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                const SizedBox(
                  height: 18,
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                        pieTouchData: PieTouchData(
                          touchCallback:
                              (FlTouchEvent event, pieTouchResponse) {
                            setState(() {
                              if (!event.isInterestedForInteractions ||
                                  pieTouchResponse == null ||
                                  pieTouchResponse.touchedSection == null) {
                                touchedIndex = -1;
                                return;
                              }
                              touchedIndex = pieTouchResponse
                                  .touchedSection!.touchedSectionIndex;
                            });
                          },
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 0,
                        centerSpaceRadius: 40,
                        sections: showingSections(),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DotTxt(
                      dotColor: AppColors.txtPrimaryColor,
                      title: 'Leadership',
                      value: getValueFromTitle('Leadership'),
                      percentage: '10',
                    ),
                    DotTxt(
                      dotColor: AppColors.txtPrimaryColor,
                      title: 'Mid - Level',
                      value: getValueFromTitle('Mid- Level'),
                      percentage: '10',
                    ),
                    DotTxt(
                      dotColor: AppColors.txtPrimaryColor,
                      title: 'Beginners',
                      value: getValueFromTitle('Beginners'),
                      percentage: '10',
                    ),
                    DotTxt(
                      dotColor: AppColors.txtPrimaryColor,
                      title: 'Students',
                      value: getValueFromTitle('Students'),
                      percentage: '10',
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
                const SizedBox(width: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getValueFromTitle(String title) {
    switch (title) {
      case 'Leadership':
        int? value = widget.yearsOfExperiance
            .firstWhere((element) => (element.keys.contains('15-20')))['15-20'];
        int? value2 = widget.yearsOfExperiance.firstWhere((element) =>
            (element.keys.contains('20 and above')))['20 and above'];
        return '${(value ?? 0) + (value2 ?? 0)}';
      case 'Mid- Level':
        int? value = widget.yearsOfExperiance
            .firstWhere((element) => (element.keys.contains('5-10')))['5-10'];
        int? value2 = widget.yearsOfExperiance
            .firstWhere((element) => (element.keys.contains('10-15')))['10-15'];
        return '${(value ?? 0) + (value2 ?? 0)}';
      case 'Beginners':
        int? value = widget.yearsOfExperiance
            .firstWhere((element) => (element.keys.contains('0-2')))['0-2'];
        int? value2 = widget.yearsOfExperiance
            .firstWhere((element) => (element.keys.contains('3-5')))['3-5'];
        return '${(value ?? 0) + (value2 ?? 0)}';
      case 'Student':
        int? value = widget.yearsOfExperiance.firstWhere(
            (element) => (element.keys.contains('Student')))['Student'];
        return '${(value ?? 0)}';
      default:
        return '';
    }
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xFF601c1c1c),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.txtPrimaryColor,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xFFB1E3FF),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.txtPrimaryColor,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xFFA1E3CB),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.txtPrimaryColor,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Color(0xFFA8C5DA),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.txtPrimaryColor,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });

  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}
