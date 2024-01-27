import '../measurement_data_measnode_one_page/widgets/powerdashboardslider_item_widget.dart';
import '../measurement_data_measnode_one_page/widgets/powerusageslider1_item_widget.dart';
import '../measurement_data_measnode_one_page/widgets/powerusageslider2_item_widget.dart';
import '../measurement_data_measnode_one_page/widgets/powerusageslider_item_widget.dart';
import 'controller/measurement_data_measnode_one_controller.dart';
import 'models/measurement_data_measnode_one_model.dart';
import 'models/powerdashboardslider_item_model.dart';
import 'models/powerusageslider1_item_model.dart';
import 'models/powerusageslider2_item_model.dart';
import 'models/powerusageslider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MeasurementDataMeasnodeOnePage extends StatelessWidget {
  MeasurementDataMeasnodeOnePage({Key? key})
      : super(
          key: key,
        );

  MeasurementDataMeasnodeOneController controller = Get.put(
      MeasurementDataMeasnodeOneController(
          MeasurementDataMeasnodeOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.h),
                          child: CustomDropDown(
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 12.v, 8.h, 12.v),
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowDownBlueGray700,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            hintText: "lbl_measnodes".tr,
                            hintStyle: CustomTextStyles.titleSmall_1,
                            items: controller.measurementDataMeasnodeOneModelObj
                                .value.dropdownItemList!.value,
                            contentPadding: EdgeInsets.only(
                              left: 16.h,
                              top: 13.v,
                              bottom: 13.v,
                            ),
                            borderDecoration: DropDownStyleHelper.outlineBlack,
                            onChanged: (value) {
                              controller.onSelected(value);
                            },
                          ),
                        ),
                        SizedBox(height: 29.v),
                        Text(
                          "lbl_overall".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 18.v),
                        _buildPowerDashboardSlider(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex.value,
                              count: controller
                                  .measurementDataMeasnodeOneModelObj
                                  .value
                                  .powerdashboardsliderItemList
                                  .value
                                  .length,
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
                          "lbl_kitchen".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 19.v),
                        _buildPowerUsageSlider(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex1.value,
                              count: controller
                                  .measurementDataMeasnodeOneModelObj
                                  .value
                                  .powerusagesliderItemList
                                  .value
                                  .length,
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
                        SizedBox(height: 29.v),
                        Text(
                          "lbl_sauna".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 18.v),
                        _buildPowerUsageSlider1(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex2.value,
                              count: controller
                                  .measurementDataMeasnodeOneModelObj
                                  .value
                                  .powerusageslider1ItemList
                                  .value
                                  .length,
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
                          "lbl_garage".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 15.v),
                        _buildPowerUsageSlider2(),
                        SizedBox(height: 24.v),
                        Obx(
                          () => Container(
                            height: 8.v,
                            margin: EdgeInsets.only(left: 128.h),
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex3.value,
                              count: controller
                                  .measurementDataMeasnodeOneModelObj
                                  .value
                                  .powerusageslider2ItemList
                                  .value
                                  .length,
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
  Widget _buildPowerDashboardSlider() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
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
        itemCount: controller.measurementDataMeasnodeOneModelObj.value
            .powerdashboardsliderItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          PowerdashboardsliderItemModel model = controller
              .measurementDataMeasnodeOneModelObj
              .value
              .powerdashboardsliderItemList
              .value[index];
          return PowerdashboardsliderItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerUsageSlider() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
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
        itemCount: controller.measurementDataMeasnodeOneModelObj.value
            .powerusagesliderItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          PowerusagesliderItemModel model = controller
              .measurementDataMeasnodeOneModelObj
              .value
              .powerusagesliderItemList
              .value[index];
          return PowerusagesliderItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerUsageSlider1() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
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
        itemCount: controller.measurementDataMeasnodeOneModelObj.value
            .powerusageslider1ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Powerusageslider1ItemModel model = controller
              .measurementDataMeasnodeOneModelObj
              .value
              .powerusageslider1ItemList
              .value[index];
          return Powerusageslider1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerUsageSlider2() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 256.v,
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
        itemCount: controller.measurementDataMeasnodeOneModelObj.value
            .powerusageslider2ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Powerusageslider2ItemModel model = controller
              .measurementDataMeasnodeOneModelObj
              .value
              .powerusageslider2ItemList
              .value[index];
          return Powerusageslider2ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
