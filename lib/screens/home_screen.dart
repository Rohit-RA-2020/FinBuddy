import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fin_buddy/constants/color_constant.dart';
import 'package:fin_buddy/custom_icons/flutter_custom_icon.dart';
import 'package:fin_buddy/models/card_model.dart';
import 'package:fin_buddy/models/transaction_model.dart' as tm;
import 'package:fin_buddy/models/wallet_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: const Text(
          'Welcome Investor!',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          constraints: const BoxConstraints(),
          icon: const Icon(
            MyFlutterApp.navigationdrawer,
            color: kBlackColor,
          ),
          onPressed: () {},
          padding: const EdgeInsets.only(left: 20),
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: <Widget>[
          // Card Account Section
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 8, bottom: 16),
            child: Text(
              'Sector Investments',
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kBlackColor,
              ),
            ),
          ),
          SizedBox(
            height: 175,
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 16, right: 8),
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 175,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: cards[index].bgColor,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x10000000),
                            blurRadius: 10,
                            spreadRadius: 4,
                            offset: Offset(0.0, 8.0))
                      ],
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 16,
                          top: 12,
                          child: Image.asset(
                            cards[index].type,
                            height: 22,
                            width: 33,
                          ),
                        ),
                        Positioned(
                          right: 12,
                          top: 12,
                          child: SvgPicture.asset(cards[index].cardBackground),
                        ),
                        Positioned(
                          top: 14,
                          right: 12,
                          child: Text(
                            cards[index].name,
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: cards[index].firstColor),
                          ),
                        ),
                        Positioned(
                          top: 63,
                          left: 16,
                          child: Text(
                            'Current Value',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: cards[index].firstColor),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 81,
                          child: Text(
                            '₹ ' + cards[index].balance,
                            style: GoogleFonts.nunito(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: cards[index].secondColor),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 30,
                          child: Text(
                            'Invested',
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: cards[index].firstColor),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 12,
                          child: Text(
                            '₹ ' + cards[index].valid,
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: cards[index].secondColor),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: SvgPicture.asset(
                            cards[index].moreIcon,
                            height: 24,
                            width: 24,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),

          // Last Transaction Section
          Padding(
              padding: const EdgeInsets.only(
                  left: 24, top: 32, bottom: 16, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Last Transactions',
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: kBlackColor,
                    ),
                  ),
                  Text(
                    'See all transactions',
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: kBlueColor,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 190,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16, right: 8),
              scrollDirection: Axis.horizontal,
              itemCount: tm.transactions.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 190,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kWhiteColor,
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0x04000000),
                          blurRadius: 10,
                          spreadRadius: 10,
                          offset: Offset(0.0, 8.0))
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 16,
                        left: 16,
                        child: SvgPicture.asset(tm.transactions[index].type),
                        height: 24,
                        width: 24,
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: SvgPicture.asset('assets/svg/mastercard_bg.svg'),
                      ),
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Text(
                          tm.transactions[index].name,
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: tm.transactions[index].colorType),
                        ),
                      ),
                      Positioned(
                        top: 64,
                        left: 16,
                        child: Text(
                          tm.transactions[index].signType +
                              ' ₹ ' +
                              tm.transactions[index].amount,
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: tm.transactions[index].colorType),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 106,
                        child: Text(
                          tm.transactions[index].information,
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kTealColor),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 48,
                        child: Text(
                          tm.transactions[index].recipient,
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: kBlackColor),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 22,
                        child: Text(
                          tm.transactions[index].date,
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: kTealColor),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Top Up Section
          Padding(
            padding:
                const EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
            child: Text(
              'Top Up Again',
              style: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: kBlackColor,
              ),
            ),
          ),
          SizedBox(
            height: 304,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16, right: 16),
              itemCount: wallets.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  height: 68,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x04000000),
                            blurRadius: 10,
                            spreadRadius: 10,
                            offset: Offset(0.0, 8.0))
                      ],
                      color: kWhiteColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteGreyColor,
                              image: DecorationImage(
                                image: AssetImage(wallets[index].walletLogo),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                wallets[index].name,
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: kBlackColor),
                              ),
                              Text(
                                wallets[index].wallet,
                                style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: kTealColor),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            wallets[index].walletNumber,
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: kTealColor),
                          ),
                          const SizedBox(
                            width: 16,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
