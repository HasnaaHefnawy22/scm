import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scm/Services/canteen_services.dart';
import 'package:scm/shared/styles/color.dart';
import 'package:scm/shared/styles/style.dart';

import '../main_screen_child/main_screen_child.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class CanteenMainScreen extends StatefulWidget {
  const CanteenMainScreen({
    super.key,
  });

  @override
  State<CanteenMainScreen> createState() => _CanteenMainScreenState();
}

class _CanteenMainScreenState extends State<CanteenMainScreen> {
  final List<String> sections = [
    'Drinks',
    'Chips',
    'Cakes',
    // 'juice 🧃',
    // 'Sandwiches 🥪',
    // 'Cake 🍰',
    // 'Biscuts 🍪',
  ];
  List<String> prouductName = ['Juhayna Mix berry',
    'Juhayna Orange','Juhayna Mango','Juhayna Apple','Juhayna Chocolate'];
  List prouductImage = [
    'assets/items/mixBarry.jpeg',
    'assets/items/orange.jpeg',
    'assets/items/mango.jpeg',
    'assets/items/apple.jpeg',
    'assets/items/mixChocolet.png'
  ];

  int _selectedSection = 0;
  final List<bool> isBlocked = List.generate(70, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kPrimarywhiteColor,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ' Canteen',
          textAlign: TextAlign.center,
          style: Styles.style25white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
            "Choose category",
            style: Styles.style25,
                    ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "Product Blocking Settings 🚫\n Customize Access for Your Children",
              style:Styles.styleGray15,
            ),
          ),
          // Section chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: sections
                  .asMap()
                  .entries
                  .map((entry) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedSection = entry.key;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            backgroundColor: _selectedSection == entry.key
                                ? kPrimaryColor
                                : kPrimarywhiteColor,
                            label: _selectedSection == entry.key
                                ? Text(
                                    entry.value,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                : Text(
                                    entry.value,
                                    style: const TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 22,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 1.6,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Products for the selected section

                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0),
                        child: Card(
                          color: kPrimaryLightColor,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: Image.asset(prouductImage[index],fit: BoxFit.cover),
                                  height: 100,
                                  width: 100,

                                ),
                                // const CircleAvatar(
                                //   radius: 60,
                                //   backgroundImage: NetworkImage(
                                //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj8jG6wRlt4ftSCKawftxxgayByDUJG7W2JQ&s'),
                                // ),
                                Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      prouductName[index],
                                      style: Styles.styleBold18,
                                    ),
                                    Text(
                                      '0.8 Sugar\n2.5 Blueberry\nFlavor',
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Switch(
                                      activeColor: kPrimaryColor,
                                      activeTrackColor: kPrimarywhiteColor,
                                      inactiveThumbColor:kPrimaryColor,
                                      inactiveTrackColor:kPrimarywhiteColor,
                                      value: isBlocked[
                                          index + (_selectedSection * 10)],
                                      onChanged: (value) {
                                        setState(() {
                                          isBlocked[index +
                                                  (_selectedSection * 10)] =
                                              value;
                                        });
                                      },
                                    ),
                                     Text(
                                      'Block',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MainScreenChild()));}, child: Text(
              'Confirm',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )),
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //       left: MediaQuery.sizeOf(context).width / 5, top: 5),
          //   child: Container(
          //     height: 50,
          //     width: 250,
          //     decoration: BoxDecoration(
          //         color: kPrimaryColor,
          //         borderRadius: BorderRadius.circular(15)),
          //     child: const Center(
          //       child: Text(
          //         'Confirm',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 22,
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}



// FutureBuilder(
//             future: services().getBloodRequests(),
//             builder: (context, snapshot) {
//               return (snapshot.data == null)
//                   ? const Center(
//                       child: Padding(
//                       padding: EdgeInsets.only(bottom: 10.0),
//                       child: SizedBox(
//                         height: 120,
//                         width: 120,
//                         child: CircularProgressIndicator(
//                           color: primaryColor,
//                           strokeWidth: 8,
//                         ),
//                       ),
//                     ))
//                   : ListView.builder(
//                       itemCount: snapshot.data!.length,
//                       itemBuilder: (context, index) {
//                         return RequestBloodWidget(
//                             bloodRequestModel: snapshot.data![index]);
//                       },
//                     );
//             },
//           )),
    