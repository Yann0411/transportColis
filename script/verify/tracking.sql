-- Verify transportColis:tracking on pg


BEGIN;

select id,serial_number,content_description,weight,height,worth,sender_id,recipient_id,request_time,expedition_time,delivered_time,width,depth from package;

ROLLBACK;
