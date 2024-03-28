-- Verify transportColis:version_1 on pg

BEGIN;

select id, reference, name,address,additional,postal_code,city from place;
select id,serial_number,content_description,weight,height,worth,sender_id,recipient_id,request_time,expedition_time,delivered_time,width,depth from package;

ROLLBACK;
