@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Entity for BP'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZUJJ_BP_C
  as projection on zujj_bp_i
{
  key BpUuid,
  key ContUuid,
      Firstname,
      Lastname,
      Email,
      /* Associations */
      _CONT : redirected to parent ZUJJ_CONT_C
}
