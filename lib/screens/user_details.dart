import 'package:flutter/material.dart';

/*
class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  // The state will contain all the information entered by the user regarding their
  // fitness level + goals1
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _fitnessExp = TextEditingController();
  RestorableBoolN weightLoss = RestorableBoolN(false);
  RestorableBoolN gainMuscle = RestorableBoolN(false);
  RestorableBoolN bodyRecomp = RestorableBoolN(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                'Please not that these questions will help us provide you with people similar to you'),
            TextFormField(
              controller: _name,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Please enter your full name',
                labelText: 'Name *',
              ),
            ),
            TextFormField(
              controller: _age,
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today),
                hintText: 'Please enter your age',
                labelText: 'Age *',
              ),
            ),
            TextFormField(
              controller: _fitnessExp,
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_view_month_sharp),
                hintText: 'Please enter the years of gym experience',
                labelText: 'Gym experience *',
              ),
            ),
            Row(children: [Checkbox(
            value: weightLoss.value,
            onChanged: (value) {
              setState(() {
                weightLoss.value = value;
              });
            },
          ),
           Checkbox(
            value: gainMuscle.value,
            onChanged: (value) {
              setState(() {
                gainMuscle.value = value;
              });
            },
          ),
           Checkbox(
            value: bodyRecomp.value,
            onChanged: (value) {
              setState(() {
                bodyRecomp.value = value;
              });
            },
          ),],)
          ],
        ),
      ),
    );
  }
}
*/
class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _fitnessExp = TextEditingController();
  bool? weightLoss = false;
  bool? gainMuscle = false;
  bool? bodyRecomp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: _name,
                    decoration: InputDecoration(
                        hintText: "John Doe",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Full name",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextFormField(
                    controller: _age,
                    decoration: InputDecoration(
                        hintText: "Enter your age",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Age",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextFormField(
                    controller: _fitnessExp,
                    decoration: InputDecoration(
                        hintText: "Fitness experience",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Please enter the years of gym experience",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  Column(children: [
                    Text('Please select all that apply to your fitness goals',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Row(
                      children: [
                        Text('Weightloss',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Checkbox(
                            value: this.weightLoss,
                            onChanged: (bool? value) {
                              setState(() {
                                this.weightLoss = value;
                              });
                            }),
                        Text('Gain Muscle',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            )),
                        Checkbox(
                            value: this.gainMuscle,
                            onChanged: (bool? value) {
                              setState(() {
                                this.gainMuscle = value;
                              });
                            }), 
                            Text('Body Recomp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            )),
                        Checkbox(
                            value: this.bodyRecomp,
                            onChanged: (bool? value) {
                              setState(() {
                                this.bodyRecomp = value;
                              });
                            })//Checkbox],)
                      ],
                    )
                  ]),
                  Container(width: MediaQuery.of(context).size.width / 1.4,)
                ])));
  }
}
