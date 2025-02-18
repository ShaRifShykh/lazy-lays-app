import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';
import 'package:starter_app/src/views/home/tabs/wl/overview.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WinningSystemDetailView extends StatelessWidget {
  WinningSystemDetailView({
    Key? key,
  }) : super(key: key);

  final HomeViewModel model = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            titleText: 'Winning System',
            showNotification: true,
            showBackButton: true,
            showSettings: false,
          ),
          VerticalSpacing(20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Container(
              height: 440.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: AppColors.appDarkGreen, width: 1),
              ),
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NBA System Plays',
                            style: TextStyling.bold.copyWith(
                              fontSize: 20.sp,
                            ),
                          ),
                          Text(
                            'January 31st, 2014- Feb 4, 2024',
                            style: TextStyling.regular.copyWith(
                              fontSize: 11.sp,
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 5.h,
                            horizontal: 5.w,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Weekly',
                                style: TextStyling.regular.copyWith(
                                  fontSize: 11.sp,
                                  color: AppColors.grey,
                                ),
                              ),
                              HorizontalSpacing(4.w),
                              Icon(
                                FontAwesomeIcons.filter,
                                color: AppColors.grey,
                                size: 11.sp,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  VerticalSpacing(5.h),
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(
                          axisLine: AxisLine(
                            color: AppColors.grey,
                          ),
                          majorGridLines: MajorGridLines(
                            color: Colors.transparent,
                          ),
                        ),
                        primaryYAxis: NumericAxis(
                          axisLine: AxisLine(
                            color: AppColors.grey,
                          ),
                          majorGridLines: MajorGridLines(
                            color: AppColors.grey.withOpacity(0.5),
                          ),
                        ),
                        // axes: [
                        //   // NumericAxis(
                        //   //   majorGridLines: MajorGridLines(
                        //   //     color: AppColors.grey,
                        //   //   ),
                        //   // ),
                        // ],
                        plotAreaBorderColor: Colors.transparent,
                        series: <CartesianSeries>[
                          SplineSeries<ChartData, String>(
                            color: AppColors.appPink,
                            enableTooltip: true,
                            dataSource: model.chartData,
                            // Type of spline
                            splineType: SplineType.natural,
                            dataLabelMapper: (datum, index) =>
                                datum.y.toString(),
                            cardinalSplineTension: 0.9,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                          )
                        ],
                      ),
                    ),
                  ),
                  VerticalSpacing(10.h),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OverviewInfoWidget(
                                  title: 'Grade',
                                  value: 'A+',
                                ),
                              ),
                              HorizontalSpacing(24.w),
                              Expanded(
                                child: OverviewInfoWidget(
                                  title: 'Record',
                                  value: '10-2',
                                ),
                              ),
                            ],
                          ),
                          VerticalSpacing(15.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: OverviewInfoWidget(
                                  title: 'Margin',
                                  value: '+2.08',
                                ),
                              ),
                              HorizontalSpacing(24.w),
                              Expanded(
                                child: OverviewInfoWidget(
                                  title: 'Win%',
                                  value: '83.33',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
}
