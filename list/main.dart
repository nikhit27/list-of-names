import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class list extends StatefulWidget {
  @override
  listState createState() {
    return new listState();
  }
}

class listState extends State<list> {
  Widget bodydata() => DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text("Item Name:"),
              numeric: false,
              onSort: (i, b) {},
              tooltip: " To display name of the item",
            ),
            DataColumn(
              label: Text("Quantity:"),
              numeric: false,
              onSort: (i, b) {},
              tooltip: " To display quantity of the item",
            ),
          ],
          rows: names
              .map((name) => DataRow(
                    onSelectChanged: (b) {},
                    cells: [
                      DataCell(
                        Text(name.itemname),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text(name.quantity),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                    ],
                  ))
              .toList());
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list of items"),
      ),
    );
  }
}

class Item {
  String itemname;
  String quantity;
  Item({this.itemname, this.quantity});
}

var names = <Item>[
  Item(itemname: "Pasupu (turmeric powder)", quantity: "150 gm"),
  Item(itemname: "kumkum", quantity: "150 gm"),
  Item(itemname: "Dry Betel nuts(vakkalu)", quantity: "100 gm"),
  Item(itemname: "Turmeric roots", quantity: "100 gm"),
  Item(itemname: "towels", quantity: "2"),
  Item(itemname: "Blouse pieces", quantity: "2"),
  Item(itemname: "Agarbatti packet", quantity: "1"),
  Item(itemname: "Gandham", quantity: "1 pack"),
  Item(itemname: "Candy suage(patikibellam)", quantity: "100 gm"),
  Item(itemname: "Vari pellalu", quantity: "100 gm"),
  Item(itemname: "Navadhanyalu", quantity: "100 gm"),
  Item(itemname: "cotton wicks", quantity: "q pack"),
  Item(itemname: "Thread", quantity: "1 "),
  Item(itemname: "Honey", quantity: "100 gm"),
  Item(itemname: "jagerry(Bellam)", quantity: "250 gm"),
  Item(itemname: "Cow Ghee", quantity: "1 kg"),
  Item(itemname: "Vari pindi", quantity: "100 gm"),
  Item(itemname: "Atukulu(poha)", quantity: "150 gm"),
  Item(itemname: "Dry coconut", quantity: "100 gm"),
  Item(itemname: "Kaju ", quantity: "50 gm"),
  Item(itemname: "Kishmish", quantity: "50 gm"),
  Item(itemname: "Homam powder", quantity: "250 gm"),
  Item(itemname: "Fresh cocnuts", quantity: "5 "),
  Item(itemname: "flowers", quantity: "500 gm"),
  Item(itemname: "Sugarcane pieces", quantity: "2 big"),
  Item(itemname: "Trays", quantity: "4"),
  Item(itemname: "Glasses", quantity: "4"),
  Item(itemname: "Cow milk ", quantity: "1 litre"),
  Item(itemname: "curd", quantity: "100 gm"),
  Item(itemname: "Bananas", quantity: "2 dozens"),
  Item(itemname: "Betel leaves", quantity: "200 number"),
  Item(itemname: "Fruits", quantity: "5 varieties"),
  Item(itemname: "Coins ", quantity: "150 count"),
  Item(itemname: "Rice", quantity: "3 kgs"),
  Item(itemname: "Rose water", quantity: "1 Bottle"),
  Item(itemname: "Scent", quantity: "1 Bottle"),
];
