import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/app_text_field.dart';
import 'package:components/common_widget/extension/format_price_ext.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPriceSummaryWidget extends StatelessWidget {
  const OrderPriceSummaryWidget({
    super.key,
    this.subTotal,
    this.gatewayFee,
    required this.gst,
    this.totalAmount,
    this.discountPercentage,
    this.discountAmount,
  });

  final String? subTotal;
  final String? gatewayFee;
  final double gst;
  final String? totalAmount;
  final String? discountPercentage;
  final String? discountAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p16,
        //  vertical: Sizes.p16,
      ),
      child: Column(
        children: [
          /*   Row(
            children: [
              Expanded(
                child: AppTextField(
                  hintText: 'Enter code',
                  controller: TextEditingController(),
                ),
              ),
              gapW20,
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.p8),
                  ),
                  backgroundColor: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          gapH24,*/
          /*  const Divider(),*/
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH16,
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      'Subtotal',
                      textStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: AppColors.txtPrimaryColor,
                              ),
                    ),
                  ),
                  AppText(
                    subTotal ?? '11,797',
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.txtPrimaryColor,
                        ),
                  ),
                ],
              ),
              gapH16,
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      'Gateway fee',
                      textStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: AppColors.txtPrimaryColor,
                              ),
                    ),
                  ),
                  AppText(
                    gatewayFee ?? '11,797',
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.txtPrimaryColor,
                        ),
                  ),
                ],
              ),
              gapH16,
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      'CGST (9%)',
                      textStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: AppColors.txtPrimaryColor,
                              ),
                    ),
                  ),
                  AppText(
                    (gst/2).formatPrice(),
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.txtPrimaryColor,
                        ),
                  ),
                ],
              ),
              gapH16,
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      'SGST (9%)',
                      textStyle:
                      Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.txtPrimaryColor,
                      ),
                    ),
                  ),
                  AppText(
                    (gst/2).formatPrice(),
                    textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.txtPrimaryColor,
                    ),
                  ),
                ],
              ),
              gapH16,
              Visibility(
                visible: (discountAmount?.isNotEmpty ?? false),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: AppText(
                              'Discount',
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: AppColors.greenColor,
                                  ),
                            ),
                          ),
                          AppText(
                            '-${discountAmount ?? '11,797'}',
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: AppColors.greenColor,
                                ),
                          ),
                        ],
                      ),
                      gapH16,
                    ]),
              )
            ],
          ),
          const Divider(),
          gapH16,
          Row(
            children: [
              Expanded(
                child: AppText(
                  'Total amount',
                  textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.txtPrimaryColor,
                      ),
                ),
              ),
              AppText(
                totalAmount ?? '11,797',
                textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.txtPrimaryColor,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
