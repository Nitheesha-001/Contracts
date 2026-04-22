@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Address Details'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZUJJ_ADDR_I
  as select from zujj_addr
  association to parent ZUJJ_CONT_I as _CONT on $projection.ContUuid = _CONT.ContUuid
{
  key cont_uuid as ContUuid,
      street1   as Street1,
      street2   as Street2,
      city      as City,
      state     as State,
      country   as Country,
      zipcode   as Zipcode,

      _CONT
}
