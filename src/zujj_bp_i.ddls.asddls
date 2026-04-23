@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BP Deatils'
@Metadata.ignorePropagatedAnnotations: true
define view entity zujj_bp_i
  as select from zujj_bp
  association to parent ZUJJ_CONT_I as _CONT on $projection.ContUuid = _CONT.ContUuid
{
  key bp_uuid   as BpUuid,
  key cont_uuid as ContUuid,
      firstname as Firstname,
      lastname  as Lastname,
      email     as Email,

      _CONT
}
