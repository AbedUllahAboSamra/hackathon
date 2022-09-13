import 'package:hackathon_project/model/EventChart.dart';

class FaliaModel {

  String name;
  String companyName;
  String type;
  int ticketPrice;
  int numberOfTickets;
  String aboutCompany;
  String faliaDescrebtion;


  late List<EventChart>? eventchart;
  late List<dynamic>? imagesUrl;

  FaliaModel({
    required this.name,
    required this.companyName,
    required this.ticketPrice,
    required this.type,
    required this.numberOfTickets,
    required this.aboutCompany,
    required this.faliaDescrebtion,
    required this.eventchart,
    required this.imagesUrl,
  });


}