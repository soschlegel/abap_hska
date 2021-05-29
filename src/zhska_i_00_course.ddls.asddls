@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Kurse des Studenten'
@Metadata.allowExtensions: true
define view entity ZHSKA_I_00_COURSE
  as select from zhska_00_course
  association to parent ZHSKA_I_00_STUDENT as _Student on $projection.StudentGuid = _Student.StudentGUID
{
      
  key course_guid  as CourseGuid,      
      
      title        as Title,
      
      student_guid as StudentGuid,      
      
      description  as Description,
      _Student // Make association public
}
