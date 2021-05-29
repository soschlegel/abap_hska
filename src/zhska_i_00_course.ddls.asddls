@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Kurse des Studenten'
@Metadata.allowExtensions: true
define view entity ZHSKA_I_00_COURSE
  as select from zhska_00_course
  association     to parent ZHSKA_I_00_STUDENT as _Student on $projection.StudentGuid = _Student.StudentGUID
  association [1] to ZHSKA_I_00_Prof           as _Prof    on $projection.ProfGuid = _Prof.ProfGuid
{

  key course_guid           as CourseGuid,

      title                 as Title,

      student_guid          as StudentGuid,

      @ObjectModel.text.element: ['ProfName']
      prof_guid             as ProfGuid,
      @UI.textArrangement: #TEXT_ONLY
      _Prof.Name            as ProfName,

      description           as Description,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,


      _Prof,
      _Student // Make association public
}
