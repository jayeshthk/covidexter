import 'package:flutter/material.dart';

class Historycovid extends StatefulWidget {
  @override
  _HistorycovidState createState() => _HistorycovidState();
}

class _HistorycovidState extends State<Historycovid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 250,
              width: 250,
              child: Image.asset('images/er.png'),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "A novel coronavirus outbreak was first documented in Wuhan, Hubei Province, China in December 2019. As of this writing, it has now been confirmed on six continents and in more than 100 countries. As the world’s health systems funnel resources into learning about, treating, and preventing infections in humans, new information is released daily. In this two-part article series, we will first provide some history on coronaviruses to put this disease outbreak in perspective, and discuss global health security and planning for pandemic response. Secondly, we will offer guidance from the best trusted sources for prevention and planning in the workplace and at home"
                "What are coronaviruses?"
                "Coronaviruses are a large family of zoonotic viruses that cause illness ranging from the common cold to severe respiratory diseases. Zoonotic means these viruses are able to be transmitted from animals to humans. There are several coronaviruses known to be circulating in different animal populations that have not yet infected humans. COVID-19 is the most recent to make the jump to human infection."
                " Common signs of COVID-19 infection are similar to the common cold and include respiratory symptoms such as dry cough, fever, shortness of breath, and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome, kidney failure, and death."
                "The COVID-19 infection is spread from one person to others via droplets produced from the respiratory system of infected people, often during coughing or sneezing. According to current data, time from exposure to onset of symptoms is usually between two and 14 days, with an average of five days",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

