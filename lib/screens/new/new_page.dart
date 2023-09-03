import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text('630710331',
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuizView() {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Question 2 of 2',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'What is capital of France?',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 16.0),

            _buildOption('Berlin', Icons.looks_one,false),
            _buildOption('London',Icons.looks_two,false ),
            _buildOption('Madrid',Icons.looks_3,false),
            _buildOption('Paris',Icons.looks_4,true),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String optionText, IconData icon, bool isSelected) {
    Color iconColor = isSelected ? Colors.red : Colors.black;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: ListTile(
            leading: icon != null ? Icon(icon, color: iconColor) : null,
            title: Text(optionText),
            trailing: Radio(
              value: optionText,
              groupValue: null,
              onChanged: null,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonPanel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () {
                  // เพิ่มโค้ดที่ต้องการให้ทำเมื่อปุ่มถูกแตะที่นี่
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewPage(), // NewPage เป็นหน้าใหม่ที่คุณต้องการไป
                    ),
                  );
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            SizedBox(width: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () {
                  // เพิ่มโค้ดที่ต้องการให้ทำเมื่อปุ่มถูกแตะที่นี่
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NewPage(), // NewPage เป็นหน้าใหม่ที่คุณต้องการไป
                    ),
                  );
                },
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
