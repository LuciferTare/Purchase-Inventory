import 'package:flutter/material.dart';
import 'package:purchase_inventory/utlis/routes.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => SidebarState();
}

class SidebarState extends State<Sidebar> {
  final List<Map<String, dynamic>> dropdownItems = [
    {'text': 'Botany', 'route': onTapBotany},
    {'text': 'Zoology', 'route': onTapZoology},
    {'text': 'Physics', 'route': onTapPhysics},
    {'text': 'Chemistry', 'route': onTapChemistry},
    {'text': 'Biotechnology', 'route': onTapBiotech},
    {'text': 'Mathematics', 'route': onTapMaths},
    {'text': 'Information Technology', 'route': onTapIT},
    {'text': 'Computer Science', 'route': onTapCS},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: const Color(0x0BFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: TextButton(
                  onPressed: onTapDashboard,
                  child: Text(
                    'Inventory',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Aquatico',
                      color: Color(0xFFFCD535),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/Icons/Department.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 10),
                    PopupMenuButton(
                      offset: const Offset(-22.5, 40),
                      padding: const EdgeInsets.all(0),
                      elevation: 0,
                      color: Colors.transparent,
                      style: const ButtonStyle(
                          overlayColor:
                              WidgetStatePropertyAll(Colors.transparent)),
                      icon: const Text(
                        "Department",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Aquatico',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      itemBuilder: (context) => List.generate(
                        dropdownItems.length,
                        (index) => PopupMenuItem(
                          height: 30,
                          value: index,
                          child: TextButton(
                            style: const ButtonStyle(
                              overlayColor:
                                  WidgetStatePropertyAll(Colors.transparent),
                            ),
                            onPressed: () {
                              dropdownItems[index]['route']();
                            },
                            child: Text(
                              dropdownItems[index]['text'],
                              style: const TextStyle(
                                color: Color(0xFFD9D9D9),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Image.asset(
                  'assets/Icons/SignOut.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                const TextButton(
                  onPressed: onTapLogin,
                  style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: WidgetStatePropertyAll(Colors.transparent)),
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Aquatico',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
