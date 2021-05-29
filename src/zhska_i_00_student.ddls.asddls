@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Student'
@Metadata.allowExtensions: true
define root view entity ZHSKA_I_00_STUDENT
  as select from zhska_00_student
  composition [0..*] of ZHSKA_I_00_COURSE as _Course
{


  key  student_guid          as StudentGUID,

       student_id            as StudentID,

       name                  as Name,

       is_matriculated       as IsMatriculated,

       @Semantics.user.createdBy: true
       local_created_by      as LocalCreatedBy,
       @Semantics.systemDateTime.createdAt: true
       local_created_at      as LocalCreatedAt,
       @Semantics.user.lastChangedBy: true
       local_last_changed_by as LocalLastChangedBy,
       //local ETag field --> OData ETag
       @Semantics.systemDateTime.localInstanceLastChangedAt: true
       local_last_changed_at as LocalLastChangedAt,

       //total ETag field
       @Semantics.systemDateTime.lastChangedAt: true
       last_changed_at       as LastChangedAt,



       _Course



}
