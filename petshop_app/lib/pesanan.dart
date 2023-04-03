import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
List<Catty> Catties = [];

// ignore: camel_case_types
class pesanan extends StatefulWidget {
  const pesanan({super.key});

  @override
  State<pesanan> createState() => _pesananState();
}

// ignore: camel_case_types
class _pesananState extends State<pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.pink.shade50,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: Catties.map((personone) {
                return Card(
                  child: ListTile(
                    title: Text(personone.patient),
                    subtitle: Text("${personone.phone}\n${personone.address}"),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink.shade900),
                      child: const Icon(Icons.delete),
                      onPressed: () {
                        Catties.removeWhere((element) {
                          return element.id == personone.id;
                        });
                        setState(() {});
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class Catty {
  //modal class for Person object
  String id, patient, phone, address, tip;
  Catty({
    required this.id,
    required this.patient,
    required this.phone,
    required this.address,
    required this.tip,
    // required this.type
  });
}

// ignore: camel_case_types
class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

// ignore: camel_case_types
class _orderState extends State<order> {
  String name = '';
  String phone = '';
  String address = '';
  String tipe = '';

  // ignore: non_constant_identifier_names
  bool Nilaiswitch = false;

  final ctrlName = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlAddress = TextEditingController();
  final ctrltipe = TextEditingController();

  // ignore: non_constant_identifier_names
  Widget Name() {
    return TextFormField(
      maxLines: 1,
      controller: ctrlName,
      decoration: InputDecoration(
        hintText: "Name patient",
        prefixIcon: const Icon(Icons.pets_outlined),
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Phone() {
    return TextFormField(
      maxLines: 1,
      controller: ctrlPhone,
      decoration: InputDecoration(
        hintText: "Phone",
        prefixIcon: const Icon(Icons.phone),
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Address() {
    return TextFormField(
      maxLines: 2,
      controller: ctrlAddress,
      decoration: InputDecoration(
        hintText: "address",
        prefixIcon: const Icon(Icons.home_outlined),
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Type() {
    return TextFormField(
      maxLines: 1,
      controller: ctrltipe,
      decoration: InputDecoration(
        hintText: "Type",
        prefixIcon: const Icon(Icons.home_outlined),
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        fillColor: Colors.white.withOpacity(0.3),
        filled: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.pink.shade50,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.09), BlendMode.dstATop),
                image: const AssetImage('Images/petshop_logo.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Name(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Phone',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Phone(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Address(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Type',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Type(),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                  child: SwitchListTile(
                    title: const Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Acme',
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: const Text(
                        "Aggrement to the privacy policy your request will be processed"),
                    value: Nilaiswitch,
                    activeTrackColor: Colors.grey,
                    activeColor: Colors.brown,
                    onChanged: (value) {
                      setState(() {
                        Nilaiswitch = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  width: 315,
                  height: 45,
                  child: ElevatedButton(
                    // tombol order
                    onPressed: () {
                      setState(() {
                        int panjang = Catties.length + 1;
                        name = ctrlName.text;
                        phone = ctrlPhone.text;
                        address = ctrlAddress.text;
                        tipe = ctrltipe.text;
                        Catties.add(Catty(
                            id: "$panjang",
                            patient: name,
                            phone: phone,
                            address: address,
                            tip: tipe));
                      });
                      final snackBar = SnackBar(
                        content: const Text('Pesanan Anda diterima !'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Text(
                      "Order",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'RussoOne'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),     
    );
  }
}
