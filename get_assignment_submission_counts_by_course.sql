/*
* Get assignment submission counts by course
*/
SELECT 
	  assign.course
	, course.fullname
	, assign.id
	, assign.name
	, (SELECT COUNT(*) FROM mdl_assign_submission s WHERE s.assignment = assign.id)
FROM mdl_assign assign, mdl_course course
WHERE
	assign.course = course.id
ORDER BY course