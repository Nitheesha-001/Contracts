@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Entity for Address'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZUJJ_ADDR_C
  as projection on ZUJJ_ADDR_I
{
  key AddrUuid,
  key ContUuid,
      Street1,
      Street2,
      City,
      State,
      Country,
      Zipcode,
      /* Associations */
      _CONT : redirected to parent ZUJJ_CONT_C
}
