import '../../core/strings.dart';

class ApiEndpoints {
  static const login = "$kBaseUrl/api/Authenticate/";
  static const userinfo = "$kBaseUrl/api/GetUserInfo/";
  static const getStock = "$kBaseUrl/api/GetAllStockInventory/";
  static const getStockAccept = "$kBaseUrl/api/GetIncomingStockTransfer/";
}
