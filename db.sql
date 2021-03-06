
-- This file may be used to create a database which will properly store
-- the response data. You can use the returned code array to fill this
-- through mysql INSERT queries.

DROP TABLE IF EXISTS `payment_logs`;
CREATE TABLE IF NOT EXISTS `payment_logs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `payment_id` int(10) unsigned NOT NULL,
  `response_code` int(1) NOT NULL,
  `response_subcode` int(1) NOT NULL,
  `response_reason_code` int(1) NOT NULL,
  `response_reason_text` text NOT NULL,
  `approval_code` varchar(6) NOT NULL,
  `avs_result_code` varchar(1) NOT NULL,
  `transaction_id` varchar(155) NOT NULL,
  `invoice_number` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `method` enum('CC','ECHECK') NOT NULL,
  `transaction_type` varchar(55) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `cardholder_first_name` varchar(50) NOT NULL,
  `cardholder_last_name` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `billing_address` varchar(60) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(60) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `shipto_first_name` varchar(50) NOT NULL,
  `shipto_last_name` varchar(50) NOT NULL,
  `shipto_company` varchar(50) NOT NULL,
  `shipto_address` varchar(60) NOT NULL,
  `shipto_city` varchar(40) NOT NULL,
  `shipto_state` varchar(40) NOT NULL,
  `shipto_zip` varchar(20) NOT NULL,
  `shipto_country` varchar(60) NOT NULL,
  `tax_amount` float NOT NULL,
  `duty_amount` float NOT NULL,
  `freight_amount` float NOT NULL,
  `tax_exempt_flag` varchar(5) NOT NULL,
  `po_number` varchar(25) NOT NULL,
  `hash` varchar(155) NOT NULL,
  `cvv_response_code` varchar(1) NOT NULL,
  `cavv_response_code` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `payment_id` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `payment_logs_recurring`;
CREATE TABLE IF NOT EXISTS `payment_logs_recurring` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `payment_id` int(10) unsigned NOT NULL,
  `trxn_type` varchar(6) NOT NULL,
  `ref_id` int(11) default NULL,
  `result_code` varchar(55) NOT NULL,
  `response_code` varchar(55) NOT NULL,
  `response_message` text NOT NULL,
  `subscription_id` varchar(55) NOT NULL,
  `hash` varchar(155) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;