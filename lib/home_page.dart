import 'package:flutter/material.dart';
import 'package:search_your_flight/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[400],
          centerTitle: true,
          title:
              const Text('Search Your Flight', style: AppTextStyle.appstyle1),
          bottom: const TabBar(tabs: [
            Column(
              children: [
                Tab(
                  icon:
                      Icon(Icons.flight_rounded, color: Colors.white, size: 30),
                ),
                Text('Flights', style: AppTextStyle.appstyle2),
              ],
            ),
            Column(
              children: [
                Tab(
                  icon: Icon(Icons.location_on_outlined,
                      color: Colors.white, size: 30),
                ),
                Text('Hotels', style: AppTextStyle.appstyle2),
              ],
            ),
            Column(
              children: [
                Tab(
                  icon: Icon(Icons.local_taxi_outlined,
                      color: Colors.white, size: 30),
                ),
                Text('Car Hires', style: AppTextStyle.appstyle2),
              ],
            ),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            
            children: [
              const Text('Be inspired', style: AppTextStyle.appstyle3),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.widgets_outlined,
                      color: Colors.blue[400],
                    ),
                    labelText: 'Need help where to go?',
                    hintText: 'Find Great Destinations',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.app_registration_outlined,
                      color: Colors.blue[400],
                    ),
                    labelText: 'Need help where to go?',
                    hintText: 'Find Great Destinations',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(height: 10),
              const Text('Explorer', style: AppTextStyle.appstyle3),
              const SizedBox(height: 10),
             Row(
                 
                children: [
                  Expanded(child: Image.asset('assets/b2 1.png')),
                  Expanded(child: Image.asset('assets/b2 1.png')),
                ],),
        
            ],
          ),
        ),
      ),
    );
  }
}
