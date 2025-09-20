-- ============================== q5 =================================================
-- ~~~~~~ q5(LEFT JOIN THEN EXCLUDE): q5_comment_no_score  ~~~~~~
-- SELECT DISTINCT comments.username, comments.term, comments.project, comments.submitted_at    -- Try #3: add keyword DISTINCT
-- FROM comments LEFT OUTER JOIN test_scores
--    ON comments.project = test_scores.project
--   AND comments.term = test_scores.term
--   AND comments.username = test_scores.username
--   AND comments.submitted_at = test_scores.submitted_at
-- WHERE test_scores.username IS NULL;    -- Try #1: change test_scores.test_value to test_scores.username
-- -- ORDER BY comments.username, comments.term, comments.project, comments.submitted_at;

-- ~~~~~~ q5(NOT EXISTS): q5_comment_no_score  ~~~~~~
SELECT DISTINCT comments.username, comments.term, comments.project, comments.submitted_at FROM comments
WHERE NOT EXISTS(
  SELECT * FROM test_scores
  WHERE comments.project = test_scores.project
    AND comments.term = test_scores.term
    AND comments.username = test_scores.username
    AND comments.submitted_at = test_scores.submitted_at
);