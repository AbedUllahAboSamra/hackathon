import 'package:flutter/material.dart';

import '../../widgets/products_user.dart';

class SecondTabScreen extends StatelessWidget {
  const SecondTabScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return   prodect_card(ticket_available: '20', title: 'فعاليات مهرجا صوة العرب', data: '2/2/2022', Reservation: '100', imageName: '',);

      },
    );
  }
}
