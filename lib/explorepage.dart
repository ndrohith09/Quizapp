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
      assettoload =
          "Fatehpur Sikri is a town in the Agra District of Uttar Pradesh, India. The city itself was founded as the capital of Mughal Empire in 1571 by Emperor Akbar, serving this role from 1571 to 1585, when Akbar abandoned it due to a campaign in Punjab and was later completely abandoned in 1610.The name of the city is derived from the village called Sikri which occupied the spot before. An Archaeological Survey of India (ASI) excavation from 1999 to 2000 indicated that there was a habitation, temples and commercial centres here before Akbar built his capital. The region was settled by Sungas following their expansion. In the 12th century, it was briefly controlled by Sikarwar Rajputs.The khanqah of Sheikh Salim Chishti existed earlier at this place. Akbar's son Jahangir was born at the village of Sikri in 1569 and that year Akbar began construction of a religious compound to commemorate the Sheikh who had predicted the birth. After Jahangir's second birthday, he began the construction of a walled city and imperial palace here. The city came to be known as Fatehpur Sikri, the 'City of Victory', after Akbar's victorious Gujarat campaign in 1573.After occupying Agra in 1803, the English established an administrative centre here and it remained so until 1850. In 1815, the Marquess of Hastings ordered repair of monuments at Sikri.";
    } else if (langname == "Humayuns Tomb") {
      assettoload =
          "Humayun's tomb (Hindustani: Maqbara-i Humayun, Persian: آرامگاه همایون‎) is the tomb of the Mughal Emperor Humayun in Delhi, India. The tomb was commissioned by Humayun's first wife and chief consort, Empress Bega Begum (also known as Haji Begum),in 1558, and designed by Mirak Mirza Ghiyas and his son, Sayyid Muhammad, Persian architects chosen by her. It was the first garden-tomb on the Indian subcontinent, and is located in Nizamuddin East, Delhi, India, close to the Dina-panah Citadel, also known as Purana Qila (Old Fort), that Humayun found in 1533. It was also the first structure to use red sandstone at such a scale.The tomb was declared a UNESCO World Heritage Site in 1993, and since then has undergone extensive restoration work, which is complete. Besides the main tomb enclosure of Humayun, several smaller monuments dot the pathway leading up to it, from the main entrance in the West, including one that even pre-dates the main tomb itself, by twenty years; it is the tomb complex of Isa Khan Niyazi, an Afghan noble in Sher Shah Suri's court of the Suri dynasty, who fought against the Mughals, constructed in 1547 CE.The complex encompasses the main tomb of the Emperor Humayun, which houses the graves of Empress Bega Begum, Hamida Begum, and also Dara Shikoh, great-great-grandson of Humayun and son of the later Emperor Shah Jahan, as well as numerous other subsequent Mughals, including Emperor Jahandar Shah, Farrukhsiyar, Rafi Ul-Darjat, Rafi Ud-Daulat, Muhammad Kam Bakhsh and Alamgir II.It represented a leap in Mughal architecture, and together with its accomplished Charbagh garden, typical of Persian gardens, but never seen before in India, it set a precedent for subsequent Mughal architecture. It is seen as a clear departure from the fairly modest mausoleum of his father, the first Mughal Emperor, Babur, called Bagh-e Babur (Gardens of Babur) in Kabul (Afghanistan). Though the latter was the first Emperor to start the tradition of being buried in a paradise garden.Modelled on Gur-e Amir, the tomb of his ancestor and Asia's conqueror Timur in Samarkand, it created a precedent for future Mughal architecture of royal mausolea, which reached its zenith with the Taj Mahal, at Agra";
    } else if (langname == "India Gate") {
      assettoload =
          "The India Gate (formerly known as the All India War Memorial) is a war memorial located astride the Rajpath, on the eastern edge of the 'ceremonial axis' of New Delhi, formerly called Kingsway. It stands as a memorial to 70,000 soldiers of the British Indian Army who died in between 1914 and 1921 in the First World War, in France, Flanders, Mesopotamia, Persia, East Africa, Gallipoli and elsewhere in the Near and the Far East, and the third Anglo-Afghan War. 13,300 servicemen's names, including some soldiers and officers from the United Kingdom, are inscribed on the gate.Designed by Sir Edwin Lutyens, the gate evokes the architectural style of the triumphal arch such as the Arch of Constantine, in Rome, and is often compared to the Arc de Triomphe in Paris, and the Gateway of India in Mumbai.Following the Bangladesh Liberation war in 1972, a structure consisting of a black marble plinth with a reversed rifle, capped by a war helmet and bounded by four eternal flames, was built beneath the archway. This structure, called Amar Jawan Jyoti (Flame of the Immortal Soldier), has since 1971 served as India's tomb of the unknown soldier. India Gate is counted amongst the largest war memorials in India and every Republic Day, the Prime Minister visits the gate to pay their tributes to the Amar Jawan Jyoti, following which the Republic Day parade starts. The memorial-gate is also a popular spot for protests by the civil society in New Delhi.";
    } else if (langname == "Mysore Palace") {
      assettoload =
          "The Mysore Palace is a historical palace and the royal residence(house) at Mysore in the Indian State of Karnataka. It is the official residence of the Wadiyar dynasty and the seat of the Kingdom of Mysore. The palace is in the centre of Mysore, and faces the Chamundi Hills eastward. Mysore is commonly described as the 'City of Palaces', and there are seven palaces including this one; however, 'Mysore Palace' refers specifically to this one within the Old fort.The land on which the palace now stands was originally known as puragiri (literally, citadel), and is now known as the Old Fort. Yaduraya built the first palace inside the Old Fort in the 14th century, which was demolished and constructed multiple times. The current structure was constructed between 1897 and 1912, after the Old Palace was burnt ablaze.Mysore Palace is now one of the most famous tourist attractions in India, after the Taj Mahal, with more than 6 million annual visitors.";
    } else {
      assettoload = "Nalanda University (also known as Nalanda International University) is an international and research-intensive university located in the historical city of Rajgir in Bihar, India. It was established by an Act of Parliament to emulate the famous ancient university of Nalanda, which functioned between the 5th and 13th centuries. The idea to resurrect Nalanda University was endorsed in 2007 at the East Asia Summit, represented mostly by Asian countries including China, Singapore, Japan, Malaysia and Vietnam, apart from Australia and New Zealand, and as such, the university is seen as one of the flagship projects of the Government of India. It has been designated as an 'International Institution of National Importance' by the Parliament, and began its first academic session on 1 September 2014. Initially set up with temporary facilities in Rajgir, a modern campus spanning over 160 hectares (400 acres) is expected to be finished by 2020. This campus, upon completion, will be the largest of its kind in India, and one of the largest in Asia.The first Chancellor of the university was Nobel Laureate Amartya Sen, followed by former Singapore Minister for Foreign Affairs George Yeo. Nalanda is exclusively a graduate school, currently only offering Master's courses, with PhD programmes starting in gradual phases from 2020.";
 
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
