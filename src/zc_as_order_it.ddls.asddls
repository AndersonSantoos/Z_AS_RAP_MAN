@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consumption Order Itens'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity zc_as_order_it
  as projection on zi_as_order_it
{
  key OrderId,
  key ItemId,
      @ObjectModel.text.element: [ 'Description' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_as_products_VH', element: 'ProductId' }, useForValidation: true }]
      Product,
      Description,
      Value,
      Currency,
      Quantity,
      SalesPrice,
      UnityMeasure,
      /* Associations */
      _Order: redirected to parent zc_as_order,
      _Product
}
