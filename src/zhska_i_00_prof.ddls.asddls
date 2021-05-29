@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Professoren'
//@ObjectModel.resultSet.sizeCategory: #XS
define root view entity ZHSKA_I_00_Prof
  as select from zhska_00_prof
{

      @UI.facet: [ { id:              'Student',
                     purpose:         #STANDARD,
                     type:            #IDENTIFICATION_REFERENCE,
                     label:           'Studentendaten',
                     position:        10 } ]
      @UI.hidden: true
  key prof_guid             as ProfGuid,
      @UI.lineItem: [{ label: 'Name' }]
      @UI.identification: [{ label: 'Name' }]
      name                  as Name,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt
}
