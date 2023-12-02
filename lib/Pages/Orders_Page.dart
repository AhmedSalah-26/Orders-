import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled7/Pages/pendingPage.dart';

import '../Items.dart';
import '../Model.dart';
import 'CompletedPage.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title:
            Column(
              children: [
                Text(
                    "Orders",
                    style: GoogleFonts.aladin(
                      color: Colors.deepOrange,
                      fontSize: 45,
                    )
                ),
                Divider(thickness: 5),

              ],
            ),
            bottom: TabBar(
              labelColor: Colors.deepOrange,

              dividerColor: Colors.black54,
              indicatorColor: Colors.deepOrange,
              tabs: [
                Tab(child: Text("Pending Orders",  style: GoogleFonts.aladin(
                  color: Colors.deepOrange,
                  fontSize: 20,
                ),)),
                Tab(child: Text("'Completed Orders'",  style: GoogleFonts.aladin(
                  color: Colors.deepOrange,
                  fontSize: 20,
                ),)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Pending_orders_Page(),
              Completed_orders_page(),


            ],
          ),
        ),
      ),
    );
  }
}

