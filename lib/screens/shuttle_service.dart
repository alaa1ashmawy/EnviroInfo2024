import 'package:enviro_info/widgets/bus_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShuttleService extends StatefulWidget {
  const ShuttleService({super.key});

  @override
  _ShuttleServiceState createState() => _ShuttleServiceState();
}

class _ShuttleServiceState extends State<ShuttleService> {
 

List <BusDetails> _data =List.from(bus);

  @override
 
    Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'EnviroInfo',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.grey[300],
        centerTitle: true,
      ),
      
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 175,
            color: Colors.green,
            child: Center(
              child: Text(
                'Shuttle Bus Details',
                style: GoogleFonts.montserrat(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(child: Container(
          
            child: _buildUi(),
          ),
          ),
        ],
      ),
       
     
    );
  }
  Widget _buildUi(){
    return SafeArea(
      child: SizedBox.expand(
        child: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
          child: DataTable(
          columns: _createColumns(), 
          rows:_createRows()
        ),
          ),
          ),
    );
  }
  List <DataColumn> _createColumns(){
    return [
      DataColumn(label: Text("Company Name")),
      DataColumn(label: Text("Pickup Time")),
      DataColumn(label: Text("Departure Time")),
      DataColumn(label: Text("Pickup/DropOff Location")),
      DataColumn(label: Text("Area of Location")),
    ];
  }
  List <DataRow> _createRows(){
    return _data.map((e){
      return DataRow(
        cells:[
          DataCell(Text(e.cmpName,),),
          DataCell(Text(e.dateTime_pickup),),
          DataCell(Text(e.dateTime_depart),),
          DataCell(Text(e.loc),),
          DataCell(Text(e.area),),
        ],
        
        );
    }).toList() ;
    }
    
  }


