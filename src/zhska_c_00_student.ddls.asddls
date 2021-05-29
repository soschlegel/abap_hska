@EndUserText.label: 'Projection View - Student'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZHSKA_C_00_STUDENT
  as projection on ZHSKA_I_00_STUDENT
{
  key StudentGUID,
      StudentID,
      Name,
      IsMatriculated,
      LastChangedAt,
      LocalLastChangedAt,
      LocalLastChangedBy,
      LocalCreatedAt,
      LocalCreatedBy,
      _Course: redirected to composition child ZHSKA_C_00_COURSE
}
