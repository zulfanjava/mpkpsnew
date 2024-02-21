import 'package:flutter/material.dart';

class EmployeeFormScreen extends StatefulWidget {
  const EmployeeFormScreen({Key? key}) : super(key: key);

  @override
  _EmployeeFormScreenState createState() => _EmployeeFormScreenState();
}

class _EmployeeFormScreenState extends State<EmployeeFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _employeeNameController = TextEditingController();
  final _employeeIdController = TextEditingController();
  final _employeePositionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Employee"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _employeeNameController,
                decoration: const InputDecoration(
                  labelText: 'Enter employee name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter employee name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _employeeIdController,
                decoration: const InputDecoration(
                  labelText: 'Enter employee ID',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter employee ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _employeePositionController,
                decoration: const InputDecoration(
                  labelText: 'Enter employee position',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter employee position';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
