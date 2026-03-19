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
            child: Icon(Icons.notifications, color: Color.fromARGB(255, 255, 255, 255)),
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
                Text("Saldo Anda",style: TextStyle(color: Colors.white70)),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            leading: Icon(Icons.arrow_upward, color: Colors.red),
            title: Text("Transfer ke Budi"),
            subtitle: Text("Kemarin"),
            trailing: Text("- Rp 200.000"),
          ),

          ListTile(
            leading: Icon(Icons.arrow_downward, color: Colors.green),
            title: Text("Gaji Masuk"),
            subtitle: Text("2 hari lalu"),
            trailing: Text("+ Rp 5.000.000"),
          ),

          ListTile(
            leading: Icon(Icons.payment, color: Colors.orange),
            title: Text("Bayar Listrik"),
            subtitle: Text("3 hari lalu"),
            trailing: Text("- Rp 150.000"),
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
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
}
