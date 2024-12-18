import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_inventory/custom_widgets/date_textfield.dart';
import 'package:purchase_inventory/custom_widgets/textfield.dart';

class TeachingAidsDataTable extends StatefulWidget {
  const TeachingAidsDataTable({super.key});

  @override
  State<TeachingAidsDataTable> createState() => TeachingAidsDataTableState();
}

class TeachingAidsDataTableState extends State<TeachingAidsDataTable> {
  String selectedValue = '1';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController totalcostController = TextEditingController();
  final TextEditingController discountedcostController =
      TextEditingController();
  final TextEditingController dateoforderController = TextEditingController();
  final TextEditingController dateofdeliveryController =
      TextEditingController();
  final TextEditingController remarkController = TextEditingController();

  List<List<String>> submittedData = [];
  int srNo = 1;

  Map<String, String> typeMapping = {
    '1': 'Audio Aids',
    '2': 'Visual Aids',
    '3': 'AV Aids',
    '4': 'Interactive Panels',
    '5': 'Projectors',
    '6': 'Computers',
  };

  void submitData() {
    if (nameController.text.isEmpty ||
        typeController.text.isEmpty ||
        rateController.text.isEmpty ||
        quantityController.text.isEmpty ||
        totalcostController.text.isEmpty ||
        discountedcostController.text.isEmpty ||
        dateoforderController.text.isEmpty ||
        dateofdeliveryController.text.isEmpty ||
        remarkController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill out all required fields.',
        backgroundColor: const Color(0x7EBB2124),
        colorText: Colors.white,
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      );
      return;
    }

    List<String> rowData = [
      srNo.toString(),
      nameController.text,
      typeMapping[selectedValue] ?? '',
      rateController.text,
      quantityController.text,
      totalcostController.text,
      discountedcostController.text,
      dateoforderController.text,
      dateofdeliveryController.text,
      remarkController.text,
      'Fixed Name',
    ];

    setState(() {
      submittedData.add(rowData);
      srNo++;
    });

    nameController.clear();
    typeController.clear();
    rateController.clear();
    quantityController.clear();
    totalcostController.clear();
    discountedcostController.clear();
    dateoforderController.clear();
    dateofdeliveryController.clear();
    remarkController.clear();
    Get.snackbar(
      'Success',
      'Your entry has been submitted.',
      backgroundColor: const Color(0x7E22BB33),
      colorText: Colors.white,
      margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
    );
  }

  void clearData() {
    nameController.clear();
    typeController.clear();
    rateController.clear();
    quantityController.clear();
    totalcostController.clear();
    discountedcostController.clear();
    dateoforderController.clear();
    dateofdeliveryController.clear();
    remarkController.clear();
  }

  void exportData() {}

  @override
  void initState() {
    super.initState();
    typeController.text = selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              CustomTextField(
                  controller: nameController, labelText: 'Name of Aids'),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 45,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: DropdownButtonFormField<String>(
                    value: selectedValue,
                    decoration: InputDecoration(
                      labelText: 'Type',
                      labelStyle: const TextStyle(
                        color: Color(0x7EFFFFFF),
                        fontWeight: FontWeight.bold,
                      ),
                      filled: false,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                    ),
                    dropdownColor: const Color(0xFF181A20),
                    iconEnabledColor: const Color(0xFFFFFFFF),
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                        typeController.text = newValue;
                      });
                    },
                    items: const [
                      DropdownMenuItem(
                        value: '1',
                        child: Center(child: Text('Audio Aids')),
                      ),
                      DropdownMenuItem(
                        value: '2',
                        child: Center(child: Text('Visual Aids')),
                      ),
                      DropdownMenuItem(
                        value: '3',
                        child: Center(child: Text('AV Aids')),
                      ),
                      DropdownMenuItem(
                        value: '4',
                        child: Center(child: Text('Interactive Panels')),
                      ),
                      DropdownMenuItem(
                        value: '5',
                        child: Center(child: Text('Projectors')),
                      ),
                      DropdownMenuItem(
                        value: '6',
                        child: Center(child: Text('Computers')),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              CustomAMTTextField(controller: rateController, labelText: 'Rate'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              CustomTextField(
                  controller: quantityController, labelText: 'Quantity'),
              const SizedBox(width: 10),
              CustomAMTTextField(
                  controller: totalcostController, labelText: 'Total Cost'),
              const SizedBox(width: 10),
              CustomAMTTextField(
                  controller: discountedcostController,
                  labelText: 'Discounted Cost'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              DateField(
                  controller: dateoforderController,
                  labelText: 'Date of Order'),
              const SizedBox(width: 10),
              DateField(
                  controller: dateofdeliveryController,
                  labelText: 'Date of Delivery'),
              const SizedBox(width: 10),
              CustomTextField(
                  controller: remarkController, labelText: 'Remarks'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: submitData,
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 12)),
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const Color(0xFFFCD535);
                        }
                        return const Color(0x13FFFFFF);
                      },
                    ),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const Color(0xFF181A20);
                        }
                        return const Color(0xFFFFFFFF);
                      },
                    ),
                    side: WidgetStateProperty.resolveWith<BorderSide?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const BorderSide(
                              color: Color(0xFFFCD535), width: 1);
                        }
                        return const BorderSide(
                            color: Color(0x7EFFFFFF), width: 1.0);
                      },
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: clearData,
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 12)),
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const Color(0xFFDC3545);
                        }
                        return const Color(0x13FFFFFF);
                      },
                    ),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        return const Color(0xFFFFFFFF);
                      },
                    ),
                    side: WidgetStateProperty.resolveWith<BorderSide?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const BorderSide(
                              color: Color(0xFFDC3545), width: 1);
                        }
                        return const BorderSide(
                            color: Color(0x7EFFFFFF), width: 1);
                      },
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  child: const Text(
                    'Clear',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: exportData,
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 12)),
                    backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const Color(0xFF107C41);
                        }
                        return const Color(0x13FFFFFF);
                      },
                    ),
                    foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const Color(0xFF181A20);
                        }
                        return const Color(0xFFFFFFFF);
                      },
                    ),
                    side: WidgetStateProperty.resolveWith<BorderSide?>(
                      (states) {
                        if (states.contains(WidgetState.hovered)) {
                          return const BorderSide(
                              color: Color(0xFF107C41), width: 1);
                        }
                        return const BorderSide(
                            color: Color(0x7EFFFFFF), width: 1);
                      },
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  child: const Text(
                    'Export to Excel',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 30,
              dataRowColor: WidgetStateProperty.all(const Color(0x13FFFFFF)),
              headingRowColor: WidgetStateProperty.all(const Color(0xFF181A20)),
              dividerThickness: 1.0,
              headingTextStyle: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              dataTextStyle: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              border: TableBorder.all(
                color: const Color(0x7EFFFFFF),
                width: 1.0,
                borderRadius: BorderRadius.circular(5),
              ),
              columns: const [
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Sr. No.')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Name of Aids')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Type')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Rate')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Quantity')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Total Cost')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Discounted Cost')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Date of Order')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Date of Delivery')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Remarks')),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Center(child: Text('Ordered by')),
                  ),
                ),
              ],
              rows: submittedData.map((data) {
                return DataRow(cells: [
                  DataCell(Center(child: Text(data[0]))),
                  DataCell(Center(child: Text(data[1]))),
                  DataCell(Center(child: Text(data[2]))),
                  DataCell(Center(child: Text('₹ ${data[3]}'))),
                  DataCell(Center(child: Text(data[4]))),
                  DataCell(Center(child: Text('₹ ${data[5]}'))),
                  DataCell(Center(child: Text('₹ ${data[6]}'))),
                  DataCell(Center(child: Text(data[7]))),
                  DataCell(Center(child: Text(data[8]))),
                  DataCell(Center(child: Text(data[9]))),
                  DataCell(Center(child: Text(data[10]))),
                ]);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
