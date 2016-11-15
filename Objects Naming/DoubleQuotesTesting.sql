CREATE TABLE ports
(port_id NUMBER,
port_name VARCHAR2(20));

select * from ports;


select * from "ports";

-- that can be accessed with double quote
select * from "PORTS";

CREATE TABLE "ports"
(port_id NUMBER,
port_name VARCHAR2(20));


CREATE TABLE "PORTS"
(port_id NUMBER,
port_name VARCHAR2(20));



CREATE TABLE "port"
(port_id NUMBER,
port_name VARCHAR2(20));

select * from port;

select * from "port";

select * from PORT;
