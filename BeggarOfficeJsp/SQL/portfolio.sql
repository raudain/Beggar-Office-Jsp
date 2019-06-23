use portfolio;

select * from workers;

ALTER TABLE workers
DROP COLUMN	workerscol;

GRANT ALL PRIVILEGES ON portfolio.workers TO 'roody'@'localhost';