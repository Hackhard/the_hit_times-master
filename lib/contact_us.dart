import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  ContactUsState createState() {
    return new ContactUsState();
  }
}

class ContactUsState extends State<ContactUs> {
  final Cname = TextEditingController();
  final Cmail = TextEditingController();
  final Croll = TextEditingController();
  final Cstory = TextEditingController();


  void dispose() {
    // TODO: implement dispose
    Cstory.dispose();
    Croll.dispose();
    Cmail.dispose();
    Cname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //body: new SafeArea(
        //top: false,
        //bottom: false,
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Padding(padding: EdgeInsets.all(0.0)),
                  Container(
                    padding: EdgeInsets.only(left: 21.5,right: 21.5,top: 10.0),
                    child: Text(
                        "Got Something interesting to share."
                            "\nWrite to us.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Anson",
                        ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    hintText: "Name *",
                  ),
                  controller: Cname,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.mail),
                title: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    hintText: "Email *",
                  ),
                  controller: Cmail,
                  validator: (val) => !val.contains('@') ? 'Not a valid email.' : null,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.child_care),
                title: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    hintText: "Roll Number *",
                  ),
                  controller: Croll,
                ),
              ),
              const SizedBox(height: 5.0),
              Padding(
                padding: EdgeInsets.all(10.0),
                child:TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Tell us about the happening',
                  helperText: 'Keep it short, we will contact for the rest.',
                  labelText: 'Story',
                ),
                controller: Cstory,
                maxLines: 3,
              ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                onPressed: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // Retrieve the text the user has typed in using our
                        // TextEditingController
                        content: Text(Cname.text+Cmail.text+Croll.text+Cstory.text),
                      );
                    },
                  );
                },
                elevation: 1.5,
                child: Icon(
                    Icons.send,
                    color: Colors.white,
                ),
                color: Colors.green,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              const Divider(
                height: 1.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Version: Dev\n"
                        "\u00a9 HIT TIMES "
                        "Coders Team",
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
