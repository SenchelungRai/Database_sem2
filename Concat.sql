SELECT CONCAT(CONCAT(last_name, '''s job category is '), job_title) AS job_info
  FROM staff
WHERE id = 152;
job_info
------------------------------------------------------
Ale's job category is SA_REP

SELECT CONCAT(CONCAT(last_name, ', '), first_name) AS full_name
  FROM staff
WHERE id = 152;
full_name
------------------------------------------------------
Ale, Bibek

SELECT CONCAT(CONCAT('The email for ', last_name), '@company.com') AS email_address
  FROM staff
WHERE id = 152;
email_address
------------------------------------------------------
The email for Ale@company.com