-- esb_fnb.app_session definition

CREATE TABLE `app_session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.hub_server definition

CREATE TABLE `hub_server` (
  `serverID` int(11) NOT NULL,
  `hostName` varchar(50) NOT NULL,
  PRIMARY KEY (`serverID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_accesscontrol definition

CREATE TABLE `lk_accesscontrol` (
  `accessID` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `node` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`accessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_accessmapping definition

CREATE TABLE `lk_accessmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(50) NOT NULL,
  `action` varchar(255) NOT NULL,
  `requiredController` varchar(50) DEFAULT NULL,
  `mappingColumn` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=819 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_application definition

CREATE TABLE `lk_application` (
  `applicationID` varchar(15) NOT NULL,
  `applicationName` varchar(20) NOT NULL,
  PRIMARY KEY (`applicationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- esb_fnb.lk_banktemplate definition

CREATE TABLE `lk_banktemplate` (
  `bankTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `bankTemplateName` varchar(50) DEFAULT NULL,
  `externalBankCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bankTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_bannertype definition

CREATE TABLE `lk_bannertype` (
  `bannerTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `bannerTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bannerTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_bomtype definition

CREATE TABLE `lk_bomtype` (
  `bomTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `bomTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bomTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_bookcancelreason definition

CREATE TABLE `lk_bookcancelreason` (
  `bookCancelReasonID` bigint(20) NOT NULL AUTO_INCREMENT,
  `cancelReasonId` varchar(100) NOT NULL,
  `cancelReasonEn` varchar(100) NOT NULL,
  PRIMARY KEY (`bookCancelReasonID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


-- esb_fnb.lk_bookchannel definition

CREATE TABLE `lk_bookchannel` (
  `bookChannelID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Book Channel ID',
  `bookChannelName` varchar(100) NOT NULL COMMENT 'Ex: Book via ESB Order',
  PRIMARY KEY (`bookChannelID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_bookpurpose definition

CREATE TABLE `lk_bookpurpose` (
  `bookPurposeID` bigint(20) NOT NULL AUTO_INCREMENT,
  `purposeNameId` varchar(100) NOT NULL,
  `purposeNameEn` varchar(100) NOT NULL,
  PRIMARY KEY (`bookPurposeID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;


-- esb_fnb.lk_branchsetting definition

CREATE TABLE `lk_branchsetting` (
  `branchSettingID` int(11) NOT NULL,
  `key1` varchar(100) DEFAULT NULL,
  `key2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`branchSettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_branchtype definition

CREATE TABLE `lk_branchtype` (
  `branchTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `branchTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`branchTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_brandsetting definition

CREATE TABLE `lk_brandsetting` (
  `brandSettingID` int(11) NOT NULL,
  `key1` varchar(100) DEFAULT NULL,
  `key2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`brandSettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_cancelreasontype definition

CREATE TABLE `lk_cancelreasontype` (
  `cancelReasonTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `cancelReasonTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`cancelReasonTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_cardnumbervalidationtype definition

CREATE TABLE `lk_cardnumbervalidationtype` (
  `cardNumberValidationTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `cardNumberValidationName` varchar(50) NOT NULL,
  PRIMARY KEY (`cardNumberValidationTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_cashcounttype definition

CREATE TABLE `lk_cashcounttype` (
  `cashCountTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `cashCountTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cashCountTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_cashflowcategorytype definition

CREATE TABLE `lk_cashflowcategorytype` (
  `cashFlowCategoryTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `cashFlowCategoryTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`cashFlowCategoryTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_cashflowmethod definition

CREATE TABLE `lk_cashflowmethod` (
  `cashFlowMethodID` int(11) NOT NULL AUTO_INCREMENT,
  `cashFlowMethodName` varchar(50) NOT NULL,
  PRIMARY KEY (`cashFlowMethodID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Cash Flow Method Look Up';


-- esb_fnb.lk_cashflowtype definition

CREATE TABLE `lk_cashflowtype` (
  `cashFlowTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `cashFlowTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`cashFlowTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_categorytype definition

CREATE TABLE `lk_categorytype` (
  `categoryTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`categoryTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_city definition

CREATE TABLE `lk_city` (
  `cityID` int(11) NOT NULL AUTO_INCREMENT,
  `provinceID` int(11) NOT NULL,
  `cityName` varchar(50) NOT NULL,
  PRIMARY KEY (`cityID`)
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_color definition

CREATE TABLE `lk_color` (
  `colorID` int(11) NOT NULL,
  `colorCode` varchar(7) NOT NULL,
  `colorGradationCode` varchar(7) NOT NULL,
  `colorName` varchar(20) NOT NULL,
  PRIMARY KEY (`colorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- esb_fnb.lk_colordetail definition

CREATE TABLE `lk_colordetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `colorID` int(11) NOT NULL,
  `kioskMode` tinyint(1) NOT NULL,
  `btnCategoryColorCode` varchar(7) NOT NULL,
  `btnCancelColorCode` varchar(7) NOT NULL,
  `btnSearchColorCode` varchar(7) NOT NULL,
  `btnSearchGradationColorCode` varchar(7) NOT NULL,
  `btnBackColorCode` varchar(7) NOT NULL,
  `indicatorDiscColorCode` varchar(7) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


-- esb_fnb.lk_country definition

CREATE TABLE `lk_country` (
  `countryID` int(11) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(50) NOT NULL,
  PRIMARY KEY (`countryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_dashboarditem definition

CREATE TABLE `lk_dashboarditem` (
  `dashboardItemID` int(11) NOT NULL AUTO_INCREMENT,
  `dashboardItemName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dashboardItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_day definition

CREATE TABLE `lk_day` (
  `dayID` int(11) NOT NULL AUTO_INCREMENT,
  `dayName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dayID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_deliverycourier definition

CREATE TABLE `lk_deliverycourier` (
  `deliveryCourierID` int(11) NOT NULL,
  `deliveryCourierName` varchar(50) NOT NULL,
  `deliveryCourierType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`deliveryCourierID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_depreciationtype definition

CREATE TABLE `lk_depreciationtype` (
  `depreciationTypeID` int(11) NOT NULL,
  `depreciationTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`depreciationTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_district definition

CREATE TABLE `lk_district` (
  `districtID` int(11) NOT NULL AUTO_INCREMENT,
  `cityID` int(11) NOT NULL,
  `districtName` varchar(50) NOT NULL,
  PRIMARY KEY (`districtID`),
  KEY `idx_lk_district_cityID` (`cityID`)
) ENGINE=InnoDB AUTO_INCREMENT=7004 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_employeeinputmode definition

CREATE TABLE `lk_employeeinputmode` (
  `employeeInputID` int(11) NOT NULL AUTO_INCREMENT,
  `employeeInputName` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeInputID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_excludecopybranchsetting definition

CREATE TABLE `lk_excludecopybranchsetting` (
  `branchSettingID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`branchSettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;


-- esb_fnb.lk_externalapi definition

CREATE TABLE `lk_externalapi` (
  `externalApiID` int(11) NOT NULL AUTO_INCREMENT,
  `externalApi` varchar(100) NOT NULL,
  PRIMARY KEY (`externalApiID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_externalmembershiptype definition

CREATE TABLE `lk_externalmembershiptype` (
  `externalMembershipTypeID` varchar(20) NOT NULL,
  `externalMembershipTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`externalMembershipTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_externalpartnertype definition

CREATE TABLE `lk_externalpartnertype` (
  `externalPartnerTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `externalPartnerType` varchar(100) NOT NULL,
  PRIMARY KEY (`externalPartnerTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_filteraccess definition

CREATE TABLE `lk_filteraccess` (
  `accessID` varchar(10) NOT NULL,
  `insertAcc` tinyint(1) NOT NULL,
  `updateAcc` tinyint(1) NOT NULL,
  `deleteAcc` tinyint(1) NOT NULL,
  `authorizeAcc` tinyint(1) NOT NULL,
  `viewAcc` tinyint(1) NOT NULL,
  `releaseAcc` tinyint(1) NOT NULL,
  PRIMARY KEY (`accessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_gender definition

CREATE TABLE `lk_gender` (
  `genderID` int(11) NOT NULL AUTO_INCREMENT,
  `genderName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`genderID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_greeting definition

CREATE TABLE `lk_greeting` (
  `greetingID` int(11) NOT NULL AUTO_INCREMENT,
  `greetingName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`greetingID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_limittype definition

CREATE TABLE `lk_limittype` (
  `limitTypeID` int(11) NOT NULL,
  `limitTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`limitTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_locationtype definition

CREATE TABLE `lk_locationtype` (
  `locationTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `locationTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`locationTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_logtype definition

CREATE TABLE `lk_logtype` (
  `logTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `logTypeName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`logTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Table Transaction Log Type';


-- esb_fnb.lk_mapcoamaster definition

CREATE TABLE `lk_mapcoamaster` (
  `key` varchar(100) NOT NULL,
  `mapCoaTypeID` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_mapcoatype definition

CREATE TABLE `lk_mapcoatype` (
  `mapCoaTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `mapCoaTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mapCoaTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_membershiptype definition

CREATE TABLE `lk_membershiptype` (
  `membershipTypeID` int(11) NOT NULL,
  `membershipTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`membershipTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_membertype definition

CREATE TABLE `lk_membertype` (
  `memberTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `memberTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`memberTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_menuexclusiontype definition

CREATE TABLE `lk_menuexclusiontype` (
  `menuExclusionTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `menuExclusionTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`menuExclusionTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_menusize definition

CREATE TABLE `lk_menusize` (
  `menuSizeID` int(11) NOT NULL AUTO_INCREMENT,
  `menuSizeName` varchar(50) DEFAULT NULL,
  `width` decimal(2,1) NOT NULL,
  `height` decimal(2,1) NOT NULL,
  PRIMARY KEY (`menuSizeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_metric definition

CREATE TABLE `lk_metric` (
  `metricID` int(11) NOT NULL AUTO_INCREMENT,
  `metricName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`metricID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_paymentmethod definition

CREATE TABLE `lk_paymentmethod` (
  `paymentID` int(11) NOT NULL,
  `paymentName` varchar(20) NOT NULL,
  PRIMARY KEY (`paymentID`),
  UNIQUE KEY `paymentID` (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_paymentmethodtype definition

CREATE TABLE `lk_paymentmethodtype` (
  `paymentMethodTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `paymentMethodTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paymentMethodTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_period definition

CREATE TABLE `lk_period` (
  `periodTypeID` int(11) NOT NULL,
  `periodName` varchar(50) NOT NULL,
  PRIMARY KEY (`periodTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posaccesscontrol definition

CREATE TABLE `lk_posaccesscontrol` (
  `posAccessID` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `node` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`posAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posaccesscontrol2 definition

CREATE TABLE `lk_posaccesscontrol2` (
  `posAccessID` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `node` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `posAppID` int(11) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`posAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posaccessmapping definition

CREATE TABLE `lk_posaccessmapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(50) NOT NULL,
  `action` varchar(255) NOT NULL,
  `requiredController` varchar(50) DEFAULT NULL,
  `mappingColumn` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posapp definition

CREATE TABLE `lk_posapp` (
  `posAppID` int(11) NOT NULL,
  `posAppName` varchar(50) NOT NULL,
  PRIMARY KEY (`posAppID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_poscalculation definition

CREATE TABLE `lk_poscalculation` (
  `posCalculationID` int(11) NOT NULL,
  `posCalculationName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`posCalculationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posexternalpayment definition

CREATE TABLE `lk_posexternalpayment` (
  `posExternalPaymentID` varchar(10) NOT NULL,
  `posExternalPaymentName` varchar(50) NOT NULL,
  `posExternalPaymentType` varchar(20) DEFAULT NULL,
  `paymentGatewayName` varchar(50) DEFAULT NULL,
  `minimumPaymentAmount` decimal(20,4) DEFAULT '0.0000',
  `requiredBrandSettingIDs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`posExternalPaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posfilteraccess definition

CREATE TABLE `lk_posfilteraccess` (
  `posAccessID` varchar(10) NOT NULL,
  `insertAcc` tinyint(1) NOT NULL,
  `updateAcc` tinyint(1) NOT NULL,
  `deleteAcc` tinyint(1) NOT NULL,
  `authorizeAcc` tinyint(1) NOT NULL,
  `viewAcc` tinyint(1) NOT NULL,
  PRIMARY KEY (`posAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posfilteraccess2 definition

CREATE TABLE `lk_posfilteraccess2` (
  `posAccessID` varchar(10) NOT NULL,
  `filterAccessID` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `subNodes` varchar(500) NOT NULL,
  `action` text,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`posAccessID`,`filterAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_posmode definition

CREATE TABLE `lk_posmode` (
  `posModeID` int(11) NOT NULL,
  `posModeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`posModeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_postype definition

CREATE TABLE `lk_postype` (
  `posTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `posTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`posTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_printerconnection definition

CREATE TABLE `lk_printerconnection` (
  `printerConnectionID` int(11) NOT NULL AUTO_INCREMENT,
  `printerConnectionName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`printerConnectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_printertype definition

CREATE TABLE `lk_printertype` (
  `printerTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `printerTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`printerTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_printingmode definition

CREATE TABLE `lk_printingmode` (
  `printingModeID` int(11) NOT NULL,
  `printingModeName` varchar(50) NOT NULL,
  PRIMARY KEY (`printingModeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_productsalestype definition

CREATE TABLE `lk_productsalestype` (
  `productSalesTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productSalesTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_producttemplate definition

CREATE TABLE `lk_producttemplate` (
  `productTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `productTemplate` varchar(50) NOT NULL,
  `excelName` varchar(100) NOT NULL,
  PRIMARY KEY (`productTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_promotionmembertype definition

CREATE TABLE `lk_promotionmembertype` (
  `promotionMemberTypeID` int(11) NOT NULL,
  `promotionMemberTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`promotionMemberTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_promotiontype definition

CREATE TABLE `lk_promotiontype` (
  `promotionTypeID` int(11) NOT NULL,
  `promotionTypeDesc` varchar(50) NOT NULL,
  `flagExternal` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`promotionTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_provider definition

CREATE TABLE `lk_provider` (
  `providerID` int(11) NOT NULL AUTO_INCREMENT,
  `providerName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`providerID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_province definition

CREATE TABLE `lk_province` (
  `provinceID` int(11) NOT NULL AUTO_INCREMENT,
  `provinceName` varchar(50) NOT NULL,
  `countryID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`provinceID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_purchasetype definition

CREATE TABLE `lk_purchasetype` (
  `purchaseTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`purchaseTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_questiontype definition

CREATE TABLE `lk_questiontype` (
  `typeID` int(11) NOT NULL,
  `typeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_recurringtype definition

CREATE TABLE `lk_recurringtype` (
  `recurringTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `recurringTypeName` varchar(100) NOT NULL,
  PRIMARY KEY (`recurringTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_reportgroup definition

CREATE TABLE `lk_reportgroup` (
  `reportGroupID` int(11) NOT NULL,
  `reportGroupEnglish` varchar(100) NOT NULL,
  `reportGroupIndonesian` varchar(100) NOT NULL,
  `orderID` int(11) NOT NULL,
  PRIMARY KEY (`reportGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_reportgroupmapping definition

CREATE TABLE `lk_reportgroupmapping` (
  `reportGroupID` int(11) NOT NULL,
  `accessID` varchar(10) NOT NULL,
  PRIMARY KEY (`accessID`,`reportGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_requestprocess definition

CREATE TABLE `lk_requestprocess` (
  `requestProcessID` int(11) NOT NULL AUTO_INCREMENT,
  `requestProcessName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`requestProcessID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_requesttemplatetype definition

CREATE TABLE `lk_requesttemplatetype` (
  `requestTemplateTypeID` varchar(10) NOT NULL,
  `requestTemplateTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`requestTemplateTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_revaluationtype definition

CREATE TABLE `lk_revaluationtype` (
  `revaluationTypeID` int(11) NOT NULL,
  `revaluationName` varchar(50) NOT NULL,
  PRIMARY KEY (`revaluationTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_selforderpaymentmethod definition

CREATE TABLE `lk_selforderpaymentmethod` (
  `selfOrderPaymentMethodID` varchar(10) NOT NULL,
  `selfOrderPaymentMethodName` varchar(100) NOT NULL,
  `requiredBrandSettingIDs` varchar(100) DEFAULT NULL,
  `paymentGatewayName` varchar(50) DEFAULT NULL,
  `displayName` varchar(50) DEFAULT NULL,
  `displayNameId` varchar(50) DEFAULT NULL,
  `description` text,
  `descriptionId` text,
  `needPhoneInput` tinyint(1) DEFAULT '0',
  `minimumTransaction` decimal(20,4) DEFAULT NULL,
  `paymentExpiredTime` int(11) DEFAULT NULL,
  `ezoServerID` varchar(10) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`selfOrderPaymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_signofftype definition

CREATE TABLE `lk_signofftype` (
  `signOffTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `signOffTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`signOffTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_status definition

CREATE TABLE `lk_status` (
  `statusID` int(11) NOT NULL,
  `statusName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_statusmapping definition

CREATE TABLE `lk_statusmapping` (
  `statusKey` varchar(50) NOT NULL,
  `statusID` int(11) NOT NULL,
  `orderList` int(11) NOT NULL,
  PRIMARY KEY (`statusKey`,`statusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_subdistrict definition

CREATE TABLE `lk_subdistrict` (
  `subDistrictID` int(11) NOT NULL AUTO_INCREMENT,
  `districtID` int(11) NOT NULL,
  `subDistrictName` varchar(50) NOT NULL,
  PRIMARY KEY (`subDistrictID`)
) ENGINE=InnoDB AUTO_INCREMENT=81637 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_tabletype definition

CREATE TABLE `lk_tabletype` (
  `tableTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `tableTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tableTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_timezone definition

CREATE TABLE `lk_timezone` (
  `timezoneID` int(11) NOT NULL,
  `timezoneName` varchar(200) NOT NULL,
  `timezoneVal` decimal(5,2) NOT NULL,
  PRIMARY KEY (`timezoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_transactionmode definition

CREATE TABLE `lk_transactionmode` (
  `transactionModeID` int(11) NOT NULL,
  `transactionModeName` varchar(50) NOT NULL,
  PRIMARY KEY (`transactionModeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- esb_fnb.lk_transactionprinttype definition

CREATE TABLE `lk_transactionprinttype` (
  `transactionPrintTypeID` int(11) NOT NULL,
  `transactionType` varchar(50) NOT NULL,
  `printTypeMode` int(11) NOT NULL,
  `printTypeName` varchar(50) NOT NULL,
  `previewImage` varchar(50) DEFAULT NULL,
  `previewAnimation` varchar(50) DEFAULT NULL,
  `previewResult` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`transactionPrintTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_transactiontype definition

CREATE TABLE `lk_transactiontype` (
  `transactionTypeID` int(11) NOT NULL,
  `transactionTypeName` varchar(50) NOT NULL,
  PRIMARY KEY (`transactionTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_userfilteraccess definition

CREATE TABLE `lk_userfilteraccess` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeID` varchar(10) NOT NULL,
  `accessID` varchar(10) NOT NULL,
  `viewAcc` tinyint(1) NOT NULL DEFAULT '0',
  `insertAcc` tinyint(1) NOT NULL DEFAULT '0',
  `updateAcc` tinyint(1) NOT NULL DEFAULT '0',
  `deleteAcc` tinyint(1) NOT NULL DEFAULT '0',
  `authorizeAcc` tinyint(1) NOT NULL DEFAULT '0',
  `releaseAcc` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_usertype definition

CREATE TABLE `lk_usertype` (
  `userTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_vouchercategory definition

CREATE TABLE `lk_vouchercategory` (
  `voucherCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `voucherCategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`voucherCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_vouchersource definition

CREATE TABLE `lk_vouchersource` (
  `voucherSourceID` int(11) NOT NULL AUTO_INCREMENT,
  `voucherSourceName` varchar(50) NOT NULL,
  PRIMARY KEY (`voucherSourceID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.lk_vouchertype definition

CREATE TABLE `lk_vouchertype` (
  `voucherTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `voucherTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`voucherTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.map_companygroup definition

CREATE TABLE `map_companygroup` (
  `companyGroupID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  PRIMARY KEY (`companyGroupID`,`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.map_user definition

CREATE TABLE `map_user` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.ms_company definition

CREATE TABLE `ms_company` (
  `companyID` int(11) NOT NULL AUTO_INCREMENT,
  `companyCode` varchar(5) NOT NULL,
  `companyName` varchar(100) NOT NULL,
  `companyAddress` varchar(200) DEFAULT NULL,
  `companyAuthKey` varchar(50) NOT NULL,
  `flagHub` tinyint(1) DEFAULT NULL,
  `posVersion` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=4011 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.ms_companygroup definition

CREATE TABLE `ms_companygroup` (
  `companyGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `companyGroupName` varchar(100) NOT NULL,
  PRIMARY KEY (`companyGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.ms_posversion definition

CREATE TABLE `ms_posversion` (
  `posVersionID` varchar(10) NOT NULL,
  `versionName` varchar(45) NOT NULL,
  `downloadUrl` varchar(300) NOT NULL,
  `downloadMd5` varchar(45) NOT NULL,
  PRIMARY KEY (`posVersionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.ms_setting definition

CREATE TABLE `ms_setting` (
  `key1` varchar(100) NOT NULL,
  `key2` varchar(100) NOT NULL,
  `value1` varchar(100) DEFAULT NULL,
  `value2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key1`,`key2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.ms_user definition

CREATE TABLE `ms_user` (
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullName` varchar(200) NOT NULL,
  `userRoleID` int(11) NOT NULL DEFAULT '0',
  `dbName` varchar(100) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `flagNoCharge` int(11) DEFAULT '0',
  `flagSuspend` tinyint(1) DEFAULT '0',
  `flagAllBranch` tinyint(1) NOT NULL DEFAULT '0',
  `flagBillingInfo` tinyint(1) NOT NULL DEFAULT '1',
  `authKey` varchar(50) DEFAULT '',
  `posAuthKey` varchar(50) DEFAULT '',
  `flagReceiveEmail` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) DEFAULT 'SYSTEM',
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `idx_ms_user_companyID` (`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.release_notes definition

CREATE TABLE `release_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `releaseDate` date NOT NULL,
  `releaseTitle` varchar(100) NOT NULL,
  `releaseDesc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- esb_fnb.request_log definition

CREATE TABLE `request_log` (
  `id` int(11) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `absolute_url` varchar(1000) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `user_agent` varchar(1000) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `auth_user` varchar(255) DEFAULT NULL,
  `auth_password` varchar(255) DEFAULT NULL,
  `header` varchar(1000) DEFAULT NULL,
  `body_params` text,
  `timestamp` timestamp NULL DEFAULT NULL,
  `memory_usage` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;