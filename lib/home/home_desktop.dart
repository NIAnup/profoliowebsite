import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Home_Desktop extends StatefulWidget {
  const Home_Desktop({super.key});

  @override
  State<Home_Desktop> createState() => _Home_DesktopState();
}

List<Map<String, dynamic>> whatweoffercontent = [
  {
    "image": "icon.png",
    "title": "Website developerment",
    "description":
        "We build websites that are not just visually stunning but also highly functional. Whether you need a simple site or a complex web application, we customize everything to suit your business needs.",
    "Subtitle": "Custom Websites:",
    "subtitleDescripation": "Tailored to your goals and brand.",
    "Subtitle2": "CMS Solutions:",
    "subtitleDescripation2":
        "Easily manage your site with platforms like WordPress.",
    "Subtitle3": "E-commerce:",
    "subtitleDescripation3":
        "Create an online store that offers a seamless shopping experience.",
    "Subtitle4": "Web Apps:",
    "subtitleDescripation4":
        "Develop advanced web applications to streamline your business operations.",
  },
  {
    "image": "icon.png",
    "title": "Mobile App Development",
    "description":
        "Our mobile apps are designed to engage users on iOS and Android. We handle everything from concept to launch, ensuring your app is smooth, reliable, and meets your users’ needs.",
    "Subtitle": "Native & Cross-Platform Apps:",
    "subtitleDescripation": "Build apps for iOS, Android, or both.",
    "Subtitle2": "User-Friendly Design:",
    "subtitleDescripation2":
        "Intuitive interfaces that keep users coming back.",
    "Subtitle3": "Ongoing Support:",
    "subtitleDescripation3":
        "Continuous updates and maintenance to keep your app running smoothly.",
    // "Subtitle4": "Web Apps:",
    // "subtitleDescripation4":
    //     "Develop advanced web applications to streamline your business operations.",
  },
  {
    "image": "icon.png",
    "title": "E-commerce Solutions",
    "description":
        "We create e-commerce platforms that make online shopping easy and enjoyable. Whether starting fresh or upgrading, we tailor everything to fit your business model.",
    "Subtitle": "Custom Online Stores:",
    "subtitleDescripation": "Designed to meet your specific needs.",
    "Subtitle2": "Secure Payment Integration:",
    "subtitleDescripation2": "Ensuring safe and easy transactions.",
    "Subtitle3": "Inventory Management:",
    "subtitleDescripation3":
        " Efficient tools to manage your products and orders.",
    // "Subtitle4": "Web Apps:",
    // "subtitleDescripation4":
    //     "Develop advanced web applications to streamline your business operations.",
  }
];

class _Home_DesktopState extends State<Home_Desktop> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        _Appbar(),
        _headerWidget(context),
        _Upperbody(context)
      ])),
    );
  }

  Widget _Appbar() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "AnupSingh",
            style: GoogleFonts.kanit(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            "Mentor",
            style: GoogleFonts.kanit(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFFF6e07f3)),
          ),
        ],
      ),
    );
  }

  Widget _headerWidget(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container.new(
      height: height,
      width: width,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Designer, Frontend Developer & Mentor",
            style: GoogleFonts.bebasNeue(
                fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "Turning complex ideas into intuitive, beautifully designed apps & websites.",
            style: GoogleFonts.bebasNeue(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          const CircleAvatar(
            radius: 80,
            backgroundColor: Color(0xFFF6e07f3),
          ),
          SizedBox(
            height: height * 0.19,
          ),
          Container(
            height: height * 0.50,
            width: width * 0.60,
            decoration: const BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage("Introimage.png"),
            )),
          )
        ],
      ),
    );
  }

  Widget _Upperbody(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * 0.50,
          width: width,
          color: Color(0xFFF6e07f3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, I’m Anup. Nice to meet you.",
                style: GoogleFonts.bebasNeue(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                width: width * 0.40,
                child: Text(
                  textAlign: TextAlign.center,
                  """Since beginning my journey as a freelance designer 12 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use.I'm quietly confident, naturally curious, and perpetually working on improving my chops.""",
                  style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Column(
              // alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "What We Offer",
                    style: GoogleFonts.rowdies(
                        fontSize: 40, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: height * 0.8,
                  width: width * 0.8,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: whatweoffercontent.length,
                    itemBuilder: (BuildContext context, int index) {
                      final content = whatweoffercontent[index];
                      return Container(
                        margin: EdgeInsets.all(4),
                        height: height,
                        width: width * 0.26,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                              )
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              content["image"],
                              width: width * 0.05,
                            ),
                            Text(
                              content['title'] ?? "",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                """${content['description'] ?? ""}""",
                                style: GoogleFonts.rowdies(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              content['Subtitle'] ?? "",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  content["subtitleDescripation"] ?? "",
                                  style: GoogleFonts.rowdies(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              content['Subtitle2'] ?? "",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  content["subtitleDescripation2"] ?? "",
                                  style: GoogleFonts.rowdies(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              content['Subtitle3'] ?? "",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  content["subtitleDescripation3"],
                                  style: GoogleFonts.rowdies(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              content['Subtitle4'] ?? "",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  content["subtitleDescripation4"] ?? "",
                                  style: GoogleFonts.rowdies(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
