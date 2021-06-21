import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterquizstarv2/resultpage.dart';

class GetDetails extends StatelessWidget {
  String langname;
  GetDetails(this.langname);
  late String assettoload;

//Update the strings here for assettoload
  setasset() {
    if (langname == "Ajanta Ellora") {
      assettoload =
          "The Buddhist Caves in Ajanta are approximately 30 rock-cut Buddhist cave monuments dating from the 2nd century BCE to about 480 CE in the Aurangabad district of Maharashtra state in India. The caves include paintings and rock-cut sculptures described as among the finest surviving examples of ancient Indian art, particularly expressive paintings that present emotions through gesture, pose and form. They are universally regarded as masterpieces of Buddhist religious art. The caves were built in two phases, the first starting around the 2nd century BCE and the second occurring from 400 to 650 CE, according to older accounts, or in a brief period of 460–480 CE according to later scholarship. The site is a protected monument in the care of the Archaeological Survey of India, and since 1983, the Ajanta Caves have been a UNESCO World Heritage Site. The Ajanta Caves constitute ancient monasteries and worship-halls of different Buddhist traditions carved into a 75-metre (246 ft) wall of rock. The caves also present paintings depicting the past lives and rebirths of the Buddha, pictorial tales from Aryasura's Jatakamala, and rock-cut sculptures of Buddhist deities. Textual records suggest that these caves served as a monsoon retreat for monks, as well as a resting site for merchants and pilgrims in ancient India. While vivid colours and mural wall-painting were abundant in Indian history as evidenced by historical records, Caves 16, 17, 1 and 2 of Ajanta form the largest corpus of surviving ancient Indian wall-painting. The Ajanta Caves are mentioned in the memoirs of several medieval-era Chinese Buddhist travellers to India and by a Mughal-era official of Akbar era in the early 17th century. They were covered by jungle until accidentally discovered and brought to Western attention in 1819 by a colonial British officer Captain John Smith on a tiger-hunting party. The caves are in the rocky northern wall of the U-shaped gorge of the river Waghur, in the Deccan plateau.";
    } else if (langname == "Fatehpur Sikri") {
      assettoload = "welcoemdasjkhdjkashfjkhsadjklfhasjkldhsf";
    } else if (langname == "Humayuns Tomb") {
      assettoload =
          "The Buddhist Caves in Ajanta are approximately 30 rock-cut Buddhist cave monuments dating from the 2nd century BCE to about 480 CE in the Aurangabad district of Maharashtra state in India. The caves include paintings and rock-cut sculptures described as among the finest surviving examples of ancient Indian art, particularly expressive paintings that present emotions through gesture, pose and form. They are universally regarded as masterpieces of Buddhist religious art. The caves were built in two phases, the first starting around the 2nd century BCE and the second occurring from 400 to 650 CE, according to older accounts, or in a brief period of 460–480 CE according to later scholarship. The site is a protected monument in the care of the Archaeological Survey of India, and since 1983, the Ajanta Caves have been a UNESCO World Heritage Site. The Ajanta Caves constitute ancient monasteries and worship-halls of different Buddhist traditions carved into a 75-metre (246 ft) wall of rock. The caves also present paintings depicting the past lives and rebirths of the Buddha, pictorial tales from Aryasura's Jatakamala, and rock-cut sculptures of Buddhist deities. Textual records suggest that these caves served as a monsoon retreat for monks, as well as a resting site for merchants and pilgrims in ancient India. While vivid colours and mural wall-painting were abundant in Indian history as evidenced by historical records, Caves 16, 17, 1 and 2 of Ajanta form the largest corpus of surviving ancient Indian wall-painting. The Ajanta Caves are mentioned in the memoirs of several medieval-era Chinese Buddhist travellers to India and by a Mughal-era official of Akbar era in the early 17th century. They were covered by jungle until accidentally discovered and brought to Western attention in 1819 by a colonial British officer Captain John Smith on a tiger-hunting party. The caves are in the rocky northern wall of the U-shaped gorge of the river Waghur, in the Deccan plateau.";
    } else if (langname == "India Gate") {
      assettoload =
          "The Buddhist Caves in Ajanta are approximately 30 rock-cut Buddhist cave monuments dating from the 2nd century BCE to about 480 CE in the Aurangabad district of Maharashtra state in India. The caves include paintings and rock-cut sculptures described as among the finest surviving examples of ancient Indian art, particularly expressive paintings that present emotions through gesture, pose and form. They are universally regarded as masterpieces of Buddhist religious art. The caves were built in two phases, the first starting around the 2nd century BCE and the second occurring from 400 to 650 CE, according to older accounts, or in a brief period of 460–480 CE according to later scholarship. The site is a protected monument in the care of the Archaeological Survey of India, and since 1983, the Ajanta Caves have been a UNESCO World Heritage Site. The Ajanta Caves constitute ancient monasteries and worship-halls of different Buddhist traditions carved into a 75-metre (246 ft) wall of rock. The caves also present paintings depicting the past lives and rebirths of the Buddha, pictorial tales from Aryasura's Jatakamala, and rock-cut sculptures of Buddhist deities. Textual records suggest that these caves served as a monsoon retreat for monks, as well as a resting site for merchants and pilgrims in ancient India. While vivid colours and mural wall-painting were abundant in Indian history as evidenced by historical records, Caves 16, 17, 1 and 2 of Ajanta form the largest corpus of surviving ancient Indian wall-painting. The Ajanta Caves are mentioned in the memoirs of several medieval-era Chinese Buddhist travellers to India and by a Mughal-era official of Akbar era in the early 17th century. They were covered by jungle until accidentally discovered and brought to Western attention in 1819 by a colonial British officer Captain John Smith on a tiger-hunting party. The caves are in the rocky northern wall of the U-shaped gorge of the river Waghur, in the Deccan plateau.";
    } else if (langname == "Mysore Palace") {
      assettoload =
          "The Buddhist Caves in Ajanta are approximately 30 rock-cut Buddhist cave monuments dating from the 2nd century BCE to about 480 CE in the Aurangabad district of Maharashtra state in India. The caves include paintings and rock-cut sculptures described as among the finest surviving examples of ancient Indian art, particularly expressive paintings that present emotions through gesture, pose and form. They are universally regarded as masterpieces of Buddhist religious art. The caves were built in two phases, the first starting around the 2nd century BCE and the second occurring from 400 to 650 CE, according to older accounts, or in a brief period of 460–480 CE according to later scholarship. The site is a protected monument in the care of the Archaeological Survey of India, and since 1983, the Ajanta Caves have been a UNESCO World Heritage Site. The Ajanta Caves constitute ancient monasteries and worship-halls of different Buddhist traditions carved into a 75-metre (246 ft) wall of rock. The caves also present paintings depicting the past lives and rebirths of the Buddha, pictorial tales from Aryasura's Jatakamala, and rock-cut sculptures of Buddhist deities. Textual records suggest that these caves served as a monsoon retreat for monks, as well as a resting site for merchants and pilgrims in ancient India. While vivid colours and mural wall-painting were abundant in Indian history as evidenced by historical records, Caves 16, 17, 1 and 2 of Ajanta form the largest corpus of surviving ancient Indian wall-painting. The Ajanta Caves are mentioned in the memoirs of several medieval-era Chinese Buddhist travellers to India and by a Mughal-era official of Akbar era in the early 17th century. They were covered by jungle until accidentally discovered and brought to Western attention in 1819 by a colonial British officer Captain John Smith on a tiger-hunting party. The caves are in the rocky northern wall of the U-shaped gorge of the river Waghur, in the Deccan plateau.";
    } else {
      assettoload =
          "The Buddhist Caves in Ajanta are approximately 30 rock-cut Buddhist cave monuments dating from the 2nd century BCE to about 480 CE in the Aurangabad district of Maharashtra state in India. The caves include paintings and rock-cut sculptures described as among the finest surviving examples of ancient Indian art, particularly expressive paintings that present emotions through gesture, pose and form. They are universally regarded as masterpieces of Buddhist religious art. The caves were built in two phases, the first starting around the 2nd century BCE and the second occurring from 400 to 650 CE, according to older accounts, or in a brief period of 460–480 CE according to later scholarship. The site is a protected monument in the care of the Archaeological Survey of India, and since 1983, the Ajanta Caves have been a UNESCO World Heritage Site. The Ajanta Caves constitute ancient monasteries and worship-halls of different Buddhist traditions carved into a 75-metre (246 ft) wall of rock. The caves also present paintings depicting the past lives and rebirths of the Buddha, pictorial tales from Aryasura's Jatakamala, and rock-cut sculptures of Buddhist deities. Textual records suggest that these caves served as a monsoon retreat for monks, as well as a resting site for merchants and pilgrims in ancient India. While vivid colours and mural wall-painting were abundant in Indian history as evidenced by historical records, Caves 16, 17, 1 and 2 of Ajanta form the largest corpus of surviving ancient Indian wall-painting. The Ajanta Caves are mentioned in the memoirs of several medieval-era Chinese Buddhist travellers to India and by a Mughal-era official of Akbar era in the early 17th century. They were covered by jungle until accidentally discovered and brought to Western attention in 1819 by a colonial British officer Captain John Smith on a tiger-hunting party. The caves are in the rocky northern wall of the U-shaped gorge of the river Waghur, in the Deccan plateau.";
    }
  }

  @override
  Widget build(BuildContext context) {
    setasset();
    return Scaffold(
      appBar: AppBar(
        title: Text('Monument Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            child: Text(
              assettoload.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Rajdhani',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
