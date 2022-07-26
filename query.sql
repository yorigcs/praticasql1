--QUESTION 1 --

SELECT u.id,u."name", c."name" as city
FROM users u JOIN cities c ON u."cityId" = c.id
WHERE c."name" = 'Rio de Janeiro';

--QUESTION 2 --

SELECT t.id, u."name" as writer, u2."name" as recipient, t.message
FROM testimonials t
JOIN users u ON t."writerId" = u.id
JOIN users u2 ON t."recipientId" = u2.id;

--QUESTION 3 --

SELECT e."userId",u."name", c."name" as course, s."name" as school, e."endDate"
FROM educations e
JOIN users u ON u.id = e."userId"
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE u.id = 30
AND e.status = 'finished';

--QUESTION 4 --

SELECT u.id, u."name", r."name"  as "role", c."name" as company, e."startDate"
FROM experiences e
JOIN users u ON e."userId" = u.id
JOIN roles r ON e."roleId"  = r.id
JOIN companies c ON e."companyId"  = c.id
WHERE u.id = 50
AND e."endDate"  IS NULL;
