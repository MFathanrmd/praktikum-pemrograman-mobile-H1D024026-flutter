import 'package:flutter/material.dart';
import 'produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data Produk'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Tambah Produk',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProdukForm(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: const [
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Icon(Icons.kitchen, color: Colors.blue),
              title: Text(
                'Kulkas',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('Rp 30.000'),
            ),
          ),
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Icon(Icons.sports_esports, color: Colors.green),
              title: Text(
                'Playstation',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('Rp 30.000'),
            ),
          ),
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              leading: Icon(Icons.radio, color: Colors.orange),
              title: Text(
                'Radio',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text('Rp 30.000'),
            ),
          ),
        ],
      ),
    );
  }
}
