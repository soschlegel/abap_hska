@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Student'
@Metadata.allowExtensions: true
define root view entity ZHSKA_I_00_STUDENT
  as select from zhska_00_student
{


  key  student_guid as StudentGUID,

       student_id   as StudentID,

       name         as Name
}
