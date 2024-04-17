import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/component/benefits_widget.dart';
import 'package:components/common_widget/component/quantity_widget.dart';
import 'package:components/common_widget/ticket_header.dart';
import 'package:components/common_widget/ticket_price_card.dart';
import 'package:components/common_widget/ticket_title_widget.dart';
import 'package:components/common_widget/ticket_type_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({
    super.key,
    required this.ticketTypeIconSvgAssets,
    this.isMostPopular = false,
    this.width,
  });

  final String ticketTypeIconSvgAssets;
  final bool isMostPopular;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: width ?? double.maxFinite,
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: isMostPopular,
            child: const TicketHeader(),
          ),
          TicketTypeWidget(
            svgAsset: ticketTypeIconSvgAssets,
          ),
          const Divider(),
          const TicketTitleWidget(),
          const Divider(),
          ListView.separated(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return const TicketPriceCard();
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 2,
            shrinkWrap: true,
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(Sizes.p16),
            child: BenefitsWidget(),
          ),
          const Divider(),
          const QuantityWidget()
        ],
      ),
    );
  }
}
