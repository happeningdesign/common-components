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
  });

  final String ticketTypeIconSvgAssets;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.maxFinite,
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TicketHeader(),
          TicketTypeWidget(
            svgAsset: ticketTypeIconSvgAssets,
          ),
          const Divider(),
          const TicketTitleWidget(),
          const Divider(),
          ListView.builder(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return const TicketPriceCard();
            },
            itemCount: 2,
            shrinkWrap: true,
          ),
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
