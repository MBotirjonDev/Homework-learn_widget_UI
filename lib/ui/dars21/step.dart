import 'package:flutter/material.dart';
import 'package:homework/ui/dars21/water_page.dart';

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  _StepsState createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  String? username;
  List<Step> steplarimiz = [];
  TextEditingController _userController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  int _activeStep = 0;
  bool hato = false;
  var _keyUsername = GlobalKey<FormFieldState>();
  var _keyEmail = GlobalKey<FormFieldState>();
  var _keyPassword = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    steplarimiz = _stepda();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(
            color: Colors.pink,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: main_widget(),
    );
  }

  Widget main_widget() {
    return SingleChildScrollView(
      child: Stepper(
        type: StepperType.vertical,
        physics: ScrollPhysics(),
        currentStep: _activeStep,
        steps: steplarimiz,
        onStepTapped: (bosilganStep) {
          setState(() {
            _activeStep = bosilganStep;
          });
        },
        onStepContinue: () {
          if (_activeStep < steplarimiz.length) {
            if (_keyUsername.currentState!.validate() && _activeStep == 0) {
              setState(() {
                _activeStep += 1;
              });
            }
            if (_keyEmail.currentState!.validate() && _activeStep == 1) {
              setState(() {
                _activeStep += 1;
              });
            }
            if (_keyPassword.currentState!.validate() && _activeStep == 2) {
              setState(() {
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WaterPage(user: username),
                ),
              );
                //_activeStep += 1;
              });
            }
           
          }
        },
        onStepCancel: () {
          if (_activeStep > 0) {
            setState(() {
              _activeStep -= 1;
            });
          }
        },
      ),
    );
  }

  List<Step> _stepda() {
    return [
      // Step UserName
      Step(
        isActive: _activeStep == 0 ? true : false,
        title: Text("Username Kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyUsername,
            controller: _userController,
            validator: (text) {
              if (text!.length < 5) {
                return "Kamida 5 ta belgi kiriting";
              }
            },
            onChanged: (value){setState(() {
              username = value;
            });},
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Username...",
              labelText: "Username",
            ),
          ),
        ),
        subtitle: Text("Usernameni Shu Yerda Kiriting"),
        state: _steplarniTekshir(0),
      ),
      // Step Email
      Step(
        isActive: _activeStep == 1 ? true : false,
        title: Text("Email Kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyEmail,
            controller: _emailController,
            validator: (text) {
              if (text!.length < 5) {
                return "Kamida 5 ta belgi kiriting";
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email...",
              labelText: "Email",
            ),
          ),
        ),
        subtitle: Text("Emailni Shu Yerda Kiriting"),
        state: _steplarniTekshir(1),
      ),
      // Step Password
      Step(
        isActive: _activeStep == 2 ? true : false,
        title: Text("Password Kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyPassword,
            controller: _passwordController,
            validator: (text) {
              if (text!.length < 5) {
                return "Kamida 5 ta belgi kiriting";
              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password...",
              labelText: "Password",
            ),
          ),
        ),
        subtitle: Text("Passwordni Shu Yerda Kiriting"),
        state: _steplarniTekshir(2),
      ),
    ];
  }

  _steplarniTekshir(int stepIndex) {
    if (_activeStep == stepIndex) {
      print("IF Bajarildi");
      if (hato) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }
}
