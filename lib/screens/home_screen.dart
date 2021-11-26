import 'package:fin_buddy/widgets/gain.dart';
import 'package:fin_buddy/widgets/investment.dart';
import 'package:fin_buddy/widgets/losses.dart';
import 'package:fin_buddy/widgets/topup.dart';
import 'package:fin_buddy/widgets/transaction.dart';
import 'package:flutter/material.dart';
import 'package:fin_buddy/constants/color_constant.dart';
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
            Icons.dashboard_outlined,
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

          const SectorInvestment(),

          Padding(
            padding: const EdgeInsets.only(left: 24, top: 30, bottom: 16),
            child: Text(
              'Top Gainers',
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kBlackColor,
              ),
            ),
          ),

          const TopGainers(),

          Padding(
            padding: const EdgeInsets.only(left: 24, top: 30, bottom: 16),
            child: Text(
              'Top Loosers',
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kBlackColor,
              ),
            ),
          ),

          const TopLossers(),

          // Last Transaction Section
          Padding(
            padding:
                const EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
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
            ),
          ),

          const LastTransaction(),

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

          const TopUpWidget(),
        ],
      ),
    );
  }
}
