import 'package:flutter/material.dart';
import 'package:flutter_reviewer/flutter_experiment/imm_settings_folder/wallet.dart';

void main() => runApp(const MyWallet());

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Wallet',
      theme: ThemeData.light(),
      home: const MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.qr_code_outlined,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
        actions: const <Widget>[
          TextButton(
            onPressed: null,
            child: Text("Edit", style: TextStyle(color: Colors.blue),),
          ),
        ],
      ),
      body:   Column(
        children: [
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('lib/assets/satoru.jpeg'),
                ),
                const Text(
                  "Chels01",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, height: 2.0),
                ),
                const Text(
                  "+63 9672907561 · @chichi01",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 30.0, left: 15.0, right: 15.0),
                  child: ListTile(
                    title: const Text('My Wallet'),
                    tileColor: Colors.white,
                    leading: const Icon(Icons.attach_money),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context){
                            return const Wallet();
                          }),
                        );
                      },
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                  child: const Column(
                    children: [
                      ListTile(
                        title: Text('Notification and Sounds'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0)),
                        ),
                        leading: Icon(Icons.message_outlined),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        title: Text('Privacy and Security'),
                        tileColor: Colors.white,
                        leading: Icon(Icons.lock),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),

                      ),
                      ListTile(
                        title: Text('Data and Storage'),
                        tileColor: Colors.white,
                        leading: Icon(Icons.folder_copy_outlined),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        title: Text('Language'),
                        tileColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        leading: Icon(Icons.language_sharp),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      )
    );
  }
}
