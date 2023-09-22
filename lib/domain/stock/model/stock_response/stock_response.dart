import 'package:json_annotation/json_annotation.dart';

part 'stock_response.g.dart';

@JsonSerializable()
class StockResponse {
  @JsonKey(name: 'StockId')
  double? stockId;
  @JsonKey(name: 'ItemId')
  double? itemId;
  @JsonKey(name: 'ItemNo')
  String? itemNo;
  @JsonKey(name: 'ItemName')
  String? itemName;
  @JsonKey(name: 'ItemUnitId')
  double? itemUnitId;
  @JsonKey(name: 'ItemUnitShortName')
  String? itemUnitShortName;
  @JsonKey(name: 'BranchId')
  double? branchId;
  @JsonKey(name: 'BranchName')
  String? branchName;
  @JsonKey(name: 'PurchaseQty')
  double? purchaseQty;
  @JsonKey(name: 'SaleQty')
  double? saleQty;
  @JsonKey(name: 'ExpiryQty')
  double? expiryQty;
  @JsonKey(name: 'PurchaseRetQty')
  double? purchaseRetQty;
  @JsonKey(name: 'SaleRetQty')
  double? saleRetQty;
  @JsonKey(name: 'TransferInQty')
  double? transferInQty;
  @JsonKey(name: 'TransferOutQty')
  double? transferOutQty;
  @JsonKey(name: 'AvgCostPrice')
  double? avgCostPrice;
  @JsonKey(name: 'MinSalePrice')
  double? minSalePrice;
  @JsonKey(name: 'UpdatedBy')
  double? updatedBy;
  @JsonKey(name: 'UpdatedOn')
  String? updatedOn;
  @JsonKey(name: 'CleanOutQty')
  double? cleanOutQty;
  @JsonKey(name: 'CleanInQty')
  double? cleanInQty;
  @JsonKey(name: 'StockQty')
  double? stockQty;
  @JsonKey(name: 'ReOrderQty')
  double? reOrderQty;

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
