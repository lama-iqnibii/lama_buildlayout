import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Center',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.blue,
            child: Column(
              children: [
                Container(height: 12),
                Row(
                  children: [
                    Container(width: 12),
                    Image.asset(
                      'images/profile.png',
                      width: 50,
                      height: 50,
                    ),
                    Container(width: 12),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Mausam Rayamajhi',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'A trendsetter',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.edit, color: Colors.white),
                    Container(width: 12),
                  ],
                ),
                Container(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '846',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Collect', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '51',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Attention', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '267',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Track', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '39',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Coupons', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
                Container(height: 12),
              ],
            ),
          ),

          Container(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.account_balance_wallet),
                  Text('Wallet'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_shipping),
                  Text('Delivery'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.message),
                  Text('Message'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.monetization_on),
                  Text('Service'),
                ],
              ),
            ],
          ),

          Container(height: 20),

          MenuItem(
            icon: Icons.location_on,
            color: Colors.deepPurple,
            title: 'Address',
            subtitle: 'Ensure your harvesting address',
          ),
          MenuItem(
            icon: Icons.lock,
            color: Colors.pink,
            title: 'Privacy',
            subtitle: 'System permission change',
          ),
          MenuItem(
            icon: Icons.layers,
            color: Colors.orange,
            title: 'General',
            subtitle: 'Basic functional settings',
          ),
          MenuItem(
            icon: Icons.notifications,
            color: Colors.teal,
            title: 'Notification',
            subtitle: 'Take over the news in time',
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;

  MenuItem({
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 70,
        child: Row(
          children: [
            Container(width: 12),
            Icon(icon, color: color),
            Container(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(subtitle, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
            Container(width: 12),
          ],
        ),
      ),
    );
  }
}