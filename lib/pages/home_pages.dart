import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Center(child: Text("Stack in Flutter")),
      ),
      body: Center(child: body()),
    );
  }
}

// Stack permette di sovrapporre i widget uno sull'altro
// simile al posizionamento relativo e assoluto in CSS.
Widget body() => Stack(
      children: [
        Icon(
          Icons.person,
          size: 80,
        ),
        // Positioned consente di posizionare esattamente il widget figlio all'interno dello Stack.
        // È utile per creare layout sovrapposti come icone di notifica.
        Positioned(
          top:
              0, // Distanza dall'alto dello Stack, posiziona il widget in alto.
          right:
              0, // Distanza dal lato destro dello Stack, posiziona il widget a destra.
          child: Container(
            //posso usare il margin per muovere il pallino:
            // però così se cambio le dimensioni dell'icona, si vedrà male
            // margin: EdgeInsets.only(left: 40),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            // Il Container contiene un testo centrato che rappresenta il numero di notifiche.
            child: Center(
              child: Text(
                "2",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
