@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Entity for Contract'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZUJJ_CONT_C
  provider contract transactional_query
  as projection on ZUJJ_CONT_I
{
  key ContUuid,
      Bpnumber,
      Model,
      Serial,
      Country,
      Enrolledon,
      Cancelledon,
      Status,
      SuspendStart,
      SuspendEnd,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Addr : redirected to composition child ZUJJ_ADDR_C,
      _BP   : redirected to composition child ZUJJ_BP_C
}
