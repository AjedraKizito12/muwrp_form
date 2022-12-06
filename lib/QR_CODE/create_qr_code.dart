import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateQRCode extends StatefulWidget {
  const CreateQRCode({Key? key}) : super(key: key);

  @override
  State<CreateQRCode> createState() => _CreateQRCodeState();
}

class _CreateQRCodeState extends State<CreateQRCode> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.scanner,
          color: Colors.red,
          size: 30,
        ),
        title: const Text(
          "Scan The QR code below",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(
            children: [
              QrImage(
                data: controller.text,
                size: 200,
                backgroundColor: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter the code you wanna encrypt",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildTextField(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        onChanged: (val) {
          setState(() {
            controller.text = val;
          });
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          focusColor: Colors.black45,
          labelText: 'Enter the text to encode in the QR',
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.greenAccent,
              )),
          suffixIcon: IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.done, size: 30),
            color: Colors.green,
          ),
        ),
        style: const TextStyle(color: Colors.white),
      );
}
