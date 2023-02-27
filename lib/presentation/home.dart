import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:sunflare/presentation/home_state.dart';

class Home extends StatefulWidget {
  final HomeState homeState;

  const Home({Key? key, required this.homeState}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController pageController = PageController();

  Widget _body() {
    return Observer(
      builder: (_) {
        final lastSolarFlare = DateFormat.yMMMMd().format(widget.homeState.solarActivities?.lastFlare.startTime ?? DateTime.now());
        final lastSolarStorm = DateFormat.yMMMMd().format(widget.homeState.solarActivities?.lastStorm.startTime ?? DateTime.now());

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(widget.homeState.page == 0 ? 'Last solar flare' : 'Last solar storm'),
          ),
          body: PageView(
            controller: pageController,
            onPageChanged: (page) => widget.homeState.setPage(page),
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/solarflare.jpeg'), fit: BoxFit.cover),
                ),
                child: Center(
                  child: widget.homeState.isLoading
                      ? const CircularProgressIndicator(color: Colors.black)
                      : Container(
                          width: double.maxFinite,
                          color: Colors.black.withOpacity(0.5),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            lastSolarFlare,
                            style: const TextStyle(color: Colors.white, fontSize: 36),
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/solarstorm.png'), fit: BoxFit.cover),
                ),
                child: Center(
                  child: widget.homeState.isLoading
                      ? const CircularProgressIndicator(color: Colors.black)
                      : Container(
                          width: double.maxFinite,
                          color: Colors.black.withOpacity(0.5),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            lastSolarStorm,
                            style: const TextStyle(color: Colors.white, fontSize: 36),
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }
}
