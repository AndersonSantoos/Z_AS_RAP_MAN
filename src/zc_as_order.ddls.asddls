@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consumption Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_as_order
  as projection on zi_as_order
{
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_as_order_VH',  element: 'Orderid' }, useForValidation: true }]
  key Orderid,
      @ObjectModel.text.element: [ 'CustomerName' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_as_customer_VH',  element: 'CustomerId' }, useForValidation: true }]
      Customer,
      CustomerName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_as_vendor_VH',  element: 'VendorId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'VendorName' ]
      Vendor,
      VendorName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_as_company_VH',  element: 'CompanyId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'CompanyName' ]
      Company,
      CompanyName,
      Usnam,
      /* Associations */
      _Itens: redirected to composition child zc_as_order_it
}
