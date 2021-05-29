@EndUserText.label: 'Projection View - Kurse'
@AccessControl.authorizationCheck: #CHECK
define view entity ZHSKA_C_00_COURSE
  as projection on ZHSKA_I_00_COURSE
{
  key CourseGuid,
      Title,
      StudentGuid,
      Description,
      /* Associations */
      _Student : redirected to parent ZHSKA_C_00_STUDENT
}
