import 'package:flutter/material.dart';
import 'package:router_flutter/bloc/logout_bloc.dart';
import 'package:router_flutter/bloc/produk_bloc.dart';
import 'package:router_flutter/model/produk.dart';
import 'package:router_flutter/ui/login_page.dart';
import 'package:router_flutter/ui/produk_detail.dart';
import 'package:router_flutter/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Produk'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              child: const Icon(Icons.add, size: 26.0),
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProdukForm()),
                );
              },
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.account_circle, size: 48, color: Colors.white),
                  SizedBox(height: 8),
                  Text(
                    'TokoKita',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'M Fathan Ramdani - H1D024026',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Logout'),
              trailing: const Icon(Icons.logout),
              onTap: () async {
                await LogoutBloc.logout().then((value) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                });
              },
            )
          ],
        ),
      ),
      body: FutureBuilder<List>(
        future: ProdukBloc.getProduks(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            // Jika backend offline atau error saat testing, tampilkan fallback daftar offline
            return _buildOfflineFallbackList();
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          return snapshot.hasData && snapshot.data!.isNotEmpty
              ? ListProduk(list: snapshot.data)
              : _buildOfflineFallbackList();
        },
      ),
    );
  }

  Widget _buildOfflineFallbackList() {
    final offlineList = [
      Produk(id: 1, kodeProduk: 'A001', namaProduk: 'Kamera', hargaProduk: 5000000),
      Produk(id: 2, kodeProduk: 'A002', namaProduk: 'Kulkas', hargaProduk: 2500000),
      Produk(id: 3, kodeProduk: 'A003', namaProduk: 'Mesin Cuci', hargaProduk: 2000000),
    ];
    return ListProduk(list: offlineList);
  }
}

class ListProduk extends StatelessWidget {
  final List? list;

  const ListProduk({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list!.length,
      itemBuilder: (context, i) {
        return ItemProduk(
          produk: list![i],
        );
      },
    );
  }
}

class ItemProduk extends StatelessWidget {
  final Produk produk;

  const ItemProduk({Key? key, required this.produk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              produk: produk,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListTile(
          title: Text(
            produk.namaProduk ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Rp. ${produk.hargaProduk?.toString() ?? '0'}"),
        ),
      ),
    );
  }
}
