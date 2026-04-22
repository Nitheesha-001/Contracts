@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Contract combined'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zujj_cont_combined
  as select from    zujj_cont as C
    left outer join zujj_bp   as B on B.cont_uuid = C.cont_uuid
    left outer join zujj_addr as A on A.cont_uuid = C.cont_uuid

{
  key C.cont_uuid,
      C.bpnumber,
      C.model,
      C.serial,
      C.country,
      C.enrolledon,
      C.cancelledon,
      C.status,
      C.suspend_start,
      C.suspend_end,

      B.firstname,
      B.lastname,
      B.email,

      A.street1,
      A.street2,
      A.city,
      A.state,
      A.country as address_country,
      A.zipcode
}

