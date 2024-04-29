import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Booking',
      home: Booking(),
    );
  }
}

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  BookingState createState() => BookingState();
}

class BookingState extends State<Booking> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
        children: [
          const Center(
            child: Text('Booking'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  child: Image.asset(
                  'assets/images/boarding_house1.jpg',
                  height: 150,
                  width: 200,  
                  fit: BoxFit.fill,
                  alignment: Alignment.topLeft,
                  )
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Bedspacer#1', softWrap: true,),
                  const Text('1234 Diaz St., Sta. Cruz', softWrap: true,),
                  const Text('Lorep ipsum dolor sit amet, consectetur adipiscing elit.', softWrap: true,),
                  Row(
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(15),
                          child: Image.asset(
                            'assets/images/profile_pictures1.jpg',
                          ),
                        ),
                      ),
                    const Column(
                      children: [
                        Text('Larry Amet'),
                        Text('Hosting Since 2010'),
                        Text('Owner')
                        ],
                      ),
                      const Icon(
                        Icons.mode_comment,
                        color: Colors.grey,
                        size: 24,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 24,
                      )  
                    ], 
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          Column(
            children: [
              Container(
                child: Column(
                  children: [
                    const Text('Guest Registration'),
                    Row(
                      children: [
                        Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        child: const Text('Open Booking'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        child: const Text('Fixed Booking'),
                      ),
                    )
                      ],
                    )
                    
                  ],
                ),
              ),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_drop_up,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text('2024'),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  
                  children: [
                    // Segmented button
                    Container(
                      constraints: const BoxConstraints(maxWidth: 350),
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: (){

                          }, child: const Text('January')),
                          TextButton(onPressed: (){

                          }, child: const Text('February')),
                          TextButton(onPressed: (){

                          }, child: const Text('March')),
                          TextButton(onPressed: (){

                            }, child: const Text('April')),
                        ],
                      ),
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){

                        }, child: const Text('May')),
                        TextButton(onPressed: (){

                        }, child: const Text('June')),
                        TextButton(onPressed: (){

                        }, child: const Text('July')),
                        TextButton(onPressed: (){

                        }, child: const Text('August')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){

                        }, child: const Text('September')),
                        TextButton(onPressed: (){

                        }, child: const Text('October')),
                        TextButton(onPressed: (){

                        }, child: const Text('November')),
                        TextButton(onPressed: (){

                        }, child: const Text('December')),
                      ],
                    ),
                    const Text('January - December')
                  ],
                ),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          const Column(
            children: [
              Text('Total'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1 month advance 2 month deposit'),
                  Text('P4,500.00')
                ],
              ),
              Row(
                children: [
                  Text('x1,500.00 / month')
                ],//space between
              ),
              Row(
                children: [
                  Text('Miscellaneous'),
                  Text('P500.00')
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 0,
                color: Colors.black,
              ),
              Row(
                children: [
                  Text('Total'),
                  Text('P5,000.00')
                ],
              ),
              Text('Price Breakdown'),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          Column(
            children: [
              const Text('Payment Method'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    }, child: const Text('VISA')),
                    TextButton(onPressed: (){

                    }, child: const Text('G-Cash')),
                    TextButton(onPressed: (){

                    }, child: const Text('Over the Counter')),
                ],
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          Column(
            children: [
              const Text('Cancellation Policy'),
              const Text('Lorem ', softWrap: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  const Text('I understood'),
                  Switch(
                    value: light,
                    activeColor: Colors.green, 
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ],
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.black,
          ),
          Row(
            children: [
              const Column(
                children: [
                  Text('P5,000.00'),
                  Text('One month advance & Two month deposit')
                ],
              ),
              TextButton(onPressed: (){
              }, child: const Text('Review & Confirm')),
            ],
          )
        ],
      ),
      ),
    );
  }
}