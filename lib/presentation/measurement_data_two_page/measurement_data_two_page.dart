import '../measurement_data_two_page/widgets/dynamicview_item_widget.dart';
import '../measurement_data_two_page/widgets/powerusage_item_widget.dart';
import '../measurement_data_two_page/widgets/viewhierarchy1_item_widget.dart';
import '../measurement_data_two_page/widgets/viewhierarchy2_item_widget.dart';
import '../measurement_data_two_page/widgets/viewhierarchy_item_widget.dart';
import 'controller/measurement_data_two_controller.dart';
import 'models/dynamicview_item_model.dart';
import 'models/measurement_data_two_model.dart';
import 'models/powerusage_item_model.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'models/viewhierarchy2_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MeasurementDataTwoPage extends StatelessWidget {
  MeasurementDataTwoPage({Key? key})
      : super(
          key: key,
        );

  MeasurementDataTwoController controller =
      Get.put(MeasurementDataTwoController(MeasurementDataTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 28.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_active_power".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 19.v),
                        _buildViewHierarchy(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex.value,
                              count: controller.measurementDataTwoModelObj.value
                                  .viewhierarchyItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray10004,
                                dotHeight: 8.v,
                                dotWidth: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Text(
                          "lbl_apparent_power".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 15.v),
                        _buildPowerUsage(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex1.value,
                              count: controller.measurementDataTwoModelObj.value
                                  .powerusageItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray10004,
                                dotHeight: 8.v,
                                dotWidth: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 28.v),
                        Text(
                          "lbl_cos_phi".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 19.v),
                        _buildViewHierarchy1(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex2.value,
                              count: controller.measurementDataTwoModelObj.value
                                  .viewhierarchy1ItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray10004,
                                dotHeight: 8.v,
                                dotWidth: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Text(
                          "lbl_voltage".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 15.v),
                        _buildDynamicView(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex3.value,
                              count: controller.measurementDataTwoModelObj.value
                                  .dynamicviewItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray10004,
                                dotHeight: 8.v,
                                dotWidth: 8.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Text(
                          "lbl_frequency".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 15.v),
                        _buildViewHierarchy2(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex4.value,
                              count: controller.measurementDataTwoModelObj.value
                                  .viewhierarchy2ItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 6,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.blueGray10004,
                                dotHeight: 8.v,
                                dotWidth: 8.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 288.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount: controller.measurementDataTwoModelObj.value
            .viewhierarchyItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          ViewhierarchyItemModel model = controller.measurementDataTwoModelObj
              .value.viewhierarchyItemList.value[index];
          return ViewhierarchyItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerUsage() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 288.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex1.value = index;
          },
        ),
        itemCount: controller
            .measurementDataTwoModelObj.value.powerusageItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          PowerusageItemModel model = controller
              .measurementDataTwoModelObj.value.powerusageItemList.value[index];
          return PowerusageItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy1() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 288.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex2.value = index;
          },
        ),
        itemCount: controller.measurementDataTwoModelObj.value
            .viewhierarchy1ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Viewhierarchy1ItemModel model = controller.measurementDataTwoModelObj
              .value.viewhierarchy1ItemList.value[index];
          return Viewhierarchy1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicView() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 288.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex3.value = index;
          },
        ),
        itemCount: controller
            .measurementDataTwoModelObj.value.dynamicviewItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          DynamicviewItemModel model = controller.measurementDataTwoModelObj
              .value.dynamicviewItemList.value[index];
          return DynamicviewItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy2() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 288.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex4.value = index;
          },
        ),
        itemCount: controller.measurementDataTwoModelObj.value
            .viewhierarchy2ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Viewhierarchy2ItemModel model = controller.measurementDataTwoModelObj
              .value.viewhierarchy2ItemList.value[index];
          return Viewhierarchy2ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
