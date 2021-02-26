import 'package:bitcoin/services/network_service.dart';

const String url = 'https://rest.coinapi.io/v1/exchangerate';
const String apikey = '6C82C9F4-8CF2-4E97-9223-7672F502CD2A';

class ExchangeService {
  Future<dynamic> getBitcoinExchange(String currency) async {
    var dir = '$url/BTC/$currency?apikey=$apikey';
    NetWorkHelper netWorkHelper = NetWorkHelper(url: dir);
    var exchangeData = await netWorkHelper.getData();
    return exchangeData;
  }

  Future<dynamic> getEthereumExchange(String currency) async {
    var dir = '$url/ETH/$currency?apikey=$apikey';
    NetWorkHelper netWorkHelper = NetWorkHelper(url: dir);
    var exchangeData = await netWorkHelper.getData();
    return exchangeData;
  }

  Future<dynamic> getLTCExchange(String currency) async {
    var dir = '$url/LTC/$currency?apikey=$apikey';
    NetWorkHelper netWorkHelper = NetWorkHelper(url: dir);
    var exchangeData = await netWorkHelper.getData();
    return exchangeData;
  }
}
