class BusDetails {
  final String cmpName;
  final String dateTime_pickup;
  final String dateTime_depart;
  final String loc;
  final String area;


  // final int day;

  BusDetails({
    required this.cmpName,
    required this.dateTime_pickup,
    required this.dateTime_depart,
    required this.loc,
    required this.area,
  });
}

List<BusDetails> bus =[
  BusDetails(cmpName: 'cmpName', dateTime_pickup: '8:30', dateTime_depart: '5:30', loc: 'City center almaza ',area:'Helioplis'),
  BusDetails(cmpName: 'cmpName', dateTime_pickup: '8:35', dateTime_depart: '5:30', loc: 'Zahraa el Maadi',area:'Maadi'),
  BusDetails(cmpName: 'cmpName', dateTime_pickup: '8:40', dateTime_depart: '5:30', loc: 'Waterway',area:'5th Settlement'),
  BusDetails(cmpName: 'cmpName', dateTime_pickup: '8:45', dateTime_depart: '5:30', loc: 'Opera House',area:'Zamalek'),
  BusDetails(cmpName: 'cmpName', dateTime_pickup: '8:50', dateTime_depart: '5:30', loc: 'Childrens Park',area:'Madinet Nasr'),
];