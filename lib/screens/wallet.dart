import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletSection extends StatefulWidget {
  const WalletSection({Key? key}) : super(key: key);

  @override
  _WalletSectionState createState() => _WalletSectionState();
}

class _WalletSectionState extends State<WalletSection> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 34),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Account Overview",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color(0xff3A4276),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 16),
                _contentOverView(),
                const SizedBox(height: 34),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Send Money",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color(0xff3A4276),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Image.asset(
                      "assets/icons/payment/bar_code.png",
                      width: 16,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                _contentSendMoney(),
                const SizedBox(height: 34),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Services",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color(0xff3A4276),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Image.asset(
                      "assets/icons/payment/adjust.png",
                      width: 16,
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                _contentServices(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _contentOverView() {
  return Container(
    padding: const EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffF1F3F6)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "20,600",
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: const Color(0xff171822),
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Current Balance",
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: const Color(0xff3A4276).withOpacity(.4),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        RaisedButton(
          onPressed: () {},
          elevation: 0,
          padding: const EdgeInsets.all(12),
          child: const Text(
            "+",
            style: TextStyle(color: Color(0xff1B1D28), fontSize: 22),
          ),
          shape: const CircleBorder(),
          color: Colors.lightBlue,
        )
      ],
    ),
  );
}

Widget _contentSendMoney() {
  return SizedBox(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
            width: 80,
            padding: const EdgeInsets.all(18),
            child: RaisedButton(
              onPressed: () {},
              elevation: 0,
              padding: const EdgeInsets.all(12),
              child: const Text(
                "+",
                style: TextStyle(color: Color(0xff1B1D28), fontSize: 22),
              ),
              shape: const CircleBorder(),
              color: Colors.lightBlue,
            )),
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(16),
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF1F3F6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xffD8D9E4))),
                child: Image.asset(
                  "assets/icons/payment/avatar_1.png",
                  width: 36,
                ),
              ),
              Text(
                "Mike",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color(0xff3A4276),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(16),
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF1F3F6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xffD8D9E4))),
                child: Image.asset(
                  "assets/icons/payment/avatar_2.png",
                  width: 36,
                ),
              ),
              Text(
                "Joshpeh",
                style: GoogleFonts.poppins(
                  fontSize: 11.2,
                  color: const Color(0xff3A4276),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(16),
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF1F3F6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xffD8D9E4))),
                child: Image.asset(
                  "assets/icons/payment/avatar_3.png",
                  width: 36,
                ),
              ),
              Text(
                "Ashley",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color(0xff3A4276),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _contentServices(context) {
  List<ModelServices> listServices = [];
  listServices.add(ModelServices(title: "Send\nMoney", img: "send.png"));
  listServices.add(ModelServices(title: "Receive\nMoney", img: "receive.png"));
  listServices.add(ModelServices(title: "Mobile\nPrepaid", img: "mobile.png"));
  listServices.add(ModelServices(title: "Electricity\nBill", img: "bill.png"));
  listServices
      .add(ModelServices(title: "Cashback\nOffer", img: "cashback.png"));
  listServices.add(ModelServices(title: "Movie\nTickets", img: "movie.png"));
  listServices.add(ModelServices(title: "Flight\nTickets", img: "flight.png"));
  listServices.add(ModelServices(title: "More\nOptions", img: "menu.png"));

  return SizedBox(
    width: double.infinity,
    height: 260,
    child: GridView.count(
      crossAxisCount: 4,
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / 1.5),
      children: listServices.map((value) {
        return GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffF1F3F6)),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/icons/payment/${value.img}"),
                ),
              ),
              const SizedBox(height: 14),
              Text(
                value.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color(0xff3A4276),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ),
  );
}

class ModelServices {
  String title, img;

  ModelServices({required this.title, required this.img});
}
