// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockResponse _$StockResponseFromJson(Map<String, dynamic> json) =>
    StockResponse(
      stockId: (json['StockId'] as num?)?.toDouble(),
      itemId: (json['ItemId'] as num?)?.toDouble(),
      itemNo: json['ItemNo'] as String?,
      itemName: json['ItemName'] as String?,
      itemUnitId: (json['ItemUnitId'] as num?)?.toDouble(),
      itemUnitShortName: json['ItemUnitShortName'] as String?,
      branchId: (json['BranchId'] as num?)?.toDouble(),
      branchName: json['BranchName'] as String?,
      purchaseQty: (json['PurchaseQty'] as num?)?.toDouble(),
      saleQty: (json['SaleQty'] as num?)?.toDouble(),
      expiryQty: (json['ExpiryQty'] as num?)?.toDouble(),
      purchaseRetQty: (json['PurchaseRetQty'] as num?)?.toDouble(),
      saleRetQty: (json['SaleRetQty'] as num?)?.toDouble(),
      transferInQty: (json['TransferInQty'] as num?)?.toDouble(),
      transferOutQty: (json['TransferOutQty'] as num?)?.toDouble(),
      avgCostPrice: (json['AvgCostPrice'] as num?)?.toDouble(),
      minSalePrice: (json['MinSalePrice'] as num?)?.toDouble(),
      updatedBy: (json['UpdatedBy'] as num?)?.toDouble(),
      updatedOn: json['UpdatedOn'] as String?,
      cleanOutQty: (json['CleanOutQty'] as num?)?.toDouble(),
      cleanInQty: (json['CleanInQty'] as num?)?.toDouble(),
      stockQty: (json['StockQty'] as num?)?.toDouble(),
      reOrderQty: (json['ReOrderQty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StockResponseToJson(StockResponse instance) =>
    <String, dynamic>{
      'StockId': instance.stockId,
      'ItemId': instance.itemId,
      'ItemNo': instance.itemNo,
      'ItemName': instance.itemName,
      'ItemUnitId': instance.itemUnitId,
      'ItemUnitShortName': instance.itemUnitShortName,
      'BranchId': instance.branchId,
      'BranchName': instance.branchName,
      'PurchaseQty': instance.purchaseQty,
      'SaleQty': instance.saleQty,
      'ExpiryQty': instance.expiryQty,
      'PurchaseRetQty': instance.purchaseRetQty,
      'SaleRetQty': instance.saleRetQty,
      'TransferInQty': instance.transferInQty,
      'TransferOutQty': instance.transferOutQty,
      'AvgCostPrice': instance.avgCostPrice,
      'MinSalePrice': instance.minSalePrice,
      'UpdatedBy': instance.updatedBy,
      'UpdatedOn': instance.updatedOn,
      'CleanOutQty': instance.cleanOutQty,
      'CleanInQty': instance.cleanInQty,
      'StockQty': instance.stockQty,
      'ReOrderQty': instance.reOrderQty,
    };
