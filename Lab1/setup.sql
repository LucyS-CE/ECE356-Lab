-- q1 index
-- CREATE INDEX idx_comments_project ON comments(project);

-- q2 index
CREATE INDEX idx_comments_project_term ON comments (project, term);

-- q3 index 
-- CREATE INDEX idx_cc_project_function ON cognitive_complexity (project, function_name);
CREATE INDEX idx_cc_project_function_complexity ON cognitive_complexity (project, function_name, complexity);

-- q4 index
-- CREATE INDEX idx_cc_function_project ON cognitive_complexity(function_name, project);

-- q5 readonly, cannot create index