import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],

      // appBar: AppBar
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: const Text(
          "Livin' by Mandiri",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            letterSpacing: 1,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),

      // body
      body: ListView(
        children: [
          // saldo
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue[700],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Saldo Anda", style: TextStyle(color: Colors.white70)),
                SizedBox(height: 8),
                Text(
                  "Rp 20.000.000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // menu
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                // row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    menuItem(Icons.send, "Transfer"),
                    menuItem(Icons.payment, "bayar"),
                    menuItem(Icons.phone_android, "Pulsa"),
                    menuItem(Icons.account_balance, "Top Up"),
                  ],
                ),
                const SizedBox(height: 20),
                // row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    menuItem(Icons.account_balance_wallet, "Tagihan"),
                    menuItem(Icons.qr_code_scanner, "Scan QR"),
                    menuItem(Icons.receipt_long, "Riwayat"),
                    menuItem(Icons.settings, "Lainnya"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // list transaksi
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Transaksi Terakhir",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          // LISTVIEW ITEM
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red[100],
              child: Icon(Icons.arrow_upward, color: Colors.red),
            ),
            title: const Text(
              "Transfer ke Budi",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Kemarin"),
            trailing: const Text(
              "- Rp 200.000",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green[100],
              child: Icon(Icons.arrow_downward, color: Colors.green),
            ),
            title: const Text(
              "Gaji Masuk",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("2 hari lalu"),
            trailing: const Text(
              "+ Rp 5.000.000",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange[100],
              child: Icon(Icons.payment, color: Colors.orange),
            ),
            title: const Text("Bayar Listrik"),
            subtitle: const Text("3 hari lalu" ),
            trailing: const Text("- Rp 150.000 ", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  // widget menu item
  static Widget menuItem(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.blue[900], size: 28),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
