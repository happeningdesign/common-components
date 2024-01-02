import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/component/benefits_widget.dart';
import 'package:components/common_widget/component/quantity_widget.dart';
import 'package:components/common_widget/ticket_header.dart';
import 'package:components/common_widget/ticket_price_card.dart';
import 'package:components/common_widget/ticket_title_widget.dart';
import 'package:components/common_widget/ticket_type_widget.dart';
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
          TicketHeader(),
          TicketTypeWidget(
            svgAsset: ticketTypeIconSvgAssets,
          ),
          Divider(),
          TicketTitleWidget(),
          Divider(),
          ListView.builder(
            itemBuilder: (context, index) {
              return TicketPriceCard();
            },
            itemCount: 2,
            shrinkWrap: true,
          ),
          BenefitsWidget(),
          Divider(),
          QuantityWidget()
        ],
      ),
    );
  }
}
