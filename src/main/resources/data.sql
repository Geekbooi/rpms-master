INSERT INTO roles (name)
SELECT 'Admin' FROM DUAL
WHERE NOT EXISTS (SELECT * FROM roles WHERE name='Admin' LIMIT 1);

INSERT INTO roles (name)
SELECT 'Owner' FROM DUAL
WHERE NOT EXISTS (SELECT * FROM roles WHERE name='Owner' LIMIT 1);

INSERT INTO roles (name)
SELECT 'Renter' FROM DUAL
WHERE NOT EXISTS (SELECT * FROM roles WHERE name='Renter' LIMIT 1);

INSERT INTO roles (name)
SELECT 'Guest' FROM DUAL
WHERE NOT EXISTS (SELECT * FROM roles WHERE name='Guest' LIMIT 1);


-- USER

# -- INSERT INTO users (id, user_name, email, first_name, last_name, password, phone_number)
# -- VALUES (null, 'admin', 'admin@miu.edu', 'John', 'Smith', '$2a$10$zRLQjacElrjmGJouWg4G0ehtg4oYZ88RtORarMtuxuWCvo122a3iK','641-234-5679');
#
# INSERT INTO users (user_name, email, first_name, last_name, password, phone_number)
# VALUES ( 'owner', 'owner@miu.edu', 'Dana', 'Ali', '$2a$10$h2DNVT4FN9vC6fuc8By1huiF7qGUMrpJqC6oGUqD4oYi7mEHfc2Ly','441-134-5660');
#
# INSERT INTO users (user_name, email, first_name, last_name, password, phone_number)
# VALUES ('renter', 'renter@miu.edu', 'Renter', 'Renter','$2a$10$jcatEpTX1.L3Gq3KIyE/E.d3FzViiNkyKY9dl62GUmhqgzM.FzgI6', '941-234-0023');
#
# -- User_Role
#
# INSERT INTO user_role (user_id, role_id)
# values (1, 1);
#
# INSERT INTO user_role (user_id, role_id)
# values (2, 2);
#
# INSERT INTO user_role (user_id, role_id)
# values (3, 3);
#
# -- Address
#
INSERT INTO address ( city, state, street_name, zip)
VALUES ('Fairfield', 'Iowa', '1000N 4th Street', '52557');

INSERT INTO address (city, state, street_name, zip)
VALUES ( 'Oakland', 'California', '398N Street', '62557');

INSERT INTO address ( city, state, street_name, zip)
VALUES ( 'Burlington', 'Iowa', '5000E Street', '32557');

INSERT INTO address (city, state, street_name, zip)
VALUES ( 'Iowa city', 'Iowa', '4000W Street', '32557');
#
# -- Legal Entity
#
# # INSERT INTO legal_entity (legal_entity_type, first_name, last_name, address_id, user_id, legal_entity_name,phone_number, company_name)
# # VALUES ('company','', '', 1, 1, 'Blue Sky Realty', '941-234-3423', 'Blue Sky Realty');
# #
# # INSERT INTO legal_entity (legal_entity_type, first_name, last_name, address_id, user_id, legal_entity_name,phone_number, company_name)
# # VALUES ( 'person', 'Noah', 'Johns', 2,1 , 'Noah Johns', '441-234-9823', '');
# #
# # INSERT INTO legal_entity ( legal_entity_type, first_name, last_name, address_id, user_id, legal_entity_name,phone_number, company_name)
# # VALUES ( 'company', '', '', 3, 2, 'Landmark Realty Group', '441-234-2345', 'Landmark Realty Group');
#
# -- Admin
#
# -- INSERT INTO admin (id, name, legal_entity_id)
# -- VALUES (null, 'John Smith', 1);
#
# -- Tenant
# #
# # INSERT INTO tenant ( name, legal_entity_id)
# # VALUES ( 'Maria Mike', 1);
# #
# # INSERT INTO tenant ( name, legal_entity_id)
# # VALUES ( 'Hanna Tesfay', 2);
# #
# # INSERT INTO tenant ( name, legal_entity_id)
# # VALUES ( 'Annna Mathew', 3);
#
# -- Landlord
# #
# # INSERT INTO landlord ( name, legal_entity_id)
# # VALUES ( 'Yohannes', 2);
# #
# # INSERT INTO landlord ( name, legal_entity_id)
# # VALUES ( 'Amelia', 1);
# #
# # INSERT INTO landlord ( name, legal_entity_id)
# # VALUES ( 'Mike', 2);
#
# -- Property
#
# INSERT INTO property ( name, property_type, no_of_bath_rooms, no_of_rooms, land_extent, address_id)
# VALUES ( 'house', 'house', 2, 4, 5870, 2);
#
# INSERT INTO property ( name, property_type, no_of_bath_rooms, no_of_rooms, land_extent, address_id)
# VALUES ( 'apartment', 'apartment', 2, 6, 12870, 3);
#
# INSERT INTO property ( name, property_type, no_of_bath_rooms, no_of_rooms, land_extent, address_id)
# VALUES ( 'house', 'house', 1, 2, 1870, 1);
#
# INSERT INTO property ( name, property_type, no_of_bath_rooms, no_of_rooms, land_extent, address_id)
# VALUES ( 'apartment', 'apartment', 2, 6, 12870, 1);
#
# -- Landlord_Property
#
# -- INSERT INTO landlord_property (property_id, landlord_id)
# -- VALUES (1, 3);
#
# -- INSERT INTO landlord_property (property_id, landlord_id)
# -- VALUES (2, 1);
#
# -- INSERT INTO landlord_property (property_id, landlord_id)
# -- VALUES (3, 2);
#
# -- INSERT INTO Landlord_property (property_id, landlord_id)
# -- VALUES (4, 3);
#
# -- Tenant_Property
#
# # INSERT INTO tenant_property (property_id, tenant_id)
# # VALUES (1, 2);
#
# -- Rent_Application
#
# INSERT INTO rent_application ( application_id, status, title, property_id)
# VALUES ( 'H123', 'approved', 'House Rent Application', 1 );
#
# INSERT INTO rent_application ( application_id, status, title, property_id)
# VALUES ( 'A123', 'pending', 'Apartment Rent Application', 2 );
#
# -- Rental_Agreement
#
# INSERT INTO rental_agreement (agreement_id, contract, end_date, prepared_date, signed_date, start_date, title, property_id )
# VALUES ( 'HA234', '', '2024-03-11', '2023-03-09', '2023-03-11', '2023-03-12', 'House Rental Agreement', 1 );
#
