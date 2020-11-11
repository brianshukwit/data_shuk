import create
import query

# Connect to Server and create database
server_connection = create.create_server_connection("localhost","root",pw)
create_database_query = "CREATE DATABASE AppliedJobs"
create.create_database(server_connection, create_database_query)


create_jobs_applied_table = """
CREATE TABLE `AppliedJobs` (
  `company_name` int NOT NULL,
  `location` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `contact_name` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `response` varchar(45) DEFAULT NULL,
  `applied_id` varchar(45) NOT NULL,
  PRIMARY KEY (`applied_id`)
)
"""

db_connection = create.create_db_connection("localhost","root", pw, db)
query.execute_query(db_connection, create_jobs_applied_table)


job_applied = """
INSERT INTO AppliedJobs (response, company_name, location, position, phone_number,contact_name, salary) VALUES
('You dumb','Stratosphere Technical Consulting ','Remote/Dallas','Entry Level Software Engineer','','',''),
('Strung along with a NO','Innolitics','Austin (Remote)','Junior Software Engineer','','Yujan Shrestha','$70,000 to $85,000'),
('Seen','Montgomery County Government TN','Clarksville, TN','Database Administrator - Microsoft SQL Server','(931) 648-5500','','69,704'),
('Retained.','Headspring','Austin','???','877-459-2260','',''),
('Not me.','SAP America Inc.','Allen/Plano/Dallas','Software Design Engineer I Job','(972) 868-2000','',''),
('NOPE.','PestRoutes','Dallas','Software Engineer  ','(888) 496-8293','',''),
('No.','NaviHealth','Brentwood, TN','Data Exchange Engineer (SQL Developer)','','',''),
('No.','SecureLink','Austin','Junior Software Developer','888.897.4498','',''),
('NO!','Percise Systems','Remote/Dallas','SQL Developer','','',''),
('Closed','Service Lloyds','Austin','Junior ETL Developer','(512) 343-0600','',''),
('Closed','TechConnect, LLC  (Recruiter)','Tulsa OK','SQL Developer Analyst','','','$80,000 to $95,000'),
('Closed','DreamVersion','Remote/Tulsa','SQL/Application Development Engineer/Remote','','','$80,000 to $100,000'),
('Closed','DreamVersion','Remote/Austin','SQL/Application Development Engineer/Remote','','','$80,000 to $100,000'),
('Closed','EpicPay','Frisco, TX','Software Developer - Entry to Intermediate','','',''),
('Awaiting 2nd Interview','MRI (REMOTE)','Webster','Not sure yet.','','',''),
('','Tyler Technologies','Plano TX','SQL Conversion Engineer','(972) 713-3700','',''),
('','Chuy's Home Office','Austin','IT Database Administrator','(512) 473-2783','',''),
('','Keste','Plano TX','Software Engineer - Entry Level','(214) 778-2100','',''),
('','NTT DATA Services','Plano TX','Entry-level Developer','(800) 745-3263','',''),
('','Frontier','Allen TX','SQL Developer','(800) 921-8101','',''),
('','IDR','Addison, TX','SQL Developer','(214) 302-5010','',''),
('','Codeauthority','Frisco, TX','???','(888) 346-6334','',''),
('','TFI Family Services','Tulsa OK','Software Developer','(866) 543-9810','',''),
('','Giact Systems LLC','Plano TX','MS SQL Database Developer','(866) 918-2409','',''),
('','TechConnect, LLC  (Recruiter)','Tulsa OK','Programmer (Jr to Mid-level)','','','$70,000 to $85,000'),
('','Tyler Technologies','Dallas','SQL Developer','','',''),
('','Pflugerville Independent School District','Pflugerville, TX','Programmer, Junior','','',''),
('','Health & Human Services','Austin','SQL Server database developer','888-894-4747','',''),
('','Revature','Not sure yet','Not sure yet.','','',''),
('Did Skills Assesment','Victory','Remote/Austin','Junior Web Developer','','',''),
('','4MILE','Remote','Junior Software Engineer','','',''),
('','ReminderMedia','Remote','Junior Software Developer','','',''),
('','The CE Shop','Remote/Greenwood Village, CO','Junior Full Stack Software Engineer','','',''),
('','National General Insurance','Remote','SQL Server Application DBA II (Junior to Mid Level)','','',''),
('','Sync1 Systems','Remote','Junior Full-Stack C# Developer','','',''),
('','Targeted GeoSystems, LLC','Remote','Junior Software Developer','','',''),
('','Payentry and MPAY, Inc. ','Remote','Junior Software Engineer','','',''),
('','Aveshka','Remote','Jr Software Engineer','','',''),
('','AR500 Armor','Remote/Pheonix','Junior Programmer','','',''),
('','Synergistic IT','Remote','Entry Level Software Developer','','',''),
('','Hudson MX','Remote/Atlanta','Entry Level Java Developer','','',''),
('','Brooksource - Nashville, TN','Remote/Nashville','Junior Data Engineer','','',''),
('','CORMAC','Remote/MD','Junior Data Scientist / Entry Level Data Scientist','','','')
"""


query.execute_query(db_connection, job_applied)


q1 = """
SELECT *
FROM AppliedJObs;
"""


results = query.read_query(db_connection, q1)


for result in results:
  print(result)
