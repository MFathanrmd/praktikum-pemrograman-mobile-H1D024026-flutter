import 'package:flutter/material.dart';
import 'package:router_flutter/bloc/produk_bloc.dart';
import 'package:router_flutter/model/produk.dart';
import 'package:router_flutter/ui/produk_form.dart';
import 'package:router_flutter/ui/produk_page.dart';
import 'package:router_flutter/widget/warning_dialog.dart';

class ProdukDetail extends StatefulWidget {
  final Produk? produk;

  const ProdukDetail({Key? key, this.produk}) : super(key: key);

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kode : ${widget.produk?.kodeProduk ?? ''}",
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Nama : ${widget.produk?.namaProduk ?? ''}",
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Harga : Rp. ${widget.produk?.hargaProduk?.toString() ?? '0'}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _tombolHapusEdit(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tombolHapusEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tombol Edit
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.blue),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: const Text("EDIT"),
          onPressed: () {
            if (widget.produk != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProdukForm(
                    produk: widget.produk!,
                  ),
                ),
              );
            }
          },
        ),
        const SizedBox(width: 16),
        // Tombol Hapus
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.red),
            foregroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: const Text("DELETE"),
          onPressed: () => confirmHapus(),
        ),
      ],
    );
  }

  void confirmHapus() {
    AlertDialog alertDialog = AlertDialog(
      content: const Text("Yakin ingin menghapus data ini?"),
      actions: [
        // Tombol hapus
        OutlinedButton(
          child: const Text("Ya"),
          onPressed: () {
            if (widget.produk?.id != null) {
              ProdukBloc.deleteProduk(id: widget.produk!.id).then((value) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const ProdukPage()),
                );
              }, onError: (error) {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) => const WarningDialog(
                    description: "Hapus data gagal, silakan coba lagi",
                  ),
                );
              });
            } else {
              Navigator.pop(context);
            }
          },
        ),
        // Tombol batal
        OutlinedButton(
          child: const Text("Batal"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }
}
