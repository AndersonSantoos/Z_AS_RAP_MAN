@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Valeu Help Vendor'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_as_vendor_VH
  as select from ztas_vendor
{
      @ObjectModel.text.element: [ 'name' ]
      @EndUserText.label: 'ID Vendedor'
  key vendor_id as VendorId,

      @Semantics.text: true
      @EndUserText.label: 'Nome Vendedor'
      name      as Name
}
group by
  vendor_id,
  name
