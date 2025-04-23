@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Basic Order Item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zr_as_order_it
  as select from ztas_order_it
{
  key order_id      as OrderId,
  key item_id       as ItemId,
      product       as Product,
      @Semantics.quantity.unitOfMeasure: 'UnityMeasure'
      quantity      as Quantity,
      unity_measure as UnityMeasure
}
