import 'package:flutter/material.dart';

class GeographicalImpact extends StatefulWidget {
  @override
  _GeographicalImpactState createState() => _GeographicalImpactState();
}

class _GeographicalImpactState extends State<GeographicalImpact> {
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
              child: Image.asset('images/imp.png'),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Recently, the large outbreak of COVID-19 cases all over the world has whacked India with about 30,000 confirmed cases within the first 3 months of transmission. The present study used long-term climatic records of air temperature (T), rainfall (R), actual evapotranspiration (AET), solar radiation (SR), specific humidity (SH), wind speed (WS) with topographic altitude (E) and population density (PD) at the regional level to investigate the spatial association with the number of COVID-19 infections (NI). Bivariate analysis failed to find any significant relation (except SR) with the number of infected cases within 36 provinces in India. Variable Importance of Projection (VIP) through Partial Least Square (PLS) technique signified higher importance of SR, T, R and AET. However, generalized additive model fitted with the log-transformed value of input variables and applying spline smoothening to PD and E, significantly found high accuracy of prediction (R2 = 0.89), and thus well-explained complex heterogeneity among the association of regional parameters with COVID-19 cases in India. Our study suggests that comparatively hot and dry regions in lower altitude of the Indian territory are more prone to the infection by COVID-19 transmission.",
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
