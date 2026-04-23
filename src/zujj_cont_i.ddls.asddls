@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Entity for Contract'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZUJJ_CONT_I
  as select from zujj_cont
  composition [0..1] of ZUJJ_ADDR_I as _Addr
  composition [0..1] of zujj_bp_i   as _BP
{
  key cont_uuid             as ContUuid,
      bpnumber              as Bpnumber,
      model                 as Model,
      serial                as Serial,
      country               as Country,
      enrolledon            as Enrolledon,
      cancelledon           as Cancelledon,
      status                as Status,
      suspend_start         as SuspendStart,
      suspend_end           as SuspendEnd,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _BP,
      _Addr

      //      _association_name // Make association public
}
