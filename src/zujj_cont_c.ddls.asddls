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
      
      _BP.BpUuid     as BpUuid,
      _BP.Firstname  as FirstName,
      _BP.Lastname   as LastName,
      _BP.Email      as EmailAddress,


      _Addr.AddrUuid as AddrUuid,
      _Addr.Street1  as Street1,
      _Addr.Street2  as Street2,
      _Addr.City     as City,
      _Addr.State    as State,
      _Addr.Country  as Addr_Country,
      _Addr.Zipcode  as Zipcode,
      

      /* Associations */
      _Addr : redirected to composition child ZUJJ_ADDR_C,
      _BP   : redirected to composition child ZUJJ_BP_C
}
