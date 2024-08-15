import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Home_Desktop extends StatefulWidget {
  const Home_Desktop({super.key});

  @override
  State<Home_Desktop> createState() => _Home_DesktopState();
}

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
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: height * 0.8,
                  width: width * 0.8,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
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
                            Text(
                              "Website Development",
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
                                """We build websites that are not just visually stunning but also highly functional. Whether you need a simple site or a complex web application, we customize everything to suit your business needs.""",
                                style: GoogleFonts.rowdies(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Custom Web Development:",
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
                                  "We create websites that fit your exact needs and goals.",
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
                              "CMS Integration:",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Want to update your site on your own? We can set you up with WordPress or another CMS to make it easy.",
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
                              "E-commerce Sites:",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "If you’re selling online, we’ll build a store that makes shopping a breeze for your customers.",
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
                              "Web Applications:",
                              style: GoogleFonts.bebasNeue(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Need something more advanced? We can develop web apps that handle all kinds of business processes.",
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
