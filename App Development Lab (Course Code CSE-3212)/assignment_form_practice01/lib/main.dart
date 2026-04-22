import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController rollController = TextEditingController();
  final TextEditingController regController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();

  String? bloodGroup;
  String? gender;

  String submittedData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BU CSE 9 Form"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 106, 186, 226),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Name Field
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: rollController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.confirmation_number),
                      labelText: "Roll",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: regController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.app_registration),
                      labelText: "Reg No",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
              value: bloodGroup,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.bloodtype),
                labelText: "Select Blood Group",
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: "A+", child: Text("A+")),
                DropdownMenuItem(value: "B+", child: Text("B+")),
                DropdownMenuItem(value: "O+", child: Text("O+")),
                DropdownMenuItem(value: "AB+", child: Text("AB+")),
              ],
              onChanged: (val) {
                setState(() {
                  bloodGroup = val;
                });
              },
            ),
            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
              value: gender,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.people),
                labelText: "Select Gender",
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: "Male", child: Text("Male")),
                DropdownMenuItem(value: "Female", child: Text("Female")),
              ],
              onChanged: (val) {
                setState(() {
                  gender = val;
                });
              },
            ),
            const SizedBox(height: 16),

            TextFormField(
              controller: phoneController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: "Enter phone number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            TextFormField(
              controller: aboutController,
              maxLines: 3,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.info),
                labelText: "About Me",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  submittedData =
                      "Name: ${nameController.text}\n"
                      "Roll: ${rollController.text}\n"
                      "Reg No: ${regController.text}\n"
                      "Blood Group: ${bloodGroup ?? ''}\n"
                      "Gender: ${gender ?? ''}\n"
                      "Phone: ${phoneController.text}\n"
                      "About: ${aboutController.text}";
                });

                nameController.clear();
                rollController.clear();
                regController.clear();
                phoneController.clear();
                aboutController.clear();
                bloodGroup = null;
                gender = null;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 20),

            if (submittedData.isNotEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade50,
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  submittedData,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}