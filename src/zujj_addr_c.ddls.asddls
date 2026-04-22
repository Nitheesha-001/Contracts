@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Entity for Address'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZUJJ_ADDR_C
  provider contract transactional_query
  as projection on ZUJJ_ADDR_I
{
  key ContUuid,
      Street1,
      Street2,
      City,
      State,
      Country,
      Zipcode,
      /* Associations */
      _CONT
}
