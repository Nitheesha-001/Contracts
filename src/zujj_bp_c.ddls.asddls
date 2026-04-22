@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Entity for BP'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZUJJ_BP_C
  provider contract transactional_query
  as projection on zujj_bp_i
{
  key ContUuid,
      Firstname,
      Lastname,
      Email,
      /* Associations */
      _CONT
}
