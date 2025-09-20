-- ============= q1 ===============
-- ~~~~~~ q1: q1_p0 ~~~~~~
SELECT username, term, project, submitted_at, code_filename, start_line, end_line, comment_text FROM comments 
WHERE project = 'p0';
-- ORDER BY username, term, project, submitted_at, code_filename, start_line, end_line;
-- ~~~~~~ q1: q1_p5 ~~~~~~
SELECT username, term, project, submitted_at, code_filename, start_line, end_line, comment_text FROM comments 
WHERE project = 'p5';
-- ORDER BY username, term, project, submitted_at, code_filename, start_line, end_line;

-- ============= q2 ===============
-- ~~~~~~ q2: q2_p0_f24 ~~~~~~
SELECT username, term, project, submitted_at, code_filename, start_line, end_line, comment_text FROM comments 
WHERE project = 'p0' AND term = 'f24';
-- ORDER BY username, term, project, submitted_at, code_filename, start_line, end_line;
-- ~~~~~~ q2: q2_p1_w25 ~~~~~~
SELECT username, term, project, submitted_at, code_filename, start_line, end_line, comment_text FROM comments 
WHERE project = 'p1' AND term = 'w25';
-- ORDER BY username, term, project, submitted_at, code_filename, start_line, end_line;

-- ============= q3 ===============
-- ~~~~~~ q3: q3_average ~~~~~~
SELECT project, function_name, AVG(complexity) AS average_cognitive_complexity 
FROM cognitive_complexity GROUP BY project, function_name;
-- ORDER BY project, function_name;

-- ============= q4 ===============
-- ~~~~~~ q4(SET DIFF): q4_unique_fn_inp5_notp3 ~~~~~~
(SELECT function_name FROM cognitive_complexity WHERE project = 'p5') EXCEPT (SELECT function_name FROM cognitive_complexity WHERE project = 'p3');
-- ~~~~~~ q4(GROUP THEN EXCLUDE): q4_unique_fn_inp5_notp3 ~~~~~~
-- SELECT function_name FROM cognitive_complexity
-- WHERE project IN ('p5','p3') GROUP BY function_name
-- HAVING SUM(project='p5') > 0 AND SUM(project='p3') = 0; 


