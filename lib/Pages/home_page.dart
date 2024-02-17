import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: _deviceWidth,
          height: _deviceHeight,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          // color: Colors.red,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImage(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImage() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDownMenu() {
    return CustomDropdownButtonClass(
      values: const [
        'Gammudawa web station',
        'Matara web station',
      ],
      width: _deviceWidth,
    );
  }

  Widget _travellerInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          values: const [
            '1',
            '2',
            '3',
            '4',
          ],
          width: _deviceWidth * 0.45,
        ),
        CustomDropdownButtonClass(
          values: const [
            'Economy',
            'Business',
            'First',
            'Private',
          ],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      //color: Colors.red,
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownMenu(),
          _travellerInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
