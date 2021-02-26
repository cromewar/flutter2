import 'package:bitcoin/coin_data.dart';
import 'package:bitcoin/services/exchange_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  String change = "1000";
  String changeEth = "1000";
  String changeLTC = "1000";
  String cripto = "BTC";

  void setExchangeData() async {
    var exchangeData =
        await ExchangeService().getBitcoinExchange(selectedCurrency);
    var exchangeEthereum =
        await ExchangeService().getEthereumExchange(selectedCurrency);
    var exchangeL = await ExchangeService().getLTCExchange(selectedCurrency);
    setState(() {
      double changeDouble = exchangeData['rate'];
      change = changeDouble.toStringAsFixed(2);
      double changeEt = exchangeEthereum['rate'];
      changeEth = changeEt.toStringAsFixed(2);
      double changeL = exchangeL['rate'];
      changeLTC = changeL.toStringAsFixed(2);
    });
  }

  @override
  void initState() {
    super.initState();
    setExchangeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          getCard('BTC', change),
          getCard('ETH', changeEth),
          getCard('LTC', changeLTC),
          Theme(
            data: ThemeData(
              cupertinoOverrideTheme: CupertinoThemeData(
                textTheme: CupertinoTextThemeData(
                  pickerTextStyle: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            child: Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 30.0),
              color: Colors.lightBlue,
              child: Platform.isIOS ? iOSPicker() : androidDropdownButton(),
            ),
          ),
        ],
      ),
    );
  }

  DropdownButton androidDropdownButton() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String moneda in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(moneda),
        value: moneda,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
      style: TextStyle(color: Colors.white, fontSize: 25),
      value: selectedCurrency,
      items: dropdownItems,
      dropdownColor: Colors.lightBlue,
      iconEnabledColor: Colors.white,
      onChanged: (value) {
        setState(
          () {
            selectedCurrency = value;
            setExchangeData();
          },
        );
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> cupertinoItems = [];
    for (String moneda in currenciesList) {
      var newTem = Text(moneda);
      cupertinoItems.add(newTem);
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (value) {},
      children: cupertinoItems,
    );
  }

  Padding getCard(String cripto, String changeValue) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cripto = $changeValue $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
