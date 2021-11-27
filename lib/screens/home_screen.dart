import 'package:bottom_bar/bottom_bar.dart';
import 'package:fin_buddy/screens/learning.dart';
import 'package:fin_buddy/screens/mutual_fund.dart';
import 'package:fin_buddy/screens/profile.dart';
import 'package:fin_buddy/screens/wallet.dart';
import 'package:fin_buddy/widgets/gain.dart';
import 'package:fin_buddy/widgets/investment.dart';
import 'package:fin_buddy/widgets/losses.dart';
import 'package:fin_buddy/widgets/topup.dart';
import 'package:fin_buddy/widgets/transaction.dart';
import 'package:flutter/material.dart';
import 'package:fin_buddy/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Icons.library_books_outlined,
            color: kBlackColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRightWithFade,
                child: const Learning(),
              ),
            );
          },
          padding: const EdgeInsets.only(left: 20),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: const <Widget>[
          DashBoard(),
          MutualFund(),
          WalletSection(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: const Icon(Icons.dashboard_outlined),
            title: const Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: const Icon(Icons.assessment_outlined),
            title: const Text('Mutual Fund'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400, // Optional
          ),
          BottomBarItem(
            icon: const Icon(Icons.account_balance_wallet_outlined),
            title: const Text('Wallet'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400, // Optional
          ),
          BottomBarItem(
            icon: const Icon(Icons.person_outlined),
            title: const Text('Account'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
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
    );
  }
}
