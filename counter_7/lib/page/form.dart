import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class Budget {
  String judul;
  int nominal;
  String tipe;
  DateTime date;

  Budget(this.judul, this.nominal, this.tipe, this.date);
}

List<Budget> budgetList = <Budget>[];

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String _tipe = "Pengeluaran";
  List<String> _banyakTipe = ['Pengeluaran', 'Pemasukan'];
  DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      drawer: const MyDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Judul",
                    // Menambahkan icon agar lebih intuitif
                    // Menambahkan circular border agar lebih rapi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  // Menambahkan behavior saat data disimpan
                  onSaved: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Judul tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Nominal",
                    // Menambahkan icon agar lebih intuitif
                    // Menambahkan circular border agar lebih rapi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? value) {
                    setState(() {
                      _nominal = int.parse(value!);
                    });
                  },
                  // Menambahkan behavior saat data disimpan
                  onSaved: (String? value) {
                    setState(() {
                      _nominal = int.parse(value!);
                    });
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Pilih Jenis',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  value: _tipe,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: _banyakTipe.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Center(
                        child: Text(
                          items,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _tipe = newValue!;
                    });
                  },
                ),
              ),
              ListTile(
                shape: BeveledRectangleBorder(
                  side: BorderSide(width: 1)
                ),
                title: Text(_date == null
                    ? 'Silahkan memilih tanggalnya'
                    : 'Tanggal: ' + _date.toString()),
                trailing: ElevatedButton(
                  child: const Text(
                    "Pilih",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    ).then((date) {
                      setState(() {
                        _date = date!;
                      });
                    });
                  },
                ),
              ),
             ]),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: TextButton(
          child: const Text(
            "Simpan",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              budgetList.add(Budget(_judul, _nominal, _tipe, _date));
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Success'),
                    content: Text("Budget berhasil ditambahkan!"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Oke"),
                      )
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
