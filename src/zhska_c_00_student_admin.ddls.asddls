@EndUserText.label: 'Projection View - Student'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZHSKA_C_00_Student_Admin
  as projection on ZHSKA_I_00_STUDENT
{
  key StudentGUID,
      StudentID,
      Name,
      IsMatriculated
}
