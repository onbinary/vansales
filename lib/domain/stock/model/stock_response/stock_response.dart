import 'package:json_annotation/json_annotation.dart';

part 'stock_response.g.dart';

@JsonSerializable()
class StockResponse {
  @JsonKey(name: 'StockId')
  int? stockId;
  @JsonKey(name: 'ItemId')
  int? itemId;
  @JsonKey(name: 'ItemNo')
  String? itemNo;
  @JsonKey(name: 'ItemName')
  String? itemName;
  @JsonKey(name: 'ItemUnitId')
  int? itemUnitId;
  @JsonKey(name: 'ItemUnitShortName')
  String? itemUnitShortName;
  @JsonKey(name: 'BranchId')
  int? branchId;
  @JsonKey(name: 'BranchName')
  String? branchName;
  @JsonKey(name: 'PurchaseQty')
  double? purchaseQty;
  @JsonKey(name: 'SaleQty')
  double? saleQty;
  @JsonKey(name: 'ExpiryQty')
  double? expiryQty;
  @JsonKey(name: 'PurchaseRetQty')
  int? purchaseRetQty;
  @JsonKey(name: 'SaleRetQty')
  int? saleRetQty;
  @JsonKey(name: 'TransferInQty')
  int? transferInQty;
  @JsonKey(name: 'TransferOutQty')
  int? transferOutQty;
  @JsonKey(name: 'AvgCostPrice')
  double? avgCostPrice;
  @JsonKey(name: 'MinSalePrice')
  double? minSalePrice;
  @JsonKey(name: 'UpdatedBy')
  int? updatedBy;
  @JsonKey(name: 'UpdatedOn')
  String? updatedOn;
  @JsonKey(name: 'CleanOutQty')
  double? cleanOutQty;
  @JsonKey(name: 'CleanInQty')
  int? cleanInQty;
  @JsonKey(name: 'StockQty')
  double? stockQty;
  @JsonKey(name: 'ReOrderQty')
  int? reOrderQty;

  StockResponse({
    this.stockId,
    this.itemId,
    this.itemNo,
    this.itemName,
    this.itemUnitId,
    this.itemUnitShortName,
    this.branchId,
    this.branchName,
    this.purchaseQty,
    this.saleQty,
    this.expiryQty,
    this.purchaseRetQty,
    this.saleRetQty,
    this.transferInQty,
    this.transferOutQty,
    this.avgCostPrice,
    this.minSalePrice,
    this.updatedBy,
    this.updatedOn,
    this.cleanOutQty,
    this.cleanInQty,
    this.stockQty,
    this.reOrderQty,
  });

  factory StockResponse.fromJson(Map<String, dynamic> json) {
    return _$StockResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StockResponseToJson(this);
}
