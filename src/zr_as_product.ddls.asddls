@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Basic Product'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zr_as_product
  as select from ztas_product
{
  key product_id    as ProductId,
      description   as Description,
      @Semantics.amount.currencyCode: 'Currency'
      value         as Value,
      currency      as Currency,
      @Semantics.quantity.unitOfMeasure: 'UnityMeasure'
      quantity      as Quantity,
      unity_measure as UnityMeasure
}
