BEGIN;

INSERT INTO public.place(
	reference, name, address, additional, postal_code, city)
	VALUES 
	('atome_1','Norris','everywhere','dont look after him',00000,'Toulouse'),
	('atome_2','JCVD','aware', null, 54321, 'Bruxelles');

    INSERT INTO public."package"(
	serial_number, content_description, weight, volume, worth, sender_id, recipient_id)
	VALUES (1, 'vent', 0.0,0 ,10000000, 1, 2);

COMMIT;