-- fnb_bmp.delete_log definition

CREATE TABLE `delete_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) NOT NULL,
  `string_data` varchar(1024) NOT NULL,
  `event_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ext_ms_menu definition

CREATE TABLE `ext_ms_menu` (
  `menuID` int(11) NOT NULL,
  `mnIDX` int(11) NOT NULL,
  `szID` int(11) DEFAULT NULL,
  `kID` int(11) DEFAULT NULL,
  `menuShortName` varchar(100) DEFAULT NULL,
  `menuLongName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.external_map_branch definition

CREATE TABLE `external_map_branch` (
  `branchID` int(11) NOT NULL,
  `itemPlu` varchar(20) NOT NULL,
  `externalBranchCode` varchar(20) DEFAULT NULL,
  `externalCompanyCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`branchID`,`itemPlu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_branch definition

CREATE TABLE `hub_branch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `destinationBranchID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_host definition

CREATE TABLE `hub_host` (
  `hubID` int(11) NOT NULL AUTO_INCREMENT,
  `serverID` int(11) NOT NULL,
  `hubName` varchar(50) NOT NULL,
  `companyAuthKey` varchar(50) DEFAULT NULL,
  `flagPrimary` tinyint(1) NOT NULL DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`hubID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_menu definition

CREATE TABLE `hub_menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `sourceMenuID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_menucategory definition

CREATE TABLE `hub_menucategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `menuCategoryID` int(11) NOT NULL,
  `sourceMenuCategoryID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_menucategorydetail definition

CREATE TABLE `hub_menucategorydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `menuCategoryDetailID` int(11) NOT NULL,
  `sourceMenuCategoryDetailID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_ms_branch definition

CREATE TABLE `hub_ms_branch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `branchTypeID` int(11) NOT NULL,
  `branchCode` varchar(20) DEFAULT NULL,
  `branchName` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_ms_paymentmethod definition

CREATE TABLE `hub_ms_paymentmethod` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `paymentMethodTypeID` int(11) NOT NULL,
  `paymentMethodName` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.hub_ms_visitpurpose definition

CREATE TABLE `hub_ms_visitpurpose` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `hubID` int(11) NOT NULL,
  `visitPurposeID` int(11) NOT NULL,
  `visitPurposeName` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.lk_mapcoa definition

CREATE TABLE `lk_mapcoa` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mapCoaTypeID` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `coaNo` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_approvalflowuser definition

CREATE TABLE `map_approvalflowuser` (
  `approvalFlowID` int(11) NOT NULL,
  `creator` varchar(100) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_areacity definition

CREATE TABLE `map_areacity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `areaID` int(11) DEFAULT NULL,
  `cityID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_area_city_cityID` (`cityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_assetimages definition

CREATE TABLE `map_assetimages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `refNum` varchar(50) NOT NULL,
  `imageUrl` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_assetsaleshpp definition

CREATE TABLE `map_assetsaleshpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_assetsaleshpp_detailID` (`detailID`),
  KEY `idx_map_assetsaleshpp_productID` (`productID`),
  KEY `idx_map_assetsaleshpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_automanufacturinghpp definition

CREATE TABLE `map_automanufacturinghpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) DEFAULT NULL,
  `stockDate` datetime DEFAULT NULL,
  `locationID` int(11) DEFAULT NULL,
  `refNum` varchar(50) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `qty` decimal(20,4) DEFAULT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_automanufacturinghpp_detailID` (`detailID`),
  KEY `idx_map_automanufacturinghpp_productID` (`productID`),
  KEY `idx_map_automanufacturinghpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=21836470 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchbanner definition

CREATE TABLE `map_branchbanner` (
  `bannerID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`bannerID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchcostcenter definition

CREATE TABLE `map_branchcostcenter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `costCenterID` int(11) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchdeliverycourier definition

CREATE TABLE `map_branchdeliverycourier` (
  `branchID` int(11) NOT NULL,
  `deliveryCourierID` int(11) NOT NULL,
  PRIMARY KEY (`branchID`,`deliveryCourierID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchnotescategory definition

CREATE TABLE `map_branchnotescategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `notesCategoryID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchpaymentmethod definition

CREATE TABLE `map_branchpaymentmethod` (
  `branchID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `edcWssUrl` varchar(200) DEFAULT NULL,
  `edcPort` varchar(200) DEFAULT NULL,
  `flagEdcActive` tinyint(1) NOT NULL DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`branchID`,`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchposcustomerdisplay definition

CREATE TABLE `map_branchposcustomerdisplay` (
  `posCustomerDisplayID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`posCustomerDisplayID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchrequesttemplate definition

CREATE TABLE `map_branchrequesttemplate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `requestTemplateID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32679 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchspecialprice definition

CREATE TABLE `map_branchspecialprice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `specialPriceID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchtenant definition

CREATE TABLE `map_branchtenant` (
  `branchID` int(11) NOT NULL,
  `tenantID` int(11) NOT NULL,
  `visitPurposeID` int(11) NOT NULL,
  `menuCategoryID` int(11) NOT NULL,
  `stationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`branchID`,`tenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchtentcard definition

CREATE TABLE `map_branchtentcard` (
  `branchID` int(11) NOT NULL,
  `tentCardID` int(11) NOT NULL,
  PRIMARY KEY (`branchID`,`tentCardID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchvisitpurpose definition

CREATE TABLE `map_branchvisitpurpose` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) DEFAULT NULL,
  `visitPurposeID` int(11) DEFAULT NULL,
  `additionalTaxValue` decimal(20,4) DEFAULT NULL,
  `flagOtherTaxVat` tinyint(1) DEFAULT NULL,
  `taxValue` decimal(20,4) DEFAULT NULL,
  `vatSubject` tinyint(1) DEFAULT NULL,
  `orderFee` decimal(20,4) DEFAULT NULL,
  `qtyLimit` decimal(20,4) DEFAULT NULL,
  `menuTemplateID` int(11) DEFAULT NULL,
  `flagSelfOrder` tinyint(1) DEFAULT NULL,
  `pendingOrder` tinyint(1) DEFAULT '0',
  `flagKiosk` tinyint(1) DEFAULT NULL,
  `externalPartnerID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchvouchertemplate definition

CREATE TABLE `map_branchvouchertemplate` (
  `voucherTemplateID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`voucherTemplateID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_branchvouchertemplateusage definition

CREATE TABLE `map_branchvouchertemplateusage` (
  `voucherTemplateID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`voucherTemplateID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_customerlink definition

CREATE TABLE `map_customerlink` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `companyID` int(11) NOT NULL,
  `companySupplierID` int(11) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=878 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_emailrecipientbranch definition

CREATE TABLE `map_emailrecipientbranch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `emailRecipientID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_employeebranch definition

CREATE TABLE `map_employeebranch` (
  `employeeCode` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`employeeCode`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_employeelimit definition

CREATE TABLE `map_employeelimit` (
  `employeeCode` varchar(50) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `limitTypeID` int(11) DEFAULT NULL,
  `limitAmount` decimal(20,4) DEFAULT NULL,
  `limitBalance` decimal(20,4) DEFAULT NULL,
  `lastResetLimit` datetime DEFAULT NULL,
  `resetCycleDate` int(11) DEFAULT NULL,
  `resetTime` time DEFAULT '06:00:00',
  PRIMARY KEY (`employeeCode`,`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_employeesales definition

CREATE TABLE `map_employeesales` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) DEFAULT NULL,
  `employeeCode` varchar(50) DEFAULT NULL,
  `salesNum` varchar(50) DEFAULT NULL,
  `paymentMethodID` int(11) DEFAULT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.map_goodsdeliveryhpp definition

CREATE TABLE `map_goodsdeliveryhpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_goodsdeliveryhpp_detailID` (`detailID`),
  KEY `idx_map_goodsdeliveryhpp_productID` (`productID`),
  KEY `idx_map_goodsdeliveryhpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=203898 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_goodsreceiptreturnhpp definition

CREATE TABLE `map_goodsreceiptreturnhpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_goodsreceiptreturnhpp_detailID` (`detailID`),
  KEY `idx_map_goodsreceiptreturnhpp_productID` (`productID`),
  KEY `idx_map_goodsreceiptreturnhpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_guestcommentbranch definition

CREATE TABLE `map_guestcommentbranch` (
  `guestCommentBranchID` int(11) NOT NULL AUTO_INCREMENT,
  `guestCommentHeadID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`guestCommentBranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.map_internalusagehpp definition

CREATE TABLE `map_internalusagehpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_internalusagehpp_detailID` (`detailID`),
  KEY `idx_map_internalusagehpp_productID` (`productID`),
  KEY `idx_map_internalusagehpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=235210 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_materialdeliveryhpp definition

CREATE TABLE `map_materialdeliveryhpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_materialdeliveryhpp_detailID` (`detailID`),
  KEY `idx_map_materialdeliveryhpp_productID` (`productID`),
  KEY `idx_map_materialdeliveryhpp_locationID` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_menuicon definition

CREATE TABLE `map_menuicon` (
  `menuIconID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  PRIMARY KEY (`menuIconID`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_menutemplatelayout definition

CREATE TABLE `map_menutemplatelayout` (
  `menuTemplateID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuSizeID` int(11) NOT NULL,
  `posX` int(11) NOT NULL,
  `posY` int(11) NOT NULL,
  PRIMARY KEY (`menuTemplateID`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_menutemplatepackage definition

CREATE TABLE `map_menutemplatepackage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuTemplateID` int(11) NOT NULL,
  `menuGroupID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_menutemplatepackage_menuTemplateID` (`menuTemplateID`),
  KEY `idx_map_menutemplatepackage_menuGroupID` (`menuGroupID`),
  KEY `idx_map_menutemplatepackage_menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=45175 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_notesmenucategory definition

CREATE TABLE `map_notesmenucategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `notesCategoryID` int(11) DEFAULT NULL,
  `menuCategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_notesmenucategorydetail definition

CREATE TABLE `map_notesmenucategorydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `notesCategoryID` int(11) DEFAULT NULL,
  `menuCategoryDetailID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_openmanufacturinghpp definition

CREATE TABLE `map_openmanufacturinghpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_openmanufacturinghpp_detailID` (`detailID`),
  KEY `idx_map_openmanufacturinghpp_productID` (`productID`),
  KEY `idx_map_openmanufacturinghpp_locationID` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_productionresolvehpp definition

CREATE TABLE `map_productionresolvehpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productionReturnNum` varchar(20) NOT NULL,
  `HPPID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_productionresolvehpp_productionReturnNum` (`productionReturnNum`),
  KEY `idx_map_productionresolvehpp_productID` (`productID`),
  KEY `idx_map_productionresolvehpp_locationID` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_productionresulthpp definition

CREATE TABLE `map_productionresulthpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_productionresulthpp_detailID` (`detailID`),
  KEY `idx_map_productionresulthpp_productID` (`productID`),
  KEY `idx_map_productionresulthpp_locationID` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_productionreturnhpp definition

CREATE TABLE `map_productionreturnhpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_productionreturnhpp_detailID` (`detailID`),
  KEY `idx_map_productionreturnhpp_productID` (`productID`),
  KEY `idx_map_productionreturnhpp_locationID` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_promotionvisitpurpose definition

CREATE TABLE `map_promotionvisitpurpose` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) DEFAULT NULL,
  `visitPurposeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_purposetransaction definition

CREATE TABLE `map_purposetransaction` (
  `purposeID` int(11) NOT NULL,
  `transactionTypeID` int(11) NOT NULL,
  PRIMARY KEY (`purposeID`,`transactionTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_requestprocess definition

CREATE TABLE `map_requestprocess` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseRequestNum` varchar(20) NOT NULL,
  `productID` int(11) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_purchaseRequestNum_map_requestprocess` (`purchaseRequestNum`),
  KEY `idx_productID_map_requestprocess` (`productID`),
  KEY `idx_refNum_map_requestprocess` (`refNum`)
) ENGINE=InnoDB AUTO_INCREMENT=538537 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_requestpurchase definition

CREATE TABLE `map_requestpurchase` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `requestCardID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `requiredDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_requesttransfer definition

CREATE TABLE `map_requesttransfer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `requestCardID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `requiredDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_saleshpp definition

CREATE TABLE `map_saleshpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) DEFAULT NULL,
  `stockDate` datetime DEFAULT NULL,
  `locationID` int(11) DEFAULT NULL,
  `refNum` varchar(50) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `qty` decimal(20,4) DEFAULT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_saleshpp_detailID` (`detailID`),
  KEY `idx_map_saleshpp_locationID` (`locationID`),
  KEY `idx_map_saleshpp_productID` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=105545070 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_selfordercampaignbranch definition

CREATE TABLE `map_selfordercampaignbranch` (
  `selfOrderCampaignID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`selfOrderCampaignID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_selfordercampaignbranchdetail definition

CREATE TABLE `map_selfordercampaignbranchdetail` (
  `selfOrderCampaignID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `usedQty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`selfOrderCampaignID`,`branchID`,`detailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_selforderpaymentmethod definition

CREATE TABLE `map_selforderpaymentmethod` (
  `selfOrderPaymentMethodID` varchar(10) NOT NULL,
  `branchID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`selfOrderPaymentMethodID`,`branchID`,`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_simpleautomanufacturinghpp definition

CREATE TABLE `map_simpleautomanufacturinghpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime DEFAULT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) DEFAULT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_simpleautomanufacturinghpp_detailID` (`detailID`),
  KEY `idx_map_simpleautomanufacturinghpp_productID` (`productID`),
  KEY `idx_map_simpleautomanufacturinghpp_locationID` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_simplemanufacturinghpp definition

CREATE TABLE `map_simplemanufacturinghpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_simplemanufacturinghpp_detailID` (`detailID`),
  KEY `idx_map_simplemanufacturinghpp_productID` (`productID`),
  KEY `idx_map_simplemanufacturinghpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_simpleproductsaleshpp definition

CREATE TABLE `map_simpleproductsaleshpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) COLLATE latin1_bin NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_simpleproductsaleshpp_detailID` (`detailID`),
  KEY `idx_map_simpleproductsaleshpp_productID` (`productID`),
  KEY `idx_map_simpleproductsaleshpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=latin1 COLLATE=latin1_bin ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_simpletransferhpp definition

CREATE TABLE `map_simpletransferhpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_simpletransferhpp_detailID` (`detailID`),
  KEY `idx_map_simpletransferhpp_productID` (`productID`),
  KEY `idx_map_simpletransferhpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=421 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_stationposcustomerdisplay definition

CREATE TABLE `map_stationposcustomerdisplay` (
  `posCustomerDetailID` int(11) NOT NULL,
  `stationID` int(11) NOT NULL,
  PRIMARY KEY (`posCustomerDetailID`,`stationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_stockopnamehpp definition

CREATE TABLE `map_stockopnamehpp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HPPID` int(11) NOT NULL,
  `detailID` int(11) NOT NULL,
  `stockDate` datetime NOT NULL,
  `locationID` int(11) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_stockopnamehpp_detailID` (`detailID`),
  KEY `idx_map_stockopnamehpp_productID` (`productID`),
  KEY `idx_map_stockopnamehpp_locationID` (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=292128 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_supplierlink definition

CREATE TABLE `map_supplierlink` (
  `supplierID` int(11) NOT NULL AUTO_INCREMENT,
  `companyID` int(11) NOT NULL,
  `companyCustomerID` int(11) NOT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=5770 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_supplierproduct definition

CREATE TABLE `map_supplierproduct` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `supplierID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `externalProductCode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_tenantuser definition

CREATE TABLE `map_tenantuser` (
  `tenantID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`tenantID`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_user_bom definition

CREATE TABLE `map_user_bom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `bomID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_user_branch definition

CREATE TABLE `map_user_branch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_map_user_branch_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=39710 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_visitpurposegroup definition

CREATE TABLE `map_visitpurposegroup` (
  `visitPurposeGroupID` int(11) NOT NULL,
  `visitPurposeID` int(11) NOT NULL,
  PRIMARY KEY (`visitPurposeGroupID`,`visitPurposeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_visitpurposepaymentmethod definition

CREATE TABLE `map_visitpurposepaymentmethod` (
  `paymentMethodID` int(11) NOT NULL,
  `visitPurposeID` int(11) NOT NULL,
  PRIMARY KEY (`paymentMethodID`,`visitPurposeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.map_voucherbranch definition

CREATE TABLE `map_voucherbranch` (
  `voucherID` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`voucherID`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.migration definition

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_approvalflowdetail definition

CREATE TABLE `ms_approvalflowdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `approvalName` varchar(100) NOT NULL,
  `approvalFlowID` int(11) NOT NULL,
  `approvalFlowLevel` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `amount` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_approvalflowhead definition

CREATE TABLE `ms_approvalflowhead` (
  `approvalFlowID` int(11) NOT NULL AUTO_INCREMENT,
  `transactionName` varchar(100) NOT NULL,
  `approvalFlowName` varchar(100) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`approvalFlowID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_area definition

CREATE TABLE `ms_area` (
  `areaID` int(11) NOT NULL AUTO_INCREMENT,
  `areaName` varchar(50) NOT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`areaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_bannerdetail definition

CREATE TABLE `ms_bannerdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bannerID` int(11) NOT NULL,
  `bannerTypeID` int(11) DEFAULT NULL,
  `bannerImageURL` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_bannerhead definition

CREATE TABLE `ms_bannerhead` (
  `bannerID` int(11) NOT NULL AUTO_INCREMENT,
  `bannerName` varchar(100) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`bannerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_bomcost definition

CREATE TABLE `ms_bomcost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bomID` int(11) NOT NULL,
  `costDescription` varchar(50) NOT NULL,
  `coaNo` varchar(20) DEFAULT NULL,
  `costTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_bomdetail definition

CREATE TABLE `ms_bomdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bomID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `yieldPercent` decimal(20,4) DEFAULT '0.0000',
  `weightFactor` int(11) NOT NULL,
  `printGroup` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_ms_bomdetail_bomID` (`bomID`),
  KEY `idx_ms_bomdetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=254013 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_bomhead definition

CREATE TABLE `ms_bomhead` (
  `bomID` int(11) NOT NULL AUTO_INCREMENT,
  `bomTypeID` int(11) NOT NULL,
  `bomName` varchar(50) NOT NULL,
  `bomCode` varchar(50) DEFAULT NULL,
  `productDetailID` int(11) DEFAULT NULL,
  `bomCostTotal` decimal(20,4) NOT NULL,
  `otherCostTotal` decimal(20,4) DEFAULT '0.0000',
  `weightFactorTotal` int(11) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`bomID`)
) ENGINE=InnoDB AUTO_INCREMENT=50546 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_bomsubtitution definition

CREATE TABLE `ms_bomsubtitution` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bomDetailID` int(11) NOT NULL,
  `bomID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `orderList` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4130 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_branch definition

CREATE TABLE `ms_branch` (
  `branchID` int(11) NOT NULL AUTO_INCREMENT,
  `branchTypeID` int(11) NOT NULL,
  `branchCode` varchar(20) DEFAULT NULL,
  `extBranchCode` varchar(20) DEFAULT NULL,
  `branchName` varchar(50) NOT NULL,
  `branchNameESBOrder` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `printingHeader` varchar(500) NOT NULL,
  `printingFooter` varchar(500) NOT NULL,
  `printingCheckerFooter` varchar(500) DEFAULT NULL,
  `additionalTaxName` varchar(100) NOT NULL,
  `additionalTaxValue` decimal(18,2) NOT NULL,
  `flagOtherTaxVat` tinyint(1) NOT NULL,
  `image` longtext,
  `flagHeaderImageOriginalSize` smallint(1) NOT NULL DEFAULT '0',
  `imageFooter` longtext,
  `flagFooterImageOriginalSize` smallint(1) NOT NULL DEFAULT '0',
  `selfOrderBanner` text,
  `menuTemplateID` int(11) DEFAULT NULL,
  `posModeID` int(11) DEFAULT NULL,
  `taxName` varchar(100) NOT NULL,
  `taxValue` decimal(18,2) NOT NULL,
  `vatName` varchar(50) DEFAULT NULL,
  `vatSubject` tinyint(1) DEFAULT NULL,
  `posTaxCalculationID` int(11) DEFAULT NULL,
  `posOtherTaxCalculationID` int(11) DEFAULT NULL,
  `timezoneID` int(11) DEFAULT NULL,
  `autoEmailUsername` text,
  `flagActive` bit(1) NOT NULL,
  `openDate` datetime DEFAULT NULL,
  `closeDate` datetime DEFAULT NULL,
  `serverOnlyCount` int(11) DEFAULT '0',
  `cashierCount` int(11) DEFAULT '0',
  `orderCount` int(11) DEFAULT '0',
  `tabCount` int(11) DEFAULT '0',
  `brandID` int(11) DEFAULT NULL,
  `districtID` int(11) DEFAULT NULL,
  `subDistrictID` int(11) DEFAULT NULL,
  `posVersion` varchar(50) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`branchID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_branchbusinesshour definition

CREATE TABLE `ms_branchbusinesshour` (
  `branchID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  PRIMARY KEY (`branchID`,`dayID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_branchezoform definition

CREATE TABLE `ms_branchezoform` (
  `branchID` int(11) NOT NULL,
  `branchSettingID` int(11) NOT NULL,
  `ezoModeName` varchar(50) NOT NULL,
  `ezoFormTemplateID` int(11) NOT NULL,
  `visitPurposeID` int(11) DEFAULT NULL,
  `flagShowESBOrder` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`branchID`,`branchSettingID`,`ezoModeName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_branchmenu definition

CREATE TABLE `ms_branchmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `qty` decimal(20,4) DEFAULT NULL,
  `qtyEso` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(20,4) DEFAULT NULL,
  `checkerStationID` varchar(50) DEFAULT NULL,
  `stationID` varchar(50) DEFAULT NULL,
  `flagSoldOut` bit(1) NOT NULL,
  `flagSoldOutEso` tinyint(1) NOT NULL DEFAULT '0',
  `flagShowEzo` tinyint(1) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ms_branchmenu_branchID_menuID` (`branchID`,`menuID`),
  KEY `idx_branchID_ms_branchmenu` (`branchID`),
  KEY `idx_menuID_ms_branchmenu` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=111727 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_branchproduct definition

CREATE TABLE `ms_branchproduct` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL DEFAULT '0',
  `productDetailID` int(11) NOT NULL,
  `minQty` decimal(20,4) NOT NULL,
  `maxQty` decimal(20,4) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_branchsetting definition

CREATE TABLE `ms_branchsetting` (
  `branchID` int(11) NOT NULL,
  `branchSettingID` int(11) NOT NULL,
  `value1` varchar(500) DEFAULT NULL,
  `value2` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`branchID`,`branchSettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_brand definition

CREATE TABLE `ms_brand` (
  `brandID` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) NOT NULL,
  `brandCode` varchar(50) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`brandID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_brandapicontent definition

CREATE TABLE `ms_brandapicontent` (
  `brandID` int(11) NOT NULL,
  `brandSettingID` int(11) NOT NULL,
  `keyAttribute` varchar(200) NOT NULL,
  `valueAttribute` varchar(400) NOT NULL,
  PRIMARY KEY (`brandID`,`brandSettingID`,`keyAttribute`,`valueAttribute`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_brandsetting definition

CREATE TABLE `ms_brandsetting` (
  `brandID` int(11) NOT NULL,
  `brandSettingID` int(11) NOT NULL,
  `value1` text,
  `value2` text,
  PRIMARY KEY (`brandID`,`brandSettingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_cancelreason definition

CREATE TABLE `ms_cancelreason` (
  `cancelReasonID` int(11) NOT NULL AUTO_INCREMENT,
  `cancelReasonDesc` varchar(50) NOT NULL,
  `cancelReasonTypeID` int(11) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cancelReasonID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_cashflowcategorydetail definition

CREATE TABLE `ms_cashflowcategorydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cashFlowCategoryID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_cashflowcategoryhead definition

CREATE TABLE `ms_cashflowcategoryhead` (
  `cashFlowCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `cashFlowTypeID` int(11) NOT NULL,
  `cashFlowCategoryTypeID` int(11) NOT NULL,
  `cashFlowCategoryName` varchar(50) NOT NULL,
  `cashFlowMethodID` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`cashFlowCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_cashmethod definition

CREATE TABLE `ms_cashmethod` (
  `cashMethodID` int(11) NOT NULL AUTO_INCREMENT,
  `cashMethodAmount` decimal(20,4) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cashMethodID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_category definition

CREATE TABLE `ms_category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryTypeID` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryCode` varchar(3) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `depCoaNo` varchar(20) DEFAULT NULL,
  `depExpenseCoaNo` varchar(20) DEFAULT NULL,
  `opnameCoaNo` varchar(20) DEFAULT NULL,
  `cogsCoaNo` varchar(20) DEFAULT NULL,
  `productSalesCoaNo` varchar(20) DEFAULT NULL,
  `accrualBasisCoaNo` varchar(20) DEFAULT NULL,
  `depLength` int(11) NOT NULL,
  `depreciationTypeID` int(11) DEFAULT NULL,
  `flagAssetTax` tinyint(1) DEFAULT NULL,
  `depreciationTypeIDFiscal` int(11) DEFAULT NULL,
  `depLengthFiscal` int(11) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_coa definition

CREATE TABLE `ms_coa` (
  `coaNo` varchar(20) NOT NULL,
  `coaLevel` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  `flagModule` bit(1) DEFAULT NULL,
  `releasePaymentCode` varchar(4) DEFAULT NULL,
  `orderList` smallint(6) DEFAULT NULL,
  `flagActive` bit(1) DEFAULT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`coaNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_companybank definition

CREATE TABLE `ms_companybank` (
  `companyBankID` int(11) NOT NULL AUTO_INCREMENT,
  `companyBankName` varchar(50) NOT NULL,
  `companyBankAccountNumber` varchar(50) NOT NULL,
  `companyBankAccountName` varchar(100) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagDefault` tinyint(1) DEFAULT '0',
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`companyBankID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_costcenter definition

CREATE TABLE `ms_costcenter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `costCenter` varchar(50) NOT NULL,
  `costCenterName` varchar(200) NOT NULL,
  `flagActive` int(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_currency definition

CREATE TABLE `ms_currency` (
  `currencyID` int(11) NOT NULL AUTO_INCREMENT,
  `currencySign` varchar(3) NOT NULL,
  `currencyName` varchar(50) DEFAULT NULL,
  `rate` varchar(50) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`currencyID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_customer definition

CREATE TABLE `ms_customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `companyID` int(11) DEFAULT '0',
  `companySupplierID` int(11) DEFAULT '0',
  `customerCode` varchar(20) DEFAULT NULL,
  `customerName` varchar(50) NOT NULL,
  `receivableCoaNo` varchar(20) NOT NULL,
  `paymentDueDays` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `subDistrict` varchar(100) DEFAULT NULL,
  `rt` varchar(10) DEFAULT NULL,
  `rw` varchar(10) DEFAULT NULL,
  `block` varchar(50) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `vatSubject` tinyint(1) DEFAULT '0',
  `lockVAT` tinyint(1) DEFAULT '0',
  `npwp` varchar(50) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `salesRepID` int(11) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=885 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_customerbank definition

CREATE TABLE `ms_customerbank` (
  `customerBankID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `bankName` varchar(50) NOT NULL,
  `bankAccountNumber` varchar(50) NOT NULL,
  `bankAccountName` varchar(100) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  PRIMARY KEY (`customerBankID`)
) ENGINE=InnoDB AUTO_INCREMENT=865 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_customerbranch definition

CREATE TABLE `ms_customerbranch` (
  `customerBranchID` int(11) NOT NULL AUTO_INCREMENT,
  `branchName` varchar(50) NOT NULL,
  `customerID` int(11) NOT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customerBranchID`,`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_customerpricelist definition

CREATE TABLE `ms_customerpricelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `priceDate` date NOT NULL,
  `customerID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `expireDate` date DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9688 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_customertax definition

CREATE TABLE `ms_customertax` (
  `customerTaxID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `subDistrict` varchar(100) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `block` varchar(50) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `rt` varchar(20) DEFAULT NULL,
  `rw` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `flagReferAddress` smallint(1) NOT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`customerTaxID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_deliverycostdetail definition

CREATE TABLE `ms_deliverycostdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryCostID` int(11) NOT NULL,
  `minDistance` decimal(20,4) NOT NULL,
  `maxDistance` decimal(20,4) NOT NULL,
  `deliveryCost` decimal(20,4) DEFAULT NULL,
  `minSubtotal` decimal(20,4) DEFAULT NULL,
  `specialDeliveryCost` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_deliverycosthead definition

CREATE TABLE `ms_deliverycosthead` (
  `deliveryCostID` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryCostName` varchar(50) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`deliveryCostID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_emailrecipient definition

CREATE TABLE `ms_emailrecipient` (
  `emailRecipientID` int(11) NOT NULL AUTO_INCREMENT,
  `emailRecipient` varchar(100) NOT NULL,
  `flagDaily` tinyint(1) NOT NULL DEFAULT '0',
  `flagMonthly` tinyint(1) NOT NULL DEFAULT '0',
  `flagClosing` tinyint(1) NOT NULL DEFAULT '0',
  `flagProductSalesPayment` tinyint(1) NOT NULL DEFAULT '0',
  `flagPurchasePayment` tinyint(1) NOT NULL DEFAULT '0',
  `flagProductSalesInvoice` tinyint(1) NOT NULL DEFAULT '0',
  `flagProductSales` tinyint(1) NOT NULL DEFAULT '0',
  `flagPurchaseInvoice` tinyint(1) NOT NULL DEFAULT '0',
  `flagPurchaseOrder` tinyint(1) NOT NULL DEFAULT '0',
  `flagPurchaseRequest` tinyint(1) NOT NULL DEFAULT '0',
  `flagReceiveBadComment` tinyint(1) DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `flagFailedPOSSalesJournal` tinyint(1) DEFAULT '0',
  `flagGuestComment` tinyint(1) NOT NULL,
  `flagGoodsReceipt` tinyint(1) DEFAULT '0',
  `flagEmailNotificationBook` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) DEFAULT 'SYSTEM',
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`emailRecipientID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_emailtemplate definition

CREATE TABLE `ms_emailtemplate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transactionType` varchar(20) NOT NULL,
  `emailSubject` varchar(100) NOT NULL,
  `emailBody` text NOT NULL,
  `emailTemplateName` varchar(200) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_employee definition

CREATE TABLE `ms_employee` (
  `employeeCode` varchar(50) NOT NULL,
  `employeeName` varchar(100) NOT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `genderID` int(11) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `address` varchar(200) DEFAULT 'NULL',
  `phone` varchar(20) DEFAULT 'NULL',
  `email` varchar(50) DEFAULT 'NULL',
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT 'NULL',
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`employeeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_employeegroup definition

CREATE TABLE `ms_employeegroup` (
  `employeeGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `employeeGroupName` varchar(100) NOT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`employeeGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_employeegroupdetail definition

CREATE TABLE `ms_employeegroupdetail` (
  `employeeGroupID` int(11) NOT NULL,
  `employeeCode` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeGroupID`,`employeeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_externalintegration definition

CREATE TABLE `ms_externalintegration` (
  `externalIntegrationID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `visitPurposeID` int(11) NOT NULL,
  `menuTemplateID` int(11) NOT NULL DEFAULT '0',
  `externalPartnerTypeID` int(11) NOT NULL,
  `externalBranchCode` varchar(100) NOT NULL,
  `externalBranchName` varchar(100) NOT NULL,
  `refPartner` varchar(50) DEFAULT NULL,
  `clientID` text,
  `clientSecret` text,
  `callbackKey` text,
  `externalFlagTax` tinyint(1) NOT NULL DEFAULT '0',
  `referToBrand` tinyint(1) NOT NULL DEFAULT '1',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`externalIntegrationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_ezocompanyimage definition

CREATE TABLE `ms_ezocompanyimage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `imageUrl` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_ezoformtemplatedetail definition

CREATE TABLE `ms_ezoformtemplatedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ezoFormTemplateID` int(11) NOT NULL,
  `ezoFormInputNameEn` varchar(50) DEFAULT NULL,
  `ezoFormInputNameId` varchar(50) DEFAULT NULL,
  `flagMandatory` tinyint(1) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `typeName` varchar(20) DEFAULT 'Text',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_ezoformtemplatehead definition

CREATE TABLE `ms_ezoformtemplatehead` (
  `ezoFormTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `ezoFormTemplateName` varchar(50) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ezoFormTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_formuladetail definition

CREATE TABLE `ms_formuladetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `formulaID` int(11) NOT NULL,
  `barcodeNumber` varchar(50) NOT NULL,
  `qty` decimal(18,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_bomdetail_idx` (`formulaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_guestcommentdetail definition

CREATE TABLE `ms_guestcommentdetail` (
  `guestCommentDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `guestCommentHeadID` int(11) NOT NULL,
  `commentTypeID` int(11) NOT NULL,
  `flagSendEmailCustomer` tinyint(1) NOT NULL DEFAULT '0',
  `emailTemplateCustomerID` int(11) DEFAULT '0',
  `flagSendEmailInternal` tinyint(1) NOT NULL DEFAULT '0',
  `emailTemplateInternalID` int(11) DEFAULT '0',
  PRIMARY KEY (`guestCommentDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_guestcommenthead definition

CREATE TABLE `ms_guestcommenthead` (
  `guestCommentHeadID` int(11) NOT NULL AUTO_INCREMENT,
  `guestCommentName` varchar(200) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`guestCommentHeadID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_location definition

CREATE TABLE `ms_location` (
  `locationID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `locationTypeID` int(11) NOT NULL,
  `locationName` varchar(50) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `allowMinusStock` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_maxorder definition

CREATE TABLE `ms_maxorder` (
  `maxOrderID` int(11) NOT NULL AUTO_INCREMENT,
  `visitPurposeID` int(11) NOT NULL,
  `maxOrder` int(11) NOT NULL,
  `notes` text,
  PRIMARY KEY (`maxOrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_maxorderbranch definition

CREATE TABLE `ms_maxorderbranch` (
  `maxOrderBranchID` int(11) NOT NULL AUTO_INCREMENT,
  `maxOrderID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`maxOrderBranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_maxorderdetail definition

CREATE TABLE `ms_maxorderdetail` (
  `maxOrderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `maxOrderID` int(11) NOT NULL,
  `menuCategoryDetailID` int(11) NOT NULL,
  PRIMARY KEY (`maxOrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_member definition

CREATE TABLE `ms_member` (
  `memberID` int(11) NOT NULL AUTO_INCREMENT,
  `memberName` varchar(100) NOT NULL,
  `memberTypeID` int(11) NOT NULL,
  `memberCode` varchar(20) NOT NULL,
  `membershipTypeID` int(11) DEFAULT NULL,
  `genderID` int(11) NOT NULL,
  `memberBirthDate` date DEFAULT NULL,
  `memberAddress` varchar(200) NOT NULL,
  `memberPhone` varchar(20) NOT NULL,
  `memberEmail` varchar(50) NOT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`memberID`),
  UNIQUE KEY `idx_uc_ms_member` (`memberCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_membershiptype definition

CREATE TABLE `ms_membershiptype` (
  `membershipTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `membershipTypeName` varchar(50) NOT NULL,
  `membershipExpiredDay` int(11) NOT NULL,
  `flagWithdrawal` tinyint(1) DEFAULT '1',
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`membershipTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menu definition

CREATE TABLE `ms_menu` (
  `menuID` int(11) NOT NULL AUTO_INCREMENT,
  `menuCategoryDetailID` int(11) NOT NULL,
  `bomID` int(11) DEFAULT NULL,
  `menuName` varchar(100) NOT NULL,
  `menuShortName` varchar(50) NOT NULL,
  `altMenuName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuCode` varchar(50) DEFAULT NULL,
  `estimatedCost` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `flagTax` int(11) NOT NULL DEFAULT '0',
  `flagOtherTax` bit(1) NOT NULL,
  `zeroValueText` varchar(12) NOT NULL,
  `flagCustomerPrint` bit(1) NOT NULL,
  `flagSeparatePrintPackage` tinyint(1) NOT NULL DEFAULT '0',
  `flagSeparateTaxCalculation` tinyint(1) NOT NULL DEFAULT '0',
  `salesCoaNo` varchar(20) NOT NULL,
  `cogsCoaNo` varchar(20) NOT NULL,
  `discountCoaNo` varchar(20) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `field1` varchar(50) DEFAULT NULL,
  `field2` varchar(50) DEFAULT NULL,
  `field3` varchar(50) DEFAULT NULL,
  `field4` varchar(50) DEFAULT NULL,
  `field5` varchar(50) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `imageUrl` text,
  `description` text,
  `openPrice` tinyint(1) DEFAULT '0',
  `buttonColor` varchar(50) DEFAULT NULL,
  `flagReferCategoryDetail` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuID`),
  KEY `ms_menu_menuCategoryDetailID` (`menuCategoryDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=4022 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menucategory definition

CREATE TABLE `ms_menucategory` (
  `menuCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `menuCategoryDesc` varchar(50) NOT NULL,
  `menuCategoryAlias` varchar(50) DEFAULT NULL,
  `menuCategoryCode` varchar(50) DEFAULT NULL,
  `salesCoaNo` varchar(20) NOT NULL,
  `cogsCoaNo` varchar(20) NOT NULL,
  `discountCoaNo` varchar(20) NOT NULL,
  `notes` varchar(100) DEFAULT '',
  `imageUrl` text,
  `description` text,
  `flagActive` bit(1) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `buttonColor` varchar(50) DEFAULT '',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuCategoryID`),
  KEY `idx_ms_menucategory_menucategoryid_menucategorydes` (`menuCategoryID`,`menuCategoryDesc`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menucategorydetail definition

CREATE TABLE `ms_menucategorydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuCategoryID` int(11) NOT NULL,
  `menuCategoryDetailDesc` varchar(50) NOT NULL,
  `menuCategoryDetailAlias` varchar(50) DEFAULT NULL,
  `menuCategoryDetailCode` varchar(50) DEFAULT NULL,
  `imageUrl` text,
  `maxOrderQty` decimal(20,4) DEFAULT '0.0000',
  `flagActive` bit(1) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `description` text,
  `buttonColor` varchar(50) DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `ms_menucategorydetail_menuCategoryID` (`menuCategoryID`),
  KEY `ms_menucategorydetail_menuCategoryDetailDesc` (`menuCategoryDetailDesc`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menuexclusion definition

CREATE TABLE `ms_menuexclusion` (
  `menuExclusionTypeID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  PRIMARY KEY (`menuExclusionTypeID`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menuextra definition

CREATE TABLE `ms_menuextra` (
  `menuExtraID` int(11) NOT NULL AUTO_INCREMENT,
  `menuID` int(11) NOT NULL,
  `menuRefID` int(11) DEFAULT NULL,
  `bomID` int(11) DEFAULT NULL,
  `menuGroupID` int(11) NOT NULL,
  `menuExtraName` varchar(100) NOT NULL,
  `menuExtraCode` varchar(50) DEFAULT NULL,
  `menuExtraShortName` varchar(30) DEFAULT NULL,
  `price` decimal(20,4) NOT NULL,
  `flagMandatory` bit(1) NOT NULL,
  `minExtraQty` decimal(20,4) NOT NULL,
  `maxExtraQty` decimal(20,4) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `buttonColor` varchar(50) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuExtraID`)
) ENGINE=InnoDB AUTO_INCREMENT=49429 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menugroup definition

CREATE TABLE `ms_menugroup` (
  `menuGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `menuID` int(11) NOT NULL,
  `menuGroup` varchar(50) NOT NULL,
  `minQty` decimal(20,4) NOT NULL,
  `maxQty` decimal(20,4) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  PRIMARY KEY (`menuGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=1691 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menuicon definition

CREATE TABLE `ms_menuicon` (
  `menuIconID` int(11) NOT NULL AUTO_INCREMENT,
  `menuIconName` varchar(100) NOT NULL,
  `menuIconUrl` text,
  PRIMARY KEY (`menuIconID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menumappingtextdetail definition

CREATE TABLE `ms_menumappingtextdetail` (
  `menuMappingID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuGroupID` int(11) NOT NULL,
  PRIMARY KEY (`menuMappingID`,`menuID`,`menuGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menumappingtexthead definition

CREATE TABLE `ms_menumappingtexthead` (
  `menuMappingID` int(11) NOT NULL AUTO_INCREMENT,
  `menuMappingName` varchar(100) NOT NULL,
  `menuMappingCode` varchar(100) NOT NULL,
  `mappingArticleCode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`menuMappingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menupackage definition

CREATE TABLE `ms_menupackage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuGroupID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `flagDefault` tinyint(1) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_ms_menupackage_menuGroupID` (`menuGroupID`),
  KEY `idx_ms_menupackage_menuID` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=7033 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menupromotion definition

CREATE TABLE `ms_menupromotion` (
  `menuPromotionID` int(11) NOT NULL AUTO_INCREMENT,
  `headID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `promotionPrice` decimal(20,4) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  PRIMARY KEY (`menuPromotionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menupromotionday definition

CREATE TABLE `ms_menupromotionday` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `headID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menupromotionhead definition

CREATE TABLE `ms_menupromotionhead` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `branchID` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menurecommendationdetail definition

CREATE TABLE `ms_menurecommendationdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuRecommendationID` int(11) DEFAULT NULL,
  `menuRecommendationGroupID` int(11) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `flagActive` smallint(6) DEFAULT NULL,
  `orderID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menurecommendationgroup definition

CREATE TABLE `ms_menurecommendationgroup` (
  `menuRecommendationGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `menuRecommendationID` int(11) NOT NULL,
  `recommendationGroup` varchar(50) NOT NULL,
  `orderID` int(11) NOT NULL,
  PRIMARY KEY (`menuRecommendationGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menurecommendationhead definition

CREATE TABLE `ms_menurecommendationhead` (
  `menuRecommendationID` int(11) NOT NULL AUTO_INCREMENT,
  `menuTemplateID` varchar(50) DEFAULT NULL,
  `flagActive` smallint(6) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuRecommendationID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menutag definition

CREATE TABLE `ms_menutag` (
  `tagName` varchar(50) NOT NULL,
  `menuID` int(11) NOT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tagName`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menutemplatecategory definition

CREATE TABLE `ms_menutemplatecategory` (
  `menuTemplateID` int(11) NOT NULL,
  `menuCategoryID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  PRIMARY KEY (`menuTemplateID`,`menuCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menutemplatecategorydetail definition

CREATE TABLE `ms_menutemplatecategorydetail` (
  `menuTemplateID` int(11) NOT NULL,
  `menuCategoryDetailID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  PRIMARY KEY (`menuTemplateID`,`menuCategoryDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menutemplatedetail definition

CREATE TABLE `ms_menutemplatedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuTemplateID` varchar(50) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `beforePrice` decimal(20,4) DEFAULT NULL,
  `price` decimal(20,4) DEFAULT NULL,
  `flagActive` tinyint(1) DEFAULT NULL,
  `flagShowEzo` tinyint(1) DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `orderID` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `idx_menuTemplateID_ms_menutemplatedetail` (`menuTemplateID`),
  KEY `idx_menuID_ms_menutemplatedetail` (`menuID`)
) ENGINE=InnoDB AUTO_INCREMENT=21173 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menutemplatedetailday definition

CREATE TABLE `ms_menutemplatedetailday` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menuTemplateID` varchar(50) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `dayID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_menuTemplateID_ms_menutemplatedetailday` (`menuTemplateID`),
  KEY `idx_menuID_ms_menutemplatedetailday` (`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_menutemplatehead definition

CREATE TABLE `ms_menutemplatehead` (
  `menuTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `menuTemplateName` varchar(50) DEFAULT NULL,
  `activeDate` date DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `flagInclusive` tinyint(1) DEFAULT NULL,
  `flagActive` tinyint(1) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`menuTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_notes definition

CREATE TABLE `ms_notes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `notesCategoryID` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_notescategory definition

CREATE TABLE `ms_notescategory` (
  `notesCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `notesCategoryDesc` varchar(50) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`notesCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_notificationdetail definition

CREATE TABLE `ms_notificationdetail` (
  `notificationDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `notificationID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`notificationDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_notificationhead definition

CREATE TABLE `ms_notificationhead` (
  `notificationID` int(11) NOT NULL AUTO_INCREMENT,
  `notificationTitle` varchar(100) NOT NULL,
  `notificationText` text NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `createdBy` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  `createdDate` datetime NOT NULL DEFAULT '2021-02-08 06:01:54',
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`notificationID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_paymentmethod definition

CREATE TABLE `ms_paymentmethod` (
  `paymentMethodID` int(11) NOT NULL AUTO_INCREMENT,
  `paymentMethodTypeID` int(11) NOT NULL,
  `voucherTypeID` int(11) DEFAULT NULL,
  `voucherSourceID` int(11) DEFAULT NULL,
  `voucherCategoryID` int(11) DEFAULT NULL,
  `paymentMethodName` varchar(50) NOT NULL,
  `paymentMethodCode` varchar(50) DEFAULT NULL,
  `parentID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `merchantDiscountRate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `printedCount` int(11) NOT NULL,
  `fixedAmount` decimal(20,4) DEFAULT NULL,
  `posExternalPaymentID` varchar(10) DEFAULT NULL,
  `cardNumberValidationTypeID` int(11) DEFAULT NULL,
  `flagMandatoryCardNumber` tinyint(1) DEFAULT NULL,
  `flagMandatoryVerificationCode` tinyint(1) DEFAULT NULL,
  `flagOpenCashdrawer` bit(1) NOT NULL,
  `flagAuthorization` bit(1) NOT NULL,
  `flagUseEmployeeLimit` tinyint(1) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `flagAllVisitPurpose` tinyint(1) DEFAULT '0',
  `flagIncludeTotalSpent` tinyint(1) DEFAULT NULL,
  `buttonColor` varchar(50) DEFAULT '',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`paymentMethodID`),
  KEY `ms_paymentmethod_paymentMethodTypeID` (`paymentMethodTypeID`),
  KEY `idx_ms_paymentmethod_paymentmethodty_paymentmethodid` (`paymentMethodTypeID`,`paymentMethodID`)
) ENGINE=InnoDB AUTO_INCREMENT=6176 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_paymentmethodexternalvoucher definition

CREATE TABLE `ms_paymentmethodexternalvoucher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `paymentMethodID` int(11) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `voucherType` varchar(50) NOT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  `percentageAmount` decimal(20,4) DEFAULT NULL,
  `percentageMaxValue` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_piccustomer definition

CREATE TABLE `ms_piccustomer` (
  `picCustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `greetingID` int(11) NOT NULL,
  `picName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `flagDefault` bit(1) DEFAULT NULL,
  `flagSendingSOEmail` tinyint(1) DEFAULT '0',
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`picCustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_picsupplier definition

CREATE TABLE `ms_picsupplier` (
  `picSupplierID` int(11) NOT NULL AUTO_INCREMENT,
  `supplierID` int(11) NOT NULL,
  `greetingID` int(11) NOT NULL,
  `picName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `flagSendingPOEmail` tinyint(1) NOT NULL DEFAULT '0',
  `flagDefault` bit(1) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`picSupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=6129 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_poscustomerdisplayapplication definition

CREATE TABLE `ms_poscustomerdisplayapplication` (
  `posCustomerDetailID` int(11) NOT NULL,
  `applicationID` varchar(15) NOT NULL,
  PRIMARY KEY (`posCustomerDetailID`,`applicationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_poscustomerdisplaydetail definition

CREATE TABLE `ms_poscustomerdisplaydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `posCustomerDisplayID` int(11) NOT NULL,
  `imageUrl` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_poscustomerdisplayhead definition

CREATE TABLE `ms_poscustomerdisplayhead` (
  `posCustomerDisplayID` int(11) NOT NULL AUTO_INCREMENT,
  `posCustomerDisplayName` varchar(50) NOT NULL,
  `flagActive` int(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`posCustomerDisplayID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posmapcoa definition

CREATE TABLE `ms_posmapcoa` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `posTypeID` int(11) NOT NULL,
  `posCoaNo` varchar(50) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posmapmenu definition

CREATE TABLE `ms_posmapmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `posTypeID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `posMenuID` varchar(50) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2241 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posmappayment definition

CREATE TABLE `ms_posmappayment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `posTypeID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `posPaymentID` varchar(50) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posuser definition

CREATE TABLE `ms_posuser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `posUserID` varchar(50) NOT NULL,
  `salt` varchar(45) NOT NULL,
  `password` varchar(50) NOT NULL,
  `posUserRoleID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_ms_posuser_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=583 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posuseraccess definition

CREATE TABLE `ms_posuseraccess` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `posUserRoleID` int(11) NOT NULL,
  `posAccessID` varchar(10) NOT NULL,
  `indexAcc` bit(1) NOT NULL,
  `viewAcc` bit(1) NOT NULL,
  `insertAcc` bit(1) NOT NULL,
  `updateAcc` bit(1) NOT NULL,
  `deleteAcc` bit(1) NOT NULL,
  `authorizeAcc` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posuseraccess2 definition

CREATE TABLE `ms_posuseraccess2` (
  `posUserRoleID` int(11) NOT NULL,
  `filterAccessID` varchar(10) NOT NULL,
  `hasAccess` tinyint(1) NOT NULL,
  PRIMARY KEY (`posUserRoleID`,`filterAccessID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posuserrole definition

CREATE TABLE `ms_posuserrole` (
  `posUserRoleID` int(11) NOT NULL AUTO_INCREMENT,
  `posRoleDesc` varchar(100) NOT NULL DEFAULT '',
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`posUserRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_posversion definition

CREATE TABLE `ms_posversion` (
  `posVersionID` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(45) NOT NULL,
  `downloadUrl` varchar(300) NOT NULL,
  `downloadMd5` varchar(45) NOT NULL,
  `query` text,
  `deletedFiles` text,
  PRIMARY KEY (`posVersionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_pricelist definition

CREATE TABLE `ms_pricelist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pricelistNum` varchar(20) DEFAULT NULL,
  `priceDate` date NOT NULL,
  `supplierID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `lastPrice` decimal(20,4) DEFAULT NULL,
  `price` decimal(20,4) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_pricelist_pricedate` (`priceDate`),
  KEY `idx_pricelist_supplierid` (`supplierID`),
  KEY `idx_pricelist_productdetailid` (`productDetailID`),
  KEY `idx_pricelist_currencyid` (`currencyID`)
) ENGINE=InnoDB AUTO_INCREMENT=23105 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_pricelistdetailtemp definition

CREATE TABLE `ms_pricelistdetailtemp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pricelistNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL DEFAULT '0',
  `lastPrice` decimal(20,4) DEFAULT NULL,
  `price` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3501 DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_pricelistheadtemp definition

CREATE TABLE `ms_pricelistheadtemp` (
  `pricelistNum` varchar(20) NOT NULL,
  `priceDate` date NOT NULL,
  `supplierID` int(11) NOT NULL DEFAULT '0',
  `currencyID` int(11) NOT NULL DEFAULT '0',
  `statusID` int(11) NOT NULL DEFAULT '38',
  `createdBy` varchar(100) DEFAULT 'NULL',
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT 'NULL',
  `editedDate` datetime NOT NULL,
  `rejectedBy` varchar(100) DEFAULT NULL,
  `rejectedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pricelistNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_product definition

CREATE TABLE `ms_product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryID` int(11) NOT NULL,
  `subCategoryID` int(11) NOT NULL,
  `productCode` varchar(50) DEFAULT NULL,
  `productName` varchar(100) NOT NULL,
  `flagRequest` bit(1) NOT NULL,
  `flagPurchase` bit(1) NOT NULL,
  `deviationVal` decimal(20,4) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `vat` bit(1) NOT NULL,
  `bomID` int(11) DEFAULT NULL,
  `field1` varchar(50) DEFAULT NULL,
  `field2` varchar(50) DEFAULT NULL,
  `field3` varchar(50) DEFAULT NULL,
  `field4` varchar(50) DEFAULT NULL,
  `field5` varchar(50) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `flagSales` tinyint(1) DEFAULT '1',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `idx_ms_product_categoryID` (`categoryID`),
  KEY `idx_ms_product_subCategoryID` (`subCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=57621 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_productdetail definition

CREATE TABLE `ms_productdetail` (
  `productDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) NOT NULL,
  `uomID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `cubicationVal` decimal(20,4) DEFAULT '0.0000',
  `weightVal` decimal(20,4) DEFAULT '0.0000',
  `basePrice` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `barcodeNumber` varchar(50) NOT NULL DEFAULT '',
  `flagDefault` tinyint(1) NOT NULL,
  `flagBaseUnit` tinyint(1) NOT NULL DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL,
  `flagDefaultPurchase` tinyint(1) NOT NULL,
  `flagTransferUnit` tinyint(1) NOT NULL DEFAULT '0',
  `flagSalesUnit` tinyint(1) DEFAULT '0',
  `flagGoAppProduct` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`productDetailID`),
  KEY `idx_ms_productdetail_productID` (`productID`),
  KEY `idx_ms_productdetail_uomID` (`uomID`),
  KEY `idx_tr_importpaymentdetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=86743 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_productdetailmenu definition

CREATE TABLE `ms_productdetailmenu` (
  `productID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `convertionQty` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`productDetailID`,`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_productdetailtemp definition

CREATE TABLE `ms_productdetailtemp` (
  `productDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) NOT NULL,
  `uomID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `cubicationVal` decimal(20,4) DEFAULT '0.0000',
  `weightVal` decimal(20,4) DEFAULT '0.0000',
  `basePrice` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `barcodeNumber` varchar(50) NOT NULL DEFAULT '',
  `flagDefault` tinyint(1) NOT NULL,
  `flagBaseUnit` tinyint(1) NOT NULL DEFAULT '0',
  `flagDefaultPurchase` tinyint(1) NOT NULL,
  `flagTransferUnit` tinyint(1) NOT NULL DEFAULT '0',
  `flagSalesUnit` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`productDetailID`),
  KEY `idx_ms_productdetail_productID` (`productID`),
  KEY `idx_ms_productdetail_uomID` (`uomID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_producttemp definition

CREATE TABLE `ms_producttemp` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryID` int(11) NOT NULL,
  `subCategoryID` int(11) NOT NULL,
  `productCode` varchar(50) DEFAULT NULL,
  `productName` varchar(100) NOT NULL,
  `flagRequest` bit(1) NOT NULL,
  `flagPurchase` bit(1) NOT NULL,
  `flagSales` tinyint(1) DEFAULT '1',
  `deviationVal` decimal(20,4) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `vat` bit(1) NOT NULL,
  `bomID` int(11) DEFAULT NULL,
  `field1` varchar(50) DEFAULT NULL,
  `field2` varchar(50) DEFAULT NULL,
  `field3` varchar(50) DEFAULT NULL,
  `field4` varchar(50) DEFAULT NULL,
  `field5` varchar(50) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `idx_ms_product_categoryID` (`categoryID`),
  KEY `idx_ms_product_subCategoryID` (`subCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionapplication definition

CREATE TABLE `ms_promotionapplication` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `applicationID` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_promotionbin definition

CREATE TABLE `ms_promotionbin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `bankIdentificationNumber` varchar(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionbranch definition

CREATE TABLE `ms_promotionbranch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15246 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotioncategory definition

CREATE TABLE `ms_promotioncategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `menuCategoryID` int(11) DEFAULT NULL,
  `menuCategoryDetailID` int(11) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `price` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2623 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionday definition

CREATE TABLE `ms_promotionday` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2498 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotiondetail definition

CREATE TABLE `ms_promotiondetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `menuSubsID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionemployeegroup definition

CREATE TABLE `ms_promotionemployeegroup` (
  `promotionID` int(11) NOT NULL,
  `employeeGroupID` int(11) NOT NULL,
  PRIMARY KEY (`promotionID`,`employeeGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionhead definition

CREATE TABLE `ms_promotionhead` (
  `promotionID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionMasterCode` varchar(50) DEFAULT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `promotionTypeID` int(11) NOT NULL,
  `minSalesPrice` decimal(20,4) NOT NULL,
  `flagMultiplication` tinyint(1) NOT NULL,
  `maxSalesPrice` decimal(20,4) NOT NULL,
  `paymentMethodTypeID` int(11) DEFAULT NULL,
  `paymentMethodID` int(11) DEFAULT NULL,
  `discount` decimal(20,4) NOT NULL,
  `externalPartnerTypeID` int(11) DEFAULT NULL,
  `externalBranchCode` varchar(100) DEFAULT NULL,
  `eaterType` varchar(50) DEFAULT NULL,
  `discountScopeType` varchar(50) DEFAULT NULL,
  `promotionDesc` varchar(100) DEFAULT NULL,
  `notes` varchar(100) NOT NULL,
  `flagMemberOnly` tinyint(1) DEFAULT NULL,
  `flagLoyalty` int(1) NOT NULL DEFAULT '0',
  `flagPackageContent` tinyint(1) DEFAULT '0',
  `flagMenuExtra` tinyint(1) DEFAULT '0',
  `flagAuthorization` tinyint(1) DEFAULT '0',
  `flagShow` tinyint(1) DEFAULT NULL,
  `promotionMemberTypeID` int(11) DEFAULT NULL,
  `promotionCode` varchar(20) DEFAULT NULL,
  `maxUsage` int(11) DEFAULT NULL,
  `maxUsageTotal` int(11) DEFAULT NULL,
  `voucherSourceID` smallint(1) NOT NULL DEFAULT '0',
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`promotionID`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionmenuprice definition

CREATE TABLE `ms_promotionmenuprice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionpackagesub definition

CREATE TABLE `ms_promotionpackagesub` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuSubsID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_promotionperiod definition

CREATE TABLE `ms_promotionperiod` (
  `promotionID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  PRIMARY KEY (`promotionID`,`dayID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotionprefix definition

CREATE TABLE `ms_promotionprefix` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_promotionselforderpayment definition

CREATE TABLE `ms_promotionselforderpayment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) DEFAULT NULL,
  `selfOrderPaymentMethodID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1500 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_promotiontime definition

CREATE TABLE `ms_promotiontime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_purpose definition

CREATE TABLE `ms_purpose` (
  `purposeID` int(11) NOT NULL AUTO_INCREMENT,
  `purposeName` varchar(50) NOT NULL,
  `purposeCoaNo` varchar(20) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`purposeID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_question definition

CREATE TABLE `ms_question` (
  `questionID` int(11) NOT NULL AUTO_INCREMENT,
  `questionName` varchar(50) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_questionnaire definition

CREATE TABLE `ms_questionnaire` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `questionType` varchar(50) NOT NULL,
  `questionText` text NOT NULL,
  `acceptOtherAnswer` tinyint(1) NOT NULL DEFAULT '0',
  `nextQuestionID` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_questionoption definition

CREATE TABLE `ms_questionoption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `questionID` int(11) NOT NULL,
  `answerText` varchar(100) NOT NULL,
  `nextQuestionID` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_recurringjournaldetail definition

CREATE TABLE `ms_recurringjournaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `recurringJournalHeadID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_recurringjournalhead definition

CREATE TABLE `ms_recurringjournalhead` (
  `recurringJournalHeadID` int(11) NOT NULL AUTO_INCREMENT,
  `recurringJournalName` varchar(100) NOT NULL,
  `recurringTypeID` int(11) NOT NULL,
  `recurringStartDate` date NOT NULL,
  `recurringEndDate` date NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recurringJournalHeadID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_relatedmenu definition

CREATE TABLE `ms_relatedmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `mainMenuID` int(11) NOT NULL,
  `relatedMenuID` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_requesttemplatedetail definition

CREATE TABLE `ms_requesttemplatedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `requestTemplateID` int(11) NOT NULL,
  `requestTemplateDetailName` varchar(50) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `requestProcessID` int(11) NOT NULL,
  `purposeID` int(11) DEFAULT NULL,
  `mode` varchar(10) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10134 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_requesttemplatehead definition

CREATE TABLE `ms_requesttemplatehead` (
  `requestTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `requestTemplateTypeID` int(11) DEFAULT NULL,
  `requestTemplateName` varchar(100) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `flagAutoTransfer` tinyint(1) DEFAULT '0',
  `destinationBranchID` int(11) DEFAULT NULL,
  `supplierID` int(11) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `allowZeroPricelist` tinyint(1) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`requestTemplateID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_salesrep definition

CREATE TABLE `ms_salesrep` (
  `salesRepID` int(11) NOT NULL AUTO_INCREMENT,
  `salesRepCode` varchar(50) DEFAULT NULL,
  `salesRepName` varchar(100) DEFAULT NULL,
  `genderID` int(11) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesRepID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_selfordercampaignhead definition

CREATE TABLE `ms_selfordercampaignhead` (
  `selfOrderCampaignID` int(11) NOT NULL AUTO_INCREMENT,
  `selfOrderCampaignName` varchar(100) DEFAULT NULL,
  `selfOrderCampaignType` varchar(30) DEFAULT NULL,
  `activeDateFrom` datetime DEFAULT NULL,
  `activeDateTo` datetime DEFAULT NULL,
  `effectType` varchar(20) DEFAULT NULL,
  `preAmountVal` decimal(20,4) DEFAULT NULL,
  `preAmountMsg` varchar(200) DEFAULT NULL,
  `minAmountVal` decimal(20,4) DEFAULT NULL,
  `postAmountMsg` varchar(200) DEFAULT NULL,
  `minQty` decimal(20,4) DEFAULT NULL,
  `menuID` int(11) DEFAULT NULL,
  `maxUsage` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `flagMultiple` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`selfOrderCampaignID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_selfordercampaignitem definition

CREATE TABLE `ms_selfordercampaignitem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `selfOrderCampaignID` int(11) DEFAULT NULL,
  `itemType` varchar(20) DEFAULT NULL,
  `itemPromotionID` int(11) NOT NULL DEFAULT '0',
  `itemQty` decimal(20,4) DEFAULT NULL,
  `usedQty` decimal(20,4) DEFAULT NULL,
  `itemMenuID` int(11) DEFAULT NULL,
  `itemDiscountVal` decimal(20,4) DEFAULT NULL,
  `itemText` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_setting definition

CREATE TABLE `ms_setting` (
  `key1` varchar(100) NOT NULL,
  `key2` varchar(100) NOT NULL,
  `value1` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `value2` text CHARACTER SET utf8mb4,
  `editedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`key1`,`key2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_signsettingdetail definition

CREATE TABLE `ms_signsettingdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `signSettingID` int(11) NOT NULL,
  `signHeader` varchar(100) DEFAULT NULL,
  `signName` varchar(100) DEFAULT NULL,
  `signFooter` varchar(100) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `signSettingID_INDEX` (`signSettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Master Signature Setting Detail Table';


-- fnb_bmp.ms_signsettingdetailsubtitute definition

CREATE TABLE `ms_signsettingdetailsubtitute` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `signSettingID` int(11) NOT NULL,
  `signDetailID` int(11) NOT NULL,
  `signHeader` varchar(100) DEFAULT NULL,
  `signName` varchar(100) DEFAULT NULL,
  `signFooter` varchar(100) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_signsettinghead definition

CREATE TABLE `ms_signsettinghead` (
  `signSettingID` int(11) NOT NULL AUTO_INCREMENT,
  `transType` varchar(50) NOT NULL,
  `flagAlignment` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`signSettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Master Signature Setting Head Table';


-- fnb_bmp.ms_specialpriceday definition

CREATE TABLE `ms_specialpriceday` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `specialPriceID` int(11) NOT NULL,
  `dayID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_specialpricehead definition

CREATE TABLE `ms_specialpricehead` (
  `specialPriceID` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `menuTemplateID` int(11) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`specialPriceID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_specialpricemenu definition

CREATE TABLE `ms_specialpricemenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `specialPriceID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `maxUsageQty` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_specialpricetime definition

CREATE TABLE `ms_specialpricetime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `specialPriceID` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_station definition

CREATE TABLE `ms_station` (
  `stationID` int(11) NOT NULL AUTO_INCREMENT,
  `stationName` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `printerConnectionID` varchar(45) NOT NULL,
  `printerTypeID` int(11) NOT NULL DEFAULT '1',
  `printerName` varchar(100) DEFAULT NULL,
  `flagCashDrawer` tinyint(1) NOT NULL DEFAULT '0',
  `printerPort` varchar(50) DEFAULT NULL,
  `characterPerLine` int(11) DEFAULT NULL,
  `printingModeID` int(1) NOT NULL,
  `flagAutocut` tinyint(1) DEFAULT '1',
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`stationID`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_subcategory definition

CREATE TABLE `ms_subcategory` (
  `subCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(50) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`subCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_supplier definition

CREATE TABLE `ms_supplier` (
  `supplierID` int(11) NOT NULL AUTO_INCREMENT,
  `companyID` int(11) DEFAULT '0',
  `companyCustomerID` int(11) DEFAULT '0',
  `supplierCode` varchar(20) DEFAULT NULL,
  `supplierName` varchar(50) NOT NULL,
  `supplierCategoryID` int(11) NOT NULL DEFAULT '0',
  `payableCoaNo` varchar(20) NOT NULL,
  `advancePurchaseCoaNo` varchar(20) DEFAULT NULL,
  `dueDate` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `linkSupplierCodeEsbGoods` varchar(50) DEFAULT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `vatSubject` bit(1) DEFAULT NULL,
  `lockVAT` tinyint(1) DEFAULT '0',
  `flagActive` bit(1) NOT NULL,
  `flagInvoiceOnReceipt` bit(1) NOT NULL DEFAULT b'0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=6130 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_supplierbank definition

CREATE TABLE `ms_supplierbank` (
  `supplierBankID` int(11) NOT NULL AUTO_INCREMENT,
  `bankTemplateID` int(11) DEFAULT NULL,
  `supplierID` int(11) NOT NULL,
  `bankName` varchar(50) NOT NULL,
  `bankAccountNumber` varchar(500) NOT NULL,
  `bankAccountName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  PRIMARY KEY (`supplierBankID`)
) ENGINE=InnoDB AUTO_INCREMENT=6049 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_suppliercategory definition

CREATE TABLE `ms_suppliercategory` (
  `supplierCategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `supplierCategoryName` varchar(50) NOT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`supplierCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_table definition

CREATE TABLE `ms_table` (
  `tableID` int(11) NOT NULL AUTO_INCREMENT,
  `tableTypeID` int(11) NOT NULL,
  `tableName` varchar(50) NOT NULL,
  `tableSeat` varchar(50) NOT NULL,
  `tableSectionID` int(11) NOT NULL,
  `tableMinimumBilling` decimal(20,4) NOT NULL,
  `tableChargeFee` decimal(20,4) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `posX` decimal(20,4) NOT NULL,
  `posY` decimal(20,4) NOT NULL,
  `widthRes` int(11) NOT NULL,
  `heightRes` int(11) NOT NULL,
  `stationID` int(11) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `flagAvailableForBooking` int(11) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tableID`)
) ENGINE=InnoDB AUTO_INCREMENT=2661 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_tablesection definition

CREATE TABLE `ms_tablesection` (
  `tableSectionID` int(11) NOT NULL AUTO_INCREMENT,
  `tableSectionName` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `image` longtext,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tableSectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_tablesectionstation definition

CREATE TABLE `ms_tablesectionstation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) DEFAULT NULL,
  `tableSectionID` int(11) DEFAULT NULL,
  `menuCategoryDetailID` int(11) DEFAULT NULL,
  `stationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_tacdetail definition

CREATE TABLE `ms_tacdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tacID` int(11) NOT NULL,
  `deviceID` varchar(20) DEFAULT NULL,
  `tableNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_tachead definition

CREATE TABLE `ms_tachead` (
  `tacID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tacID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_tax definition

CREATE TABLE `ms_tax` (
  `taxID` int(11) NOT NULL AUTO_INCREMENT,
  `taxName` varchar(50) NOT NULL,
  `taxRate` decimal(20,4) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `flagCustoms` tinyint(1) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`taxID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_tenant definition

CREATE TABLE `ms_tenant` (
  `tenantID` int(11) NOT NULL AUTO_INCREMENT,
  `tenantCode` varchar(5) DEFAULT NULL,
  `tenantName` varchar(100) NOT NULL,
  `tenantEmail` varchar(100) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `deductionVal` decimal(20,4) DEFAULT NULL,
  `flagOwn` tinyint(1) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(50) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_tentcard definition

CREATE TABLE `ms_tentcard` (
  `tentCardID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` text,
  `flagFeatured` tinyint(1) NOT NULL DEFAULT '0',
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`tentCardID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_terminal definition

CREATE TABLE `ms_terminal` (
  `terminalID` int(11) NOT NULL AUTO_INCREMENT,
  `posType` tinyint(1) NOT NULL DEFAULT '0',
  `terminalCode` varchar(10) NOT NULL,
  `branchID` int(11) NOT NULL,
  `lastSequence` varchar(20) DEFAULT NULL,
  `lastSequenceDate` datetime DEFAULT NULL,
  `statusID` tinyint(1) NOT NULL DEFAULT '48',
  `activatedDate` datetime DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`terminalID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.ms_transnumber definition

CREATE TABLE `ms_transnumber` (
  `transNumberID` int(11) NOT NULL AUTO_INCREMENT,
  `transType` varchar(50) NOT NULL,
  `transAbbreviation` varchar(3) NOT NULL,
  PRIMARY KEY (`transNumberID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_uom definition

CREATE TABLE `ms_uom` (
  `uomID` int(11) NOT NULL AUTO_INCREMENT,
  `metricID` int(11) NOT NULL,
  `uomName` varchar(50) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`uomID`)
) ENGINE=InnoDB AUTO_INCREMENT=1977 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_useraccess definition

CREATE TABLE `ms_useraccess` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userRoleID` int(11) NOT NULL,
  `accessID` varchar(10) NOT NULL,
  `indexAcc` bit(1) NOT NULL,
  `viewAcc` bit(1) NOT NULL,
  `releaseAcc` bit(1) NOT NULL,
  `insertAcc` bit(1) NOT NULL,
  `updateAcc` bit(1) NOT NULL,
  `deleteAcc` bit(1) NOT NULL,
  `authorizeAcc` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40238 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_userdashboard definition

CREATE TABLE `ms_userdashboard` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `dashboardItemID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_userrole definition

CREATE TABLE `ms_userrole` (
  `userRoleID` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeID` int(11) NOT NULL,
  `roleDesc` varchar(100) NOT NULL DEFAULT '',
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  PRIMARY KEY (`userRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_visitortype definition

CREATE TABLE `ms_visitortype` (
  `visitorTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `visitorTypeName` varchar(50) NOT NULL,
  `flagDineIn` tinyint(1) DEFAULT '1',
  `flagQuickService` tinyint(1) DEFAULT '1',
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitorTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_visitortypedetail definition

CREATE TABLE `ms_visitortypedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `visitorTypeID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `visitorTypeID_INDEX` (`visitorTypeID`),
  KEY `branchID_INDEX` (`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_visitpurpose definition

CREATE TABLE `ms_visitpurpose` (
  `visitPurposeID` int(11) NOT NULL AUTO_INCREMENT,
  `visitPurposeName` varchar(50) NOT NULL,
  `flagDineIn` tinyint(1) DEFAULT '0',
  `kioskModeID` int(11) DEFAULT '0',
  `flagQuickService` tinyint(1) DEFAULT '0',
  `flagShowQueue` tinyint(1) DEFAULT '0',
  `flagMaxOrder` tinyint(1) DEFAULT '0',
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitPurposeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_visitpurposegroup definition

CREATE TABLE `ms_visitpurposegroup` (
  `visitPurposeGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `visitPurposeGroupName` varchar(100) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`visitPurposeGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_voucher definition

CREATE TABLE `ms_voucher` (
  `voucherID` varchar(20) NOT NULL,
  `voucherSortID` varchar(10) NOT NULL,
  `voucherTypeID` int(11) NOT NULL,
  `voucherLength` int(11) NOT NULL,
  `voucherStartDate` date DEFAULT NULL,
  `voucherEndDate` date DEFAULT NULL,
  `createdBranchID` int(11) NOT NULL,
  `usedBranchID` int(11) DEFAULT NULL,
  `usedDate` datetime DEFAULT NULL,
  `salesNum` varchar(20) DEFAULT NULL,
  `minimumSalesAmount` decimal(20,4) NOT NULL,
  `voucherAmount` decimal(20,4) NOT NULL,
  `voucherPercentage` decimal(20,4) NOT NULL,
  `voucherSalesPrice` decimal(20,4) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `flagActive` bit(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  `lockTime` datetime DEFAULT NULL,
  `flagVoucherTemplate` tinyint(1) DEFAULT '0',
  `voucherTemplateID` int(11) DEFAULT NULL,
  PRIMARY KEY (`voucherID`),
  KEY `idx_ms_voucher_voucherSortID` (`voucherSortID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_vouchertemplate definition

CREATE TABLE `ms_vouchertemplate` (
  `voucherTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `voucherTemplateName` varchar(50) NOT NULL,
  `voucherLength` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `voucherTypeID` tinyint(1) NOT NULL,
  `voucherUseTypeID` tinyint(1) NOT NULL,
  `minSalesPrice` decimal(20,4) NOT NULL,
  `minSalesUsagePrice` decimal(20,4) DEFAULT '0.0000',
  `maxVoucherAmount` decimal(20,4) NOT NULL,
  `voucherAmount` decimal(20,4) NOT NULL,
  `voucherPercentage` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(200) NOT NULL,
  `flagActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`voucherTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.ms_vouchertemplatedetail definition

CREATE TABLE `ms_vouchertemplatedetail` (
  `voucherTemplateDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `voucherTemplateID` int(11) NOT NULL,
  `minSalesPrice` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `minSalesUsagePrice` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `maxVoucherAmount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `voucherAmount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `voucherPercentage` decimal(20,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`voucherTemplateDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.pos_branchsetting definition

CREATE TABLE `pos_branchsetting` (
  `id` varchar(100) NOT NULL,
  `branchID` varchar(45) NOT NULL,
  `value1` varchar(100) DEFAULT NULL,
  `value2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.stock definition

CREATE TABLE `stock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stockDate` datetime NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `locationID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_stock_refNum` (`refNum`),
  KEY `idx_stock_locationID` (`locationID`),
  KEY `idx_stock_productID` (`productID`),
  KEY `idx_stock_stockDate` (`stockDate`),
  KEY `idx_stock_qty` (`qty`),
  KEY `idx_stock_locationID_productID_qty_stockDate` (`locationID`,`productID`,`qty`,`stockDate`)
) ENGINE=InnoDB AUTO_INCREMENT=20050855 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.stock_card definition

CREATE TABLE `stock_card` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stockDate` datetime NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `locationID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `transType` varchar(50) NOT NULL,
  `inQty` decimal(20,4) NOT NULL,
  `outQty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_stock_card_stockDate` (`stockDate`),
  KEY `idx_stock_card_productDetailID` (`productDetailID`),
  KEY `idx_stock_card_refNum` (`refNum`),
  KEY `idx_stock_card_locationID` (`locationID`),
  KEY `idx_stock_card_stockDate_productDetailID` (`stockDate`,`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=36251327 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.stock_issue definition

CREATE TABLE `stock_issue` (
  `locationID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `stockCardQty` decimal(20,4) NOT NULL,
  `stockQty` decimal(20,4) NOT NULL,
  `diffQty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`locationID`,`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.stock_log definition

CREATE TABLE `stock_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `logType` varchar(50) DEFAULT NULL,
  `logDate` datetime NOT NULL,
  `stockDate` datetime DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `locationID` int(11) DEFAULT NULL,
  `productDetailID` int(11) DEFAULT NULL,
  `refNum` varchar(50) DEFAULT NULL,
  `transType` varchar(50) DEFAULT NULL,
  `inQty` decimal(20,4) DEFAULT NULL,
  `outQty` decimal(20,4) DEFAULT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  `stockQty` decimal(20,4) DEFAULT NULL,
  `stockCardQty` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=147854 DEFAULT CHARSET=latin1;


-- fnb_bmp.stock_period definition

CREATE TABLE `stock_period` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stockDate` date NOT NULL,
  `locationID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_stock_period_stockDate` (`stockDate`),
  KEY `idx_stock_period_locationID` (`locationID`),
  KEY `idx_stock_period_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=6603962 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tmp_userbilling definition

CREATE TABLE `tmp_userbilling` (
  `username` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `activeDays` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`,`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_advancepayment definition

CREATE TABLE `tr_advancepayment` (
  `advancePaymentNum` varchar(20) NOT NULL,
  `advancePaymentDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `supplierInvoiceNum` varchar(20) DEFAULT NULL,
  `bankName` varchar(50) NOT NULL,
  `bankAccountNumber` varchar(500) NOT NULL,
  `bankAccountName` varchar(100) NOT NULL,
  `bankFeeCoaNo` varchar(20) DEFAULT NULL,
  `bankFee` decimal(20,4) DEFAULT '0.0000',
  `purchaseNum` varchar(20) DEFAULT NULL,
  `linkCustomerAdvancePaymentNum` varchar(20) DEFAULT NULL,
  `linkAdvanceNumEsbGoods` varchar(50) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `otherCostTotal` decimal(20,4) DEFAULT NULL,
  `oldOtherCostTotal` decimal(20,4) DEFAULT NULL,
  `vatTotal` decimal(20,4) DEFAULT NULL,
  `advancePaymentTotal` decimal(20,4) NOT NULL,
  `usedAdvanceTotal` decimal(20,4) NOT NULL,
  `VAT` decimal(20,4) DEFAULT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `exportCsvCounter` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`advancePaymentNum`),
  KEY `idx_advancePayment_advancePaymentDate` (`advancePaymentDate`),
  KEY `idx_advancePayment_suplierID` (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_advancepaymentcost definition

CREATE TABLE `tr_advancepaymentcost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `advancePaymentNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL,
  `oldAmount` decimal(20,4) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_advancesettlementdetail definition

CREATE TABLE `tr_advancesettlementdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `advanceSettlementNum` varchar(20) NOT NULL,
  `advancePaymentNum` varchar(20) NOT NULL,
  `advanceTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_advancesettlementhead definition

CREATE TABLE `tr_advancesettlementhead` (
  `advanceSettlementNum` varchar(20) NOT NULL,
  `advanceSettlementDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `settlementTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`advanceSettlementNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_apicalllog definition

CREATE TABLE `tr_apicalllog` (
  `externalApiID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `callCount` int(11) DEFAULT NULL,
  `callInititalTime` datetime DEFAULT NULL,
  PRIMARY KEY (`externalApiID`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_approval definition

CREATE TABLE `tr_approval` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `refNum` varchar(50) NOT NULL,
  `approvalFlowID` int(11) NOT NULL,
  `approvalFlowLevel` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetdata definition

CREATE TABLE `tr_assetdata` (
  `assetID` varchar(50) NOT NULL,
  `goodsReceiptNum` varchar(50) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `assetCategoryID` int(11) NOT NULL,
  `assetName` varchar(200) DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `assetCoaNo` varchar(20) NOT NULL,
  `depCoaNo` varchar(20) NOT NULL,
  `expCoaNo` varchar(20) NOT NULL,
  `depLength` int(11) NOT NULL,
  `depOccurence` int(11) NOT NULL,
  `startingValue` decimal(20,4) DEFAULT NULL,
  `currentValue` decimal(20,4) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  `startDepDate` date DEFAULT NULL,
  `depreciationTypeID` int(11) DEFAULT NULL,
  `flagActive` bit(1) NOT NULL,
  `statusID` int(1) DEFAULT NULL,
  `image` longtext,
  `journalHeadID` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`assetID`),
  KEY `idx_branchID_tr_assetdata` (`branchID`),
  KEY `idx_locationID_tr_assetdata` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetdatafiscal definition

CREATE TABLE `tr_assetdatafiscal` (
  `assetID` varchar(50) NOT NULL,
  `assetCategoryID` int(11) NOT NULL,
  `depLengthFiscal` int(11) NOT NULL,
  `depOccurence` int(11) NOT NULL,
  `startingValue` decimal(20,4) DEFAULT NULL,
  `currentValue` decimal(20,4) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  `startDepDate` date DEFAULT NULL,
  `depreciationTypeIDFiscal` int(11) DEFAULT NULL,
  `flagActive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetdisposaldetail definition

CREATE TABLE `tr_assetdisposaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `assetDisposalNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `currentValue` decimal(20,4) NOT NULL,
  `startingValue` decimal(20,4) NOT NULL,
  `totalDepreciation` decimal(20,4) NOT NULL,
  `disposalCoaNo` varchar(20) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_assetdisposalhead definition

CREATE TABLE `tr_assetdisposalhead` (
  `assetDisposalNum` varchar(20) NOT NULL,
  `assetDisposalDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(45) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(45) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`assetDisposalNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_assetmaintenancedetail definition

CREATE TABLE `tr_assetmaintenancedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `assetMaintenanceNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `notes` varchar(50) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetmaintenancehead definition

CREATE TABLE `tr_assetmaintenancehead` (
  `assetMaintenanceNum` varchar(20) NOT NULL,
  `assetMaintenanceDate` date NOT NULL,
  `subtotal` decimal(20,4) NOT NULL,
  `discountTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`assetMaintenanceNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetrevaluationdetail definition

CREATE TABLE `tr_assetrevaluationdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `assetRevaluationNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `originalAssetValueBefore` decimal(20,4) DEFAULT NULL,
  `assetValueBefore` decimal(20,4) NOT NULL,
  `assetValueAfter` decimal(20,4) NOT NULL,
  `depLengthBefore` int(11) NOT NULL,
  `depLengthAfter` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetrevaluationfiscaldetail definition

CREATE TABLE `tr_assetrevaluationfiscaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `assetRevaluationNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `originalAssetValueBefore` decimal(20,4) DEFAULT NULL,
  `assetValueBefore` decimal(20,4) NOT NULL,
  `assetValueAfter` decimal(20,4) NOT NULL,
  `depLengthBefore` int(11) NOT NULL,
  `depLengthAfter` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetrevaluationfiscalhead definition

CREATE TABLE `tr_assetrevaluationfiscalhead` (
  `assetRevaluationNum` varchar(20) NOT NULL,
  `assetRevaluationDate` date NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`assetRevaluationNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetrevaluationhead definition

CREATE TABLE `tr_assetrevaluationhead` (
  `assetRevaluationNum` varchar(20) NOT NULL,
  `assetRevaluationDate` date NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`assetRevaluationNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetsalesdetail definition

CREATE TABLE `tr_assetsalesdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `assetSalesNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=644 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assetsaleshead definition

CREATE TABLE `tr_assetsaleshead` (
  `assetSalesNum` varchar(20) NOT NULL,
  `assetSalesDate` date NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `subtotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`assetSalesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assettransaction definition

CREATE TABLE `tr_assettransaction` (
  `transactionID` int(11) NOT NULL AUTO_INCREMENT,
  `transactionDate` date NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `transactionDesc` varchar(100) NOT NULL,
  `assetValueBefore` decimal(20,4) NOT NULL,
  `transactionAmount` decimal(20,4) NOT NULL,
  `assetValueAfter` decimal(20,4) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `idx_assetID_tr_assettransaction` (`assetID`)
) ENGINE=InnoDB AUTO_INCREMENT=1219612 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_assettransactionfiscal definition

CREATE TABLE `tr_assettransactionfiscal` (
  `transactionID` int(11) NOT NULL AUTO_INCREMENT,
  `transactionDate` date NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `transactionDesc` varchar(100) NOT NULL,
  `assetValueBefore` decimal(20,4) NOT NULL,
  `transactionAmount` decimal(20,4) NOT NULL,
  `assetValueAfter` decimal(20,4) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `idx_assetID_tr_assettransactionfiscal` (`assetID`)
) ENGINE=InnoDB AUTO_INCREMENT=189801 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_attendancelog definition

CREATE TABLE `tr_attendancelog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `attendanceID` int(11) NOT NULL,
  `employeeCode` varchar(50) NOT NULL,
  `attendancePurpose` varchar(50) NOT NULL,
  `attendanceTime` datetime DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  `imageUrl` varchar(1000) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_bankreconciliationdetail definition

CREATE TABLE `tr_bankreconciliationdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bankReconciliationID` int(11) NOT NULL,
  `bankStatementID` int(11) DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `journalDate` datetime NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `purposeCoaNo` varchar(20) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  `journalDetailID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_bankreconciliationdetail_bankReconciliationID` (`bankReconciliationID`),
  KEY `idx_tr_bankreconciliationdetail_journalDetailID` (`journalDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_bankreconciliationhead definition

CREATE TABLE `tr_bankreconciliationhead` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bankReconciliationDate` datetime NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `reconciliationTotal` decimal(20,4) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_bankstatement definition

CREATE TABLE `tr_bankstatement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bankReconciliationID` int(11) NOT NULL,
  `statementDate` datetime NOT NULL,
  `description` varchar(200) NOT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_book definition

CREATE TABLE `tr_book` (
  `bookNum` varchar(20) NOT NULL COMMENT 'Book Number, Branch Code dan Unique Time Ex:RXT22022021140421',
  `salesNum` varchar(20) DEFAULT NULL,
  `bookNumDisplay` varchar(20) NOT NULL COMMENT 'Book Number Display, Branch Code & Random 5 Character (Alphabet and Numeric), EX: RXTA3DE7',
  `bookChannelID` int(11) NOT NULL COMMENT 'Book Channel ID get from lk_bookchannel Table',
  `branchID` int(11) NOT NULL COMMENT 'Branch ID get From ms_branch Table',
  `title` varchar(10) NOT NULL COMMENT 'Title hardcode Mr, Mrs, Ms',
  `customerName` varchar(100) NOT NULL COMMENT 'Customer Name',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `phoneNumber` varchar(25) NOT NULL COMMENT 'Phone Number',
  `paxTotal` int(11) NOT NULL COMMENT 'Pax Total',
  `bookDate` date NOT NULL COMMENT 'Book Date',
  `bookTime` time NOT NULL COMMENT 'Book Time',
  `purpose` varchar(100) DEFAULT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `visitPurposeID` int(11) DEFAULT NULL COMMENT 'Visit Purpose ID get from ms_visitpurpose Table',
  `visitorTypeID` int(11) DEFAULT NULL COMMENT 'Visitor Type ID get from ms_visitortype Table',
  `statusID` int(11) NOT NULL COMMENT 'Status ID get from lk_status Table',
  `reason` varchar(250) DEFAULT NULL COMMENT 'Reason, Reason For Cancel and Reason For Rejection',
  `flagActive` tinyint(1) NOT NULL COMMENT 'Flag Active,Ex: 0 = Deleted/Inactive, 1 = Active',
  `createdBy` varchar(100) NOT NULL COMMENT 'Created By',
  `createdDate` datetime NOT NULL COMMENT 'Created Date',
  `editedBy` varchar(100) DEFAULT NULL COMMENT 'Edited By',
  `editedDate` datetime DEFAULT NULL COMMENT 'Edited Date',
  PRIMARY KEY (`bookNum`),
  UNIQUE KEY `idx_bookNumDisplay_tr_book` (`bookNumDisplay`),
  KEY `bookNum_INDEX` (`bookNum`),
  KEY `bookChannelID_INDEX` (`bookChannelID`),
  KEY `branchID_INDEX` (`branchID`),
  KEY `bookNumDisplay_INDEX` (`bookNumDisplay`),
  KEY `visitPurposeID_INDEX` (`visitPurposeID`),
  KEY `visitorTypeID_INDEX` (`visitorTypeID`),
  KEY `statusID_INDEX` (`statusID`),
  KEY `flagActive_INDEX` (`flagActive`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_bookguest definition

CREATE TABLE `tr_bookguest` (
  `bookGuestID` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookNum` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`bookGuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_bookhistory definition

CREATE TABLE `tr_bookhistory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `bookNum` varchar(20) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_booktable definition

CREATE TABLE `tr_booktable` (
  `bookTableID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Book Table ID',
  `bookNum` varchar(20) NOT NULL COMMENT 'Book Number get from tr_book Table',
  `tableID` int(11) NOT NULL COMMENT 'Table ID get from ms_table Table',
  PRIMARY KEY (`bookTableID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_bpdbaliqrispaymentnotification definition

CREATE TABLE `tr_bpdbaliqrispaymentnotification` (
  `trxID` int(11) NOT NULL,
  `terminalUser` varchar(50) NOT NULL,
  `productCode` varchar(50) NOT NULL,
  `billNumber` varchar(50) NOT NULL,
  `recordId` varchar(50) DEFAULT NULL,
  `qrString` longtext,
  `responseCode` varchar(50) NOT NULL,
  `responseDescription` varchar(100) NOT NULL,
  `hashcodeKey` varchar(100) NOT NULL,
  `reffNumber` varchar(100) NOT NULL,
  `trxDate` varchar(100) NOT NULL,
  PRIMARY KEY (`trxID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_branchevent definition

CREATE TABLE `tr_branchevent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `eventDate` datetime NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `eventSubject` varchar(50) NOT NULL,
  `eventDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `createdBy` varchar(100) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2880085 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_budgetadjustmentdetail definition

CREATE TABLE `tr_budgetadjustmentdetail` (
  `budgetAdjustmentDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `budgetAdjustmentNum` varchar(50) NOT NULL,
  `budgetPlanDetailID` int(11) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`budgetAdjustmentDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_budgetadjustmenthead definition

CREATE TABLE `tr_budgetadjustmenthead` (
  `budgetAdjustmentNum` varchar(50) NOT NULL,
  `budgetPlanNum` varchar(50) NOT NULL,
  `transactionDate` date DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `additionalInfo` varchar(200) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(50) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`budgetAdjustmentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_budgetperiodbranch definition

CREATE TABLE `tr_budgetperiodbranch` (
  `budgetPeriodBranchID` int(11) NOT NULL AUTO_INCREMENT,
  `budgetPeriodNum` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  PRIMARY KEY (`budgetPeriodBranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_budgetperiodcoa definition

CREATE TABLE `tr_budgetperiodcoa` (
  `budgetPeriodCoaID` int(11) NOT NULL AUTO_INCREMENT,
  `budgetPeriodNum` varchar(50) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  PRIMARY KEY (`budgetPeriodCoaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_budgetperiodhead definition

CREATE TABLE `tr_budgetperiodhead` (
  `budgetPeriodNum` varchar(50) NOT NULL,
  `budgetPeriodName` varchar(50) NOT NULL,
  `periodTypeID` int(11) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `flagAllCoa` tinyint(1) NOT NULL,
  `flagAllBranch` tinyint(1) NOT NULL,
  `additionalInfo` varchar(200) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(50) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`budgetPeriodNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_budgetplandetail definition

CREATE TABLE `tr_budgetplandetail` (
  `budgetPlanDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `budgetPlanNum` varchar(50) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `branchID` int(11) NOT NULL,
  `planDetailDate` date DEFAULT NULL,
  PRIMARY KEY (`budgetPlanDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_budgetplanhead definition

CREATE TABLE `tr_budgetplanhead` (
  `budgetPlanNum` varchar(50) NOT NULL,
  `budgetPeriodNum` varchar(50) NOT NULL,
  `periodStart` date DEFAULT NULL,
  `periodEnd` date DEFAULT NULL,
  `flagAllCoa` tinyint(1) NOT NULL,
  `flagAllBranch` tinyint(1) NOT NULL,
  `additionalInfo` varchar(200) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(50) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(50) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`budgetPlanNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cancelmenu definition

CREATE TABLE `tr_cancelmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  `menuRefID` varchar(50) NOT NULL,
  `menuGroupID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `menuExtraID` int(11) NOT NULL,
  `customMenuName` varchar(100) DEFAULT NULL,
  `qty` decimal(20,4) NOT NULL,
  `originalPrice` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `inclusivePrice` decimal(20,4) DEFAULT '0.0000',
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=987621 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashcount definition

CREATE TABLE `tr_cashcount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `countDate` datetime NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `startJournalDetailID` int(11) NOT NULL,
  `lastJournalDetailID` int(11) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashcountitem definition

CREATE TABLE `tr_cashcountitem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cashCountID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `journalDate` datetime NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `purposeCoaNo` varchar(20) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  `journalDetailID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashindetail definition

CREATE TABLE `tr_cashindetail` (
  `cashInDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `cashInNum` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `coaNo` varchar(50) NOT NULL,
  PRIMARY KEY (`cashInDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashinhead definition

CREATE TABLE `tr_cashinhead` (
  `cashInNum` varchar(50) NOT NULL,
  `cashInDate` date NOT NULL,
  `receivedCoa` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `vatTotal` decimal(20,4) DEFAULT NULL,
  `otherTaxID` int(11) DEFAULT NULL,
  `otherTaxTotal` decimal(20,4) DEFAULT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `authorizationNotes` varchar(200) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cashInNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashoutdetail definition

CREATE TABLE `tr_cashoutdetail` (
  `cashOutDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `cashOutNum` varchar(50) NOT NULL,
  `branchID` int(11) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `coaNo` varchar(50) NOT NULL,
  PRIMARY KEY (`cashOutDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashouthead definition

CREATE TABLE `tr_cashouthead` (
  `cashOutNum` varchar(50) NOT NULL,
  `cashOutDate` date NOT NULL,
  `paymentCoa` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) DEFAULT NULL,
  `bankName` varchar(50) NOT NULL,
  `bankAccountNumber` varchar(500) NOT NULL,
  `bankAccountName` varchar(100) NOT NULL,
  `vatTotal` decimal(20,4) DEFAULT NULL,
  `otherTaxID` int(11) DEFAULT NULL,
  `otherTaxTotal` decimal(20,4) DEFAULT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `authorizationNotes` varchar(200) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `exportCsvCounter` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cashOutNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashpurchasecost definition

CREATE TABLE `tr_cashpurchasecost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cashPurchaseNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_cashpurchasecost_cashPurchaseNum` (`cashPurchaseNum`)
) ENGINE=InnoDB AUTO_INCREMENT=20784 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashpurchasedetail definition

CREATE TABLE `tr_cashpurchasedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cashPurchaseNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `pricelistPrice` decimal(20,4) DEFAULT NULL,
  `price` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `discountPercent` decimal(20,4) DEFAULT NULL,
  `vat` decimal(20,4) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_cashpurchasedetail_cashPurchaseNum` (`cashPurchaseNum`),
  KEY `idx_tr_cashpurchasedetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=4752 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashpurchaseexpiration definition

CREATE TABLE `tr_cashpurchaseexpiration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cashPurchaseNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `expiredDate` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_cashpurchaseexpiration_cashPurchaseNum` (`cashPurchaseNum`),
  KEY `idx_cashpurchaseexpiration_productDetailID` (`productDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_cashpurchasehead definition

CREATE TABLE `tr_cashpurchasehead` (
  `cashPurchaseNum` varchar(20) NOT NULL,
  `cashPurchaseDate` date NOT NULL,
  `purchaseTypeID` int(11) DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `supplierInvoiceNum` varchar(50) DEFAULT NULL,
  `rate` decimal(20,4) NOT NULL,
  `coaNo` varchar(20) DEFAULT NULL,
  `costTotal` decimal(20,4) NOT NULL,
  `cashPurchaseTotal` decimal(20,4) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `dueDate` int(11) NOT NULL,
  `costCenterID` int(11) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `exportCsvCounter` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cashPurchaseNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_closedeliverydetail definition

CREATE TABLE `tr_closedeliverydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `closeDeliveryNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `returnQty` decimal(20,4) NOT NULL,
  `costQty` decimal(20,4) NOT NULL,
  `purposeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_closedeliverydetail_closeDeliveryNum` (`closeDeliveryNum`),
  KEY `idx_tr_closedeliverydetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_closedeliveryhead definition

CREATE TABLE `tr_closedeliveryhead` (
  `closeDeliveryNum` varchar(20) NOT NULL,
  `closeDeliveryDate` date NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`closeDeliveryNum`),
  KEY `idx_tr_closedeliveryhead_refNum` (`refNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_coabudgetdetail definition

CREATE TABLE `tr_coabudgetdetail` (
  `budgetDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `budgetHeadID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `initAmount` decimal(20,4) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`budgetDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_coabudgethead definition

CREATE TABLE `tr_coabudgethead` (
  `budgetHeadID` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`budgetHeadID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_coabudgetrelocationdetail definition

CREATE TABLE `tr_coabudgetrelocationdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `budgetRelocationID` int(11) NOT NULL,
  `budgetDetailID` int(11) NOT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_coabudgetrelocationhead definition

CREATE TABLE `tr_coabudgetrelocationhead` (
  `budgetRelocationID` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) NOT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`budgetRelocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_crosstransaction definition

CREATE TABLE `tr_crosstransaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transactionType` varchar(50) DEFAULT NULL,
  `sourceCompanyID` int(11) DEFAULT NULL,
  `transactionData` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_customeradvancepayment definition

CREATE TABLE `tr_customeradvancepayment` (
  `customerAdvancePaymentNum` varchar(20) NOT NULL,
  `customerAdvancePaymentDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerBranchID` int(11) DEFAULT NULL,
  `bankName` varchar(50) DEFAULT NULL,
  `bankAccountNumber` varchar(50) DEFAULT NULL,
  `bankAccountName` varchar(100) DEFAULT NULL,
  `productSalesNum` varchar(20) DEFAULT NULL,
  `linkAdvancePaymentNum` varchar(20) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `customerAdvancePaymentTotal` decimal(20,4) NOT NULL,
  `usedAdvanceTotal` decimal(20,4) NOT NULL,
  `VAT` decimal(20,4) DEFAULT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) DEFAULT NULL,
  `additionalInfo` varchar(1000) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`customerAdvancePaymentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_customeradvancesettlementdetail definition

CREATE TABLE `tr_customeradvancesettlementdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `customerAdvanceSettlementNum` varchar(20) NOT NULL,
  `customerAdvancePaymentNum` varchar(20) NOT NULL,
  `advanceTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_customerAdvanceSettlementNum_customeradvancesettlementdetail` (`customerAdvanceSettlementNum`),
  KEY `idx_customerAdvancePaymentNum_customeradvancesettlementdetail` (`customerAdvancePaymentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_customeradvancesettlementhead definition

CREATE TABLE `tr_customeradvancesettlementhead` (
  `customerAdvanceSettlementNum` varchar(20) NOT NULL,
  `customerAdvanceSettlementDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `settlementTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`customerAdvanceSettlementNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_customerreceivable definition

CREATE TABLE `tr_customerreceivable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `receivableDate` date NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerBranchID` int(11) DEFAULT NULL,
  `productSalesInvoiceNum` varchar(20) NOT NULL,
  `productSalesPaymentNum` varchar(20) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `receivableTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4017 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_customertransaction definition

CREATE TABLE `tr_customertransaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` varchar(20) DEFAULT NULL,
  `salesNum` varchar(20) DEFAULT NULL,
  `fullName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_salesNum_tr_customertransaction` (`salesNum`),
  KEY `idx_orderID_tr_customertransaction` (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=21627 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_depositwithdrawaldetail definition

CREATE TABLE `tr_depositwithdrawaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `depositWithdrawalNum` varchar(20) NOT NULL,
  `memberDepositNum` varchar(20) NOT NULL,
  `withdrawalTotal` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_depositwithdrawalhead definition

CREATE TABLE `tr_depositwithdrawalhead` (
  `depositWithdrawalNum` varchar(20) NOT NULL,
  `depositWithdrawalDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `memberCode` varchar(20) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `paymentMethodID` varchar(20) NOT NULL,
  `withdrawalTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(100) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`depositWithdrawalNum`),
  KEY `idx_tr_depositwithdrawalhead_memberID` (`memberID`),
  KEY `idx_tr_depositwithdrawalhead_memberCode` (`memberCode`),
  KEY `idx_tr_depositwithdrawalhead_branchID` (`branchID`),
  KEY `idx_tr_depositwithdrawalhead_depositWithdrawalDate` (`depositWithdrawalDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_devicetransaction definition

CREATE TABLE `tr_devicetransaction` (
  `transactionDate` date NOT NULL,
  `deviceMacAddress` varchar(50) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  `branchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`transactionDate`,`deviceMacAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_disbursementdetail definition

CREATE TABLE `tr_disbursementdetail` (
  `disbursementDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `disbursementNum` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `costCenterID` int(11) DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`disbursementDetailID`),
  KEY `disbursementNum_INDEX` (`disbursementNum`),
  KEY `branchID_INDEX` (`branchID`),
  KEY `coaNo_INDEX` (`coaNo`),
  KEY `costCenterID_INDEX` (`costCenterID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_disbursementhead definition

CREATE TABLE `tr_disbursementhead` (
  `disbursementNum` varchar(50) NOT NULL,
  `disbursementDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `disbursementCoaNo` varchar(20) DEFAULT NULL,
  `dueDate` int(11) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `additionalInfo` varchar(1000) DEFAULT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `flagAutoReleased` tinyint(1) NOT NULL DEFAULT '0',
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`disbursementNum`),
  KEY `branchID_INDEX` (`branchID`),
  KEY `paymentID_INDEX` (`paymentID`),
  KEY `supplierID_INDEX` (`supplierID`),
  KEY `disbursementCoaNo_INDEX` (`disbursementCoaNo`),
  KEY `reference_INDEX` (`reference`),
  KEY `disbursementDate_INDEX` (`disbursementDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Transaction Disbursement Table';


-- fnb_bmp.tr_emailsent definition

CREATE TABLE `tr_emailsent` (
  `emailSentID` int(11) NOT NULL AUTO_INCREMENT,
  `referenceNum` varchar(100) NOT NULL,
  `sentDate` datetime NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`emailSentID`)
) ENGINE=InnoDB AUTO_INCREMENT=13555 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_employeeadvance definition

CREATE TABLE `tr_employeeadvance` (
  `employeeAdvanceNum` varchar(20) NOT NULL,
  `employeeAdvanceDate` date NOT NULL,
  `dueDay` int(11) NOT NULL,
  `employeeAdvanceDueDate` date NOT NULL,
  `employeeCode` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `employeeAdvanceTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `exportCsvCounter` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`employeeAdvanceNum`),
  KEY `idx_employeeAdvance_employeeAdvanceNum` (`employeeAdvanceNum`),
  KEY `idx_employeeAdvance_employeeCode` (`employeeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_employeeothercostemail definition

CREATE TABLE `tr_employeeothercostemail` (
  `salesNum` varchar(20) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `receiptEmailDate` datetime DEFAULT NULL,
  `voidEmailDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_employeereimbursementadvance definition

CREATE TABLE `tr_employeereimbursementadvance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `employeeReimbursementNum` varchar(20) NOT NULL,
  `employeeAdvanceNum` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_employeereimbursementdetail definition

CREATE TABLE `tr_employeereimbursementdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `employeeReimbursementNum` varchar(20) NOT NULL,
  `purposeID` int(11) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_employeereimbursementhead definition

CREATE TABLE `tr_employeereimbursementhead` (
  `employeeReimbursementNum` varchar(20) NOT NULL,
  `employeeReimbursementDate` date NOT NULL,
  `employeeCode` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) DEFAULT NULL,
  `employeeAdvanceTotal` decimal(20,4) NOT NULL,
  `reimbursementTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `printedBy` varchar(100) DEFAULT NULL,
  `printedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`employeeReimbursementNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_endperiod definition

CREATE TABLE `tr_endperiod` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `endPeriodDate` date NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_endperiodcurrency definition

CREATE TABLE `tr_endperiodcurrency` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `endPeriodID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_endperiodstock definition

CREATE TABLE `tr_endperiodstock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `endPeriodDate` date NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_errorlog definition

CREATE TABLE `tr_errorlog` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `logTime` datetime DEFAULT NULL,
  `logDesc` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `modelValue` text NOT NULL,
  PRIMARY KEY (`logID`)
) ENGINE=InnoDB AUTO_INCREMENT=61135091 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_esbpaypaymentnotification definition

CREATE TABLE `tr_esbpaypaymentnotification` (
  `transactionNum` varchar(50) NOT NULL,
  `companyCode` varchar(20) NOT NULL,
  `orderId` varchar(100) NOT NULL,
  `paymentStatus` varchar(20) NOT NULL,
  `paymentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`transactionNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_expireddepositdetail definition

CREATE TABLE `tr_expireddepositdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `expiredDepositNum` varchar(20) NOT NULL,
  `memberDepositNum` varchar(20) NOT NULL,
  `expiredDepositTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_expireddeposithead definition

CREATE TABLE `tr_expireddeposithead` (
  `expiredDepositNum` varchar(20) NOT NULL,
  `expiredDepositDate` date DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `rate` decimal(20,4) DEFAULT NULL,
  `coaNo` varchar(20) DEFAULT NULL,
  `expiredDepositTotal` decimal(20,4) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`expiredDepositNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_externaltokendetail definition

CREATE TABLE `tr_externaltokendetail` (
  `batchID` varchar(50) NOT NULL,
  `cardNumber` varchar(20) NOT NULL,
  `salesNum` varchar(20) NOT NULL,
  PRIMARY KEY (`cardNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_externaltokenhead definition

CREATE TABLE `tr_externaltokenhead` (
  `batchID` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `terminalID` varchar(50) NOT NULL,
  `flagActive` smallint(1) NOT NULL,
  `expiredDate` datetime DEFAULT NULL,
  PRIMARY KEY (`batchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_ezodelivery definition

CREATE TABLE `tr_ezodelivery` (
  `ID` varchar(20) NOT NULL,
  `ezoOrderID` varchar(20) DEFAULT NULL,
  `ezoServerID` varchar(20) DEFAULT NULL,
  `transactionModeID` int(11) DEFAULT NULL,
  `transactionModeName` varchar(50) DEFAULT NULL,
  `deliveryCourierType` int(11) DEFAULT NULL,
  `deliveryBookID` varchar(50) DEFAULT NULL,
  `deliveryTrackingUrl` varchar(500) DEFAULT NULL,
  `deliveryOrderCount` int(11) DEFAULT NULL,
  `deliveryDriverName` varchar(50) DEFAULT NULL,
  `deliveryDriverPhone` varchar(20) DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `fullName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `address` text,
  `deliveryAddressDetailNotes` text,
  `deliveryAddressDriverNotes` text,
  `orderData` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtotal` decimal(20,4) NOT NULL,
  `otherTaxTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `otherVatTotal` decimal(20,4) DEFAULT '0.0000',
  `deliveryCost` decimal(20,4) DEFAULT NULL,
  `originalDeliveryCost` decimal(20,4) DEFAULT NULL,
  `actualDeliveryCost` decimal(20,4) DEFAULT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `roundingTotal` decimal(20,4) NOT NULL,
  `orderFee` decimal(20,4) DEFAULT '0.0000',
  `paymentTotal` decimal(20,4) DEFAULT NULL,
  `voucherDiscountTotal` decimal(20,4) DEFAULT NULL,
  `discountTotal` decimal(20,4) DEFAULT NULL,
  `promotionDiscount` decimal(20,4) DEFAULT NULL,
  `promotionID` int(11) DEFAULT NULL,
  `deliveryPromotionID` int(11) DEFAULT NULL,
  `promotionCode` varchar(20) DEFAULT NULL,
  `selfOrderPaymentMethodID` varchar(10) DEFAULT NULL,
  `cancelReason` varchar(200) DEFAULT NULL,
  `customerLongitude` decimal(20,13) DEFAULT NULL,
  `customerLatitude` decimal(20,13) DEFAULT NULL,
  `customerDistance` decimal(20,4) DEFAULT NULL,
  `customerNotes` varchar(200) DEFAULT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `deliveryTime` datetime DEFAULT NULL,
  `pickupTime` time DEFAULT NULL,
  `refundTransactionID` varchar(50) DEFAULT NULL,
  `refundMode` varchar(50) DEFAULT NULL,
  `refundUrl` varchar(200) DEFAULT NULL,
  `refundStatus` varchar(50) DEFAULT NULL,
  `externalMemberID` varchar(50) DEFAULT NULL,
  `externalMembershipTypeID` varchar(20) DEFAULT NULL,
  `externalTransID` varchar(50) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `deliveryStatus` varchar(50) DEFAULT NULL,
  `deliveryLastUpdate` datetime DEFAULT NULL,
  `syncStatus` varchar(20) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `processedBy` varchar(100) DEFAULT NULL,
  `processedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_ezoOrderID_tr_ezodelivery` (`ezoOrderID`),
  KEY `idx_tr_ezodelivery_branchID` (`branchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_ezodeliverydriver definition

CREATE TABLE `tr_ezodeliverydriver` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `ezoDeliveryID` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8682 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_ezodeliveryext definition

CREATE TABLE `tr_ezodeliveryext` (
  `ezoDeliveryID` varchar(20) NOT NULL,
  `sbuxCardNumber` varchar(100) DEFAULT NULL,
  `sbuxCardBalance` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ezoDeliveryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_ezodeliveryshipper definition

CREATE TABLE `tr_ezodeliveryshipper` (
  `ID` varchar(20) NOT NULL,
  `bookingID` varchar(50) DEFAULT NULL,
  `createBookingTime` datetime DEFAULT NULL,
  `trackingID` varchar(50) DEFAULT NULL,
  `retrieveTrackingTime` datetime DEFAULT NULL,
  `activateOrderTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_ezodeliverystatus definition

CREATE TABLE `tr_ezodeliverystatus` (
  `ezoDeliveryID` varchar(20) NOT NULL,
  `statusName` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`ezoDeliveryID`,`statusName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_ezopromousage definition

CREATE TABLE `tr_ezopromousage` (
  `phoneNumber` varchar(20) NOT NULL,
  `promotionID` int(11) NOT NULL,
  `promotionCode` varchar(20) NOT NULL,
  `promotionUsage` int(11) DEFAULT NULL,
  PRIMARY KEY (`phoneNumber`,`promotionID`,`promotionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_glreconciliationdetail definition

CREATE TABLE `tr_glreconciliationdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `glReconciliationID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `journalDate` datetime NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  `journalDetailID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_glreconciliationhead definition

CREATE TABLE `tr_glreconciliationhead` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `glReconciliationDate` datetime NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `reconciliationTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsdeliveryasset definition

CREATE TABLE `tr_goodsdeliveryasset` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsDeliveryNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `flagReceipt` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_goodsDeliveryNum_tr_goodsdeliveryasset` (`goodsDeliveryNum`),
  KEY `idx_assetID_tr_goodsdeliveryasset` (`assetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsdeliverydetail definition

CREATE TABLE `tr_goodsdeliverydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsDeliveryNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  `deviationVal` decimal(20,4) NOT NULL,
  `fullReceipt` bit(1) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_goodsdeliverydetail_goodsdeliverynum` (`goodsDeliveryNum`),
  KEY `idx_goodsdeliverydetail_productDetailid` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=158166 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsdeliveryexpiration definition

CREATE TABLE `tr_goodsdeliveryexpiration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsDeliveryNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `expiredDate` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_goodsdeliveryexpiration_goodsDeliveryNum` (`goodsDeliveryNum`),
  KEY `idx_goodsdeliveryexpiration_productDetailID` (`productDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsdeliveryhead definition

CREATE TABLE `tr_goodsdeliveryhead` (
  `goodsDeliveryNum` varchar(20) NOT NULL,
  `goodsDeliveryDate` date NOT NULL,
  `transType` varchar(50) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `destBranchID` int(11) NOT NULL,
  `linkGoodsReceiptNum` varchar(20) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `printingCount` int(11) DEFAULT '0',
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`goodsDeliveryNum`),
  KEY `idx_goodsdeliveryhead_refnum` (`refNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsdeliveryreturndetail definition

CREATE TABLE `tr_goodsdeliveryreturndetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsDeliveryReturnNum` varchar(20) NOT NULL,
  `goodsDeliveryNum` varchar(20) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `otherTax` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsdeliveryreturnhead definition

CREATE TABLE `tr_goodsdeliveryreturnhead` (
  `goodsDeliveryReturnNum` varchar(20) NOT NULL,
  `goodsDeliveryReturnDate` date NOT NULL,
  `customerID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `linkGoodsReceiptReturnNum` varchar(20) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `priceTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `otherTaxTotal` decimal(20,4) NOT NULL,
  `returnTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`goodsDeliveryReturnNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsreceiptasset definition

CREATE TABLE `tr_goodsreceiptasset` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsReceiptNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_goodsReceiptNum_tr_goodsrececeiptasset` (`goodsReceiptNum`),
  KEY `idx_assetID_tr_goodsreceiptasset` (`assetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsreceiptdetail definition

CREATE TABLE `tr_goodsreceiptdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsReceiptNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `deviationVal` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_goodsreceiptdetail_goodsReceiptNum` (`goodsReceiptNum`),
  KEY `idx_tr_goodsreceiptdetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=482413 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsreceiptexpiration definition

CREATE TABLE `tr_goodsreceiptexpiration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsReceiptNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `expiredDate` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_goodsreceiptexpiration_goodsReceiptNum` (`goodsReceiptNum`),
  KEY `idx_goodsreceiptexpiration_productDetailID` (`productDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsreceipthead definition

CREATE TABLE `tr_goodsreceipthead` (
  `goodsReceiptNum` varchar(20) NOT NULL,
  `goodsReceiptDate` date NOT NULL,
  `transType` varchar(50) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `deliveryNum` varchar(50) DEFAULT NULL,
  `linkGoodsDeliveryNum` varchar(20) DEFAULT NULL,
  `linkGoodsReceiptNumEsbGoods` varchar(50) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`goodsReceiptNum`),
  KEY `idx_tr_goodsreceipthead_refNum` (`refNum`),
  KEY `idx_goodsReceiptHead_transType` (`transType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsreceiptreturndetail definition

CREATE TABLE `tr_goodsreceiptreturndetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `goodsReceiptReturnNum` varchar(20) NOT NULL,
  `goodsReceiptNum` varchar(20) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `otherTax` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_goodsreceiptreturnhead definition

CREATE TABLE `tr_goodsreceiptreturnhead` (
  `goodsReceiptReturnNum` varchar(20) NOT NULL,
  `goodsReceiptReturnDate` date NOT NULL,
  `supplierID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `priceTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `otherTaxTotal` decimal(20,4) NOT NULL,
  `returnTotal` decimal(20,4) NOT NULL,
  `linkGoodsDeliveryReturnNum` varchar(20) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`goodsReceiptReturnNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_guestcomment definition

CREATE TABLE `tr_guestcomment` (
  `salesNum` varchar(20) NOT NULL,
  `companyID` int(11) NOT NULL,
  `guestSatisfaction` tinyint(4) DEFAULT NULL,
  `guestName` varchar(200) DEFAULT NULL,
  `guestEmail` varchar(200) DEFAULT NULL,
  `guestPhone` varchar(20) DEFAULT NULL,
  `guestNotes` text,
  `flagProcess` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`salesNum`,`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_importdocumenthead definition

CREATE TABLE `tr_importdocumenthead` (
  `importDocumentNum` varchar(20) NOT NULL,
  `importDocumentDate` date NOT NULL,
  `refNum` varchar(20) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `rate` decimal(20,4) DEFAULT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `taxPaymentCoaNo` varchar(20) DEFAULT NULL,
  `taxTotal` decimal(20,4) NOT NULL,
  `supplierPaymentTotal` decimal(20,4) DEFAULT NULL,
  `importDocumentTotal` decimal(20,4) DEFAULT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`importDocumentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_importdocumenttax definition

CREATE TABLE `tr_importdocumenttax` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `importDocumentNum` varchar(20) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxCoaNo` varchar(20) DEFAULT NULL,
  `taxTotal` decimal(20,4) DEFAULT NULL,
  `flagCogs` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_importpaymentdetail definition

CREATE TABLE `tr_importpaymentdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `importPaymentNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `discountPercent` decimal(20,4) DEFAULT NULL,
  `vat` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `flagCogs` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_importpaymenthead definition

CREATE TABLE `tr_importpaymenthead` (
  `importPaymentNum` varchar(20) NOT NULL,
  `importPaymentDate` date NOT NULL,
  `importDocumentNum` varchar(20) DEFAULT NULL,
  `importPaymentDesc` varchar(50) DEFAULT NULL,
  `supplierID` int(11) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `rate` decimal(20,4) DEFAULT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `importPaymentCoaNo` varchar(20) DEFAULT NULL,
  `importPaymentTotal` decimal(20,4) DEFAULT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`importPaymentNum`),
  KEY `idx_tr_importpaymentdetail_importPaymentNum` (`importPaymentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_intercash definition

CREATE TABLE `tr_intercash` (
  `intercashNum` varchar(20) NOT NULL,
  `intercashDate` date NOT NULL,
  `sourceBranchID` int(11) NOT NULL,
  `sourceCoaNo` varchar(20) NOT NULL,
  `sourceCurrencyID` int(11) NOT NULL,
  `sourceRate` decimal(20,4) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `otherExpensesCoaNo` varchar(20) DEFAULT NULL,
  `otherExpenses` decimal(20,4) DEFAULT '0.0000',
  `sourceTotal` decimal(20,4) NOT NULL,
  `destinationBranchID` int(11) NOT NULL,
  `destinationCoaNo` varchar(20) NOT NULL,
  `destinationCurrencyID` int(11) NOT NULL,
  `destinationRate` decimal(20,4) NOT NULL,
  `destinationTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`intercashNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_inventoryrevaluationdetail definition

CREATE TABLE `tr_inventoryrevaluationdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `inventoryRevaluationNum` varchar(20) NOT NULL,
  `locationID` int(11) NOT NULL,
  `purposeID` int(11) DEFAULT NULL,
  `costCenterID` int(11) DEFAULT NULL,
  `productDetailID` int(11) NOT NULL,
  `costingAmount` decimal(20,4) NOT NULL,
  `revaluationAmount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19832 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_inventoryrevaluationhead definition

CREATE TABLE `tr_inventoryrevaluationhead` (
  `inventoryRevaluationNum` varchar(20) NOT NULL,
  `revaluationDate` date NOT NULL,
  `revaluationTypeID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) DEFAULT NULL,
  `referenceNumber` varchar(20) DEFAULT NULL,
  `purposeReferenceID` int(11) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`inventoryRevaluationNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_itemjournaldetail definition

CREATE TABLE `tr_itemjournaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `itemJournalNum` varchar(20) NOT NULL,
  `purposeID` int(11) DEFAULT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_itemjournaldetail_itemJournalNum` (`itemJournalNum`),
  KEY `idx_tr_itemjournaldetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=94970 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_itemjournalhead definition

CREATE TABLE `tr_itemjournalhead` (
  `itemJournalNum` varchar(20) NOT NULL,
  `itemJournalDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `requestTemplateID` int(11) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`itemJournalNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_journaldetail definition

CREATE TABLE `tr_journaldetail` (
  `journalDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `journalHeadID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `branchID` int(11) DEFAULT NULL,
  `notes` varchar(1050) DEFAULT NULL,
  `costCenterID` int(11) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `rate` decimal(20,4) DEFAULT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`journalDetailID`),
  KEY `idx_tr_journaldetail_journalHeadID` (`journalHeadID`),
  KEY `idx_tr_journaldetail_coaNo` (`coaNo`),
  KEY `idx_tr_journaldetail_branchID` (`branchID`)
) ENGINE=InnoDB AUTO_INCREMENT=4556498 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_journalhead definition

CREATE TABLE `tr_journalhead` (
  `journalHeadID` int(11) NOT NULL AUTO_INCREMENT,
  `journalDate` datetime NOT NULL,
  `transactionType` varchar(100) NOT NULL,
  `refNum` varchar(200) DEFAULT NULL,
  `notes` varchar(1050) DEFAULT NULL,
  `systemNotes` varchar(200) DEFAULT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`journalHeadID`),
  KEY `idx_refNum_journalDate_transactionType` (`refNum`,`journalDate`,`transactionType`)
) ENGINE=InnoDB AUTO_INCREMENT=848982 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_materialdeliverydetail definition

CREATE TABLE `tr_materialdeliverydetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `materialDeliveryNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_materialdeliveryhead definition

CREATE TABLE `tr_materialdeliveryhead` (
  `materialDeliveryNum` varchar(20) NOT NULL,
  `materialDeliveryDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `productionOrderNum` varchar(20) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`materialDeliveryNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_memberdeposit definition

CREATE TABLE `tr_memberdeposit` (
  `memberDepositNum` varchar(20) NOT NULL,
  `memberDepositDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `memberCode` varchar(20) DEFAULT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `depositTotal` decimal(20,4) NOT NULL,
  `usedDepositTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`memberDepositNum`),
  KEY `idx_tr_memberdeposit_memberID` (`memberID`),
  KEY `idx_tr_memberdeposit_memberCode` (`memberCode`),
  KEY `idx_tr_memberdeposit_branchID` (`branchID`),
  KEY `idx_tr_memberdeposit_memberDepositDate` (`memberDepositDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_memberdepositpayment definition

CREATE TABLE `tr_memberdepositpayment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `memberDepositNum` varchar(50) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `cardNumber` varchar(20) NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `accountName` varchar(50) NOT NULL,
  `verificationCode` varchar(100) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `merchantDiscountRate` decimal(20,4) DEFAULT '0.0000',
  `paymentAmount` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_memberdepositpayment_memberDepositNum` (`memberDepositNum`),
  KEY `idx_memberdepositpayment_paymentMethodID` (`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_memorialjournaldetail definition

CREATE TABLE `tr_memorialjournaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `memorialJournalNum` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_memorialjournaldetail_memorialJournalNum` (`memorialJournalNum`)
) ENGINE=InnoDB AUTO_INCREMENT=380017 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_memorialjournalhead definition

CREATE TABLE `tr_memorialjournalhead` (
  `memorialJournalNum` varchar(20) NOT NULL,
  `memorialJournalDate` date NOT NULL,
  `recurringJournalHeadID` int(11) DEFAULT '0',
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`memorialJournalNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_menuspecialpriceusage definition

CREATE TABLE `tr_menuspecialpriceusage` (
  `phoneNumber` varchar(20) NOT NULL,
  `menuID` int(11) NOT NULL,
  `usageQty` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `transactionDate` date NOT NULL,
  PRIMARY KEY (`phoneNumber`,`menuID`,`transactionDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_midtranspaymentnotification definition

CREATE TABLE `tr_midtranspaymentnotification` (
  `midtrans_notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `transaction_time` datetime NOT NULL,
  `transaction_status` varchar(100) NOT NULL,
  `status_message` varchar(100) NOT NULL,
  `status_code` varchar(10) NOT NULL,
  `signature_key` varchar(150) NOT NULL,
  `settlement_time` datetime DEFAULT NULL,
  `payment_type` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `gross_amount` decimal(20,4) NOT NULL,
  `fraud_status` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  PRIMARY KEY (`midtrans_notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_nobubankqrispaymentnotification definition

CREATE TABLE `tr_nobubankqrispaymentnotification` (
  `transactionNo` varchar(25) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `referenceNo` varchar(25) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `paymentStatus` varchar(10) DEFAULT NULL,
  `paymentReferenceNo` varchar(50) DEFAULT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `issuerID` varchar(10) DEFAULT NULL,
  `retrievalReferenceNo` varchar(50) DEFAULT NULL,
  `signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`transactionNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_openmanufacturinghead definition

CREATE TABLE `tr_openmanufacturinghead` (
  `openManufacturingNum` varchar(20) NOT NULL,
  `openManufacturingDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `originLocationID` int(11) NOT NULL,
  `destinationLocationID` int(11) NOT NULL,
  `bomTypeID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) DEFAULT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`openManufacturingNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_openmanufacturingmaterial definition

CREATE TABLE `tr_openmanufacturingmaterial` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `openManufacturingNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_openmanufacturingresult definition

CREATE TABLE `tr_openmanufacturingresult` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `openManufacturingNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `manufacturingQty` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `hpp` decimal(20,4) DEFAULT NULL,
  `weightFactor` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_orderpayment definition

CREATE TABLE `tr_orderpayment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ezoDeliveryNum` varchar(20) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `voucherCode` varchar(50) NOT NULL DEFAULT '',
  `notes` varchar(100) NOT NULL DEFAULT '',
  `cardNumber` varchar(20) NOT NULL DEFAULT '',
  `bankName` varchar(100) NOT NULL DEFAULT '',
  `accountName` varchar(50) NOT NULL DEFAULT '',
  `selfOrderID` varchar(50) DEFAULT NULL,
  `verificationCode` varchar(100) NOT NULL DEFAULT '',
  `coaNo` varchar(20) NOT NULL,
  `paymentAmount` decimal(20,4) NOT NULL,
  `fullPaymentAmount` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_orderpayment_ezoDeliveryNum` (`ezoDeliveryNum`)
) ENGINE=InnoDB AUTO_INCREMENT=21243 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_ordervoucherusage definition

CREATE TABLE `tr_ordervoucherusage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ezoDeliveryNum` varchar(20) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `voucherCode` varchar(50) NOT NULL DEFAULT '',
  `notes` varchar(100) NOT NULL DEFAULT '',
  `coaNo` varchar(20) NOT NULL,
  `paymentAmount` decimal(20,4) NOT NULL,
  `fullPaymentAmount` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_ordervoucherusage_ezoDeliveryNum` (`ezoDeliveryNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_otherreconciliation definition

CREATE TABLE `tr_otherreconciliation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sourceCOA` varchar(20) NOT NULL,
  `otherReconDate` datetime NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `journalDetailID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  `flagPost` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_oypaymentnotification definition

CREATE TABLE `tr_oypaymentnotification` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `status` text,
  `recipient_name` varchar(255) DEFAULT NULL,
  `recipient_bank` varchar(20) DEFAULT NULL,
  `recipient_account` varchar(255) DEFAULT NULL,
  `trx_id` varchar(50) DEFAULT NULL,
  `partner_trx_id` varchar(255) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `created_date` varchar(20) DEFAULT NULL,
  `last_updated_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_payablesettlement definition

CREATE TABLE `tr_payablesettlement` (
  `payableSettlementNum` varchar(20) NOT NULL,
  `payableSettlementDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `purchaseInvoiceNum` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `settlementTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`payableSettlementNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_paymentnotification definition

CREATE TABLE `tr_paymentnotification` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `salesPaymentGatewayNum` varchar(50) NOT NULL,
  `posExternalPaymentID` varchar(10) DEFAULT NULL,
  `paymentTransactionID` varchar(100) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `status` varchar(50) NOT NULL,
  `callbackData` text NOT NULL,
  `callbackDate` datetime DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`logID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_pettycashfulfillmentdetail definition

CREATE TABLE `tr_pettycashfulfillmentdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pettyFulfillmentNum` varchar(20) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) DEFAULT NULL,
  `otherCostTotal` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_pettycashfulfillmenthead definition

CREATE TABLE `tr_pettycashfulfillmenthead` (
  `pettyFulfillmentNum` varchar(20) NOT NULL,
  `pettyFulfillmentDate` date NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pettyFulfillmentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_pettycashrequest definition

CREATE TABLE `tr_pettycashrequest` (
  `pettyCashRequestNum` varchar(20) NOT NULL,
  `pettyCashRequestDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pettyCashRequestNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_pettycashrequestdetail definition

CREATE TABLE `tr_pettycashrequestdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pettyCashRequestNum` varchar(20) NOT NULL,
  `journalDetailID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_possettlementdetail definition

CREATE TABLE `tr_possettlementdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `posSettlementNum` varchar(20) NOT NULL,
  `shiftID` int(11) DEFAULT NULL,
  `paymentMethodID` int(11) DEFAULT NULL,
  `typeID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `drAmount` decimal(20,4) DEFAULT NULL,
  `crAmount` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_possettlementdetail_posSettlementNum` (`posSettlementNum`),
  KEY `idx_tr_possettlementdetail_shiftID` (`shiftID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_possettlementhead definition

CREATE TABLE `tr_possettlementhead` (
  `posSettlementNum` varchar(20) NOT NULL,
  `posSettlementDate` datetime DEFAULT NULL,
  `shiftID` int(11) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `paymentTotal` decimal(20,4) DEFAULT NULL,
  `mergeIncome` tinyint(1) DEFAULT '0',
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) NOT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`posSettlementNum`),
  KEY `idx_tr_possettlementhead_shiftID` (`shiftID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_processexternallog definition

CREATE TABLE `tr_processexternallog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `processName` varchar(50) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `branchCode` varchar(20) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  `attemp` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_processqueue definition

CREATE TABLE `tr_processqueue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `consoleCommand` text NOT NULL,
  `createdDate` datetime NOT NULL,
  `attempt` int(11) NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `finishDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62479 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionorderdetail definition

CREATE TABLE `tr_productionorderdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productionOrderNum` varchar(20) NOT NULL,
  `bomID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `productionOrderQty` decimal(20,4) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `flagFinished` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productionorderdetail_productionOrderNum` (`productionOrderNum`),
  KEY `idx_tr_productionorderdetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionorderhead definition

CREATE TABLE `tr_productionorderhead` (
  `productionOrderNum` varchar(20) NOT NULL,
  `productionOrderDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `bomTypeID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productionOrderNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionordermaterial definition

CREATE TABLE `tr_productionordermaterial` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productionOrderNum` varchar(20) NOT NULL,
  `productionOrderDetailID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `bomQty` decimal(20,4) NOT NULL,
  `totalQty` decimal(20,4) NOT NULL,
  `printGroup` varchar(50) NOT NULL,
  `weightFactor` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productionordermaterial_productionOrderNum` (`productionOrderNum`),
  KEY `idx_tr_productionordermaterial_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionresultbomcost definition

CREATE TABLE `tr_productionresultbomcost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productionResultNum` varchar(20) NOT NULL,
  `costDescription` varchar(50) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `costTotal` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productionresultbomcost_productionResultNum` (`productionResultNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionresultdetail definition

CREATE TABLE `tr_productionresultdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productionResultNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  `expiredDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productionresultdetail_productionResultNum` (`productionResultNum`),
  KEY `idx_tr_productionresultdetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionresulthead definition

CREATE TABLE `tr_productionresulthead` (
  `productionResultNum` varchar(20) NOT NULL,
  `productionResultDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `productionOrderDetailID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productionResultNum`),
  KEY `idx_tr_productionresulthead_productionOrderDetailID` (`productionOrderDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionresultmaterial definition

CREATE TABLE `tr_productionresultmaterial` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productionResultNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productionresultmaterial_productionResultNum` (`productionResultNum`),
  KEY `idx_tr_productionresultmaterial_productDetailID` (`productDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionreturndetail definition

CREATE TABLE `tr_productionreturndetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productionReturnNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productionreturndetail_productionReturnNum` (`productionReturnNum`),
  KEY `idx_tr_productionreturndetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productionreturnhead definition

CREATE TABLE `tr_productionreturnhead` (
  `productionReturnNum` varchar(20) NOT NULL,
  `productionReturnDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `productionOrderNum` varchar(20) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productionReturnNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalesdetail definition

CREATE TABLE `tr_productsalesdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `pricelistPrice` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `discountPercent` decimal(20,4) DEFAULT NULL,
  `vat` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `deviationVal` decimal(20,4) NOT NULL,
  `fullDelivery` bit(1) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productsalesdetail_productDetailID` (`productDetailID`),
  KEY `idx_tr_productsalesdetail_productSalesNum` (`productSalesNum`)
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsaleshead definition

CREATE TABLE `tr_productsaleshead` (
  `productSalesNum` varchar(20) NOT NULL,
  `productSalesDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `productSalesTypeID` int(11) DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerBranchID` int(11) DEFAULT NULL,
  `customerAddress` varchar(200) DEFAULT NULL,
  `linkPurchaseNum` varchar(20) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `productSalesTotal` decimal(20,4) NOT NULL,
  `salesRepID` int(11) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `printedBy` varchar(100) DEFAULT NULL,
  `printedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productSalesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalesinvoicecost definition

CREATE TABLE `tr_productsalesinvoicecost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesInvoiceNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productsalesinvoicecost_productSalesInvoiceNum` (`productSalesInvoiceNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalesinvoicedetail definition

CREATE TABLE `tr_productsalesinvoicedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesInvoiceNum` varchar(20) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `deliveryQty` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `productSalesPrice` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `productSalesDiscount` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_productSalesInvoiceNum_tr_productsalesinvoicedetail` (`productSalesInvoiceNum`),
  KEY `idx_productDetailID_tr_productsalesinvoicedetail` (`productDetailID`),
  KEY `idx_refNum_tr_productsalesinvoicedetail` (`refNum`)
) ENGINE=InnoDB AUTO_INCREMENT=962 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalesinvoicehead definition

CREATE TABLE `tr_productsalesinvoicehead` (
  `productSalesInvoiceNum` varchar(20) NOT NULL,
  `productSalesInvoiceDate` date NOT NULL,
  `dueDay` int(11) NOT NULL,
  `productSalesInvoiceDueDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerBranchID` int(11) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `vatInvoiceNum` varchar(50) DEFAULT NULL,
  `linkPurchaseInvoiceNum` varchar(20) DEFAULT NULL,
  `linkGoodsReceiptNum` varchar(20) DEFAULT NULL,
  `costTotal` decimal(20,4) NOT NULL,
  `referenceTotal` decimal(20,4) NOT NULL,
  `invoiceTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `footNote` varchar(1000) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productSalesInvoiceNum`),
  KEY `idx_branchID_tr_productsalesinvoicehead` (`branchID`),
  KEY `idx_customerID_tr_productsalesinvoicehead` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalespaymentaccount definition

CREATE TABLE `tr_productsalespaymentaccount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesPaymentNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productsalespaymentaccount_productSalesPaymentNum` (`productSalesPaymentNum`)
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalespaymentadvance definition

CREATE TABLE `tr_productsalespaymentadvance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesPaymentNum` varchar(20) NOT NULL,
  `customerAdvancePaymentNum` varchar(20) NOT NULL,
  `advanceTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_productSalesPaymentNum_tr_productsalespaymentadvance` (`productSalesPaymentNum`),
  KEY `idx_customerAdvancePaymentNum_tr_productsalespaymentadvance` (`customerAdvancePaymentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalespaymentcost definition

CREATE TABLE `tr_productsalespaymentcost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesPaymentNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `paymentCostAmount` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_productsalespaymentcost_productSalesPaymentNum` (`productSalesPaymentNum`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalespaymentdetail definition

CREATE TABLE `tr_productsalespaymentdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesPaymentNum` varchar(20) NOT NULL,
  `productSalesInvoiceNum` varchar(20) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) DEFAULT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `paymentAfterTax` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_productSalesPaymentNum_tr_productsalespaymentdetail` (`productSalesPaymentNum`),
  KEY `idx_productSalesInvoiceNum_tr_productsalespaymentdetail` (`productSalesInvoiceNum`),
  KEY `idx_tr_productsalespaymentdetail_productSalesPaymentNum` (`productSalesPaymentNum`)
) ENGINE=InnoDB AUTO_INCREMENT=1493 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalespaymenthead definition

CREATE TABLE `tr_productsalespaymenthead` (
  `productSalesPaymentNum` varchar(20) NOT NULL,
  `productSalesPaymentDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerBranchID` int(11) DEFAULT NULL,
  `bankName` varchar(50) DEFAULT NULL,
  `bankAccountName` varchar(100) DEFAULT NULL,
  `bankAccountNumber` varchar(50) DEFAULT NULL,
  `linkReleasePaymentNum` varchar(20) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `invoiceTotal` decimal(20,4) NOT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `advanceTotal` decimal(20,4) NOT NULL,
  `roundingTotal` decimal(20,4) DEFAULT '0.0000',
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productSalesPaymentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalesreturndetail definition

CREATE TABLE `tr_productsalesreturndetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `productSalesReturnNum` varchar(20) NOT NULL,
  `productSalesInvoiceNum` varchar(20) NOT NULL,
  `goodsDeliveryNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `otherTax` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `fullReceipt` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_productsalesreturnhead definition

CREATE TABLE `tr_productsalesreturnhead` (
  `productSalesReturnNum` varchar(20) NOT NULL,
  `productSalesReturnDate` date NOT NULL,
  `customerID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `priceTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `otherTaxTotal` decimal(20,4) NOT NULL,
  `returnTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`productSalesReturnNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasedetail definition

CREATE TABLE `tr_purchasedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `requestQty` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `convertionQty` decimal(20,4) NOT NULL,
  `pricelistPrice` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `discountPercent` decimal(20,4) DEFAULT NULL,
  `vat` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `deviationVal` decimal(20,4) NOT NULL,
  `fullReceipt` bit(1) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_purchasedetail_productDetailID` (`productDetailID`),
  KEY `idx_tr_purchasedetail_purchaseNum` (`purchaseNum`)
) ENGINE=InnoDB AUTO_INCREMENT=348220 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasehead definition

CREATE TABLE `tr_purchasehead` (
  `purchaseNum` varchar(20) NOT NULL,
  `purchaseDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `requestRequiredDateTo` date DEFAULT NULL,
  `purchaseTypeID` int(11) DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `linkProductSalesNum` varchar(20) DEFAULT NULL,
  `linkPurchaseNumEsbGoods` varchar(50) DEFAULT NULL,
  `supplierBranchID` int(11) DEFAULT NULL,
  `supplierBranchName` varchar(50) DEFAULT NULL,
  `dueDay` int(11) DEFAULT NULL,
  `costCenterID` int(11) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `flagImportDoc` tinyint(1) DEFAULT NULL,
  `purchaseTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `footNote` varchar(1000) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  `printedBy` varchar(100) DEFAULT NULL,
  `printedDate` datetime DEFAULT NULL,
  `emailedBy` varchar(100) DEFAULT NULL,
  `emailedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`purchaseNum`),
  KEY `idx_purchase_supplierID` (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchaseinvoicecost definition

CREATE TABLE `tr_purchaseinvoicecost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseInvoiceNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_purchaseinvoicecost_purchaseInvoiceNum` (`purchaseInvoiceNum`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchaseinvoicedetail definition

CREATE TABLE `tr_purchaseinvoicedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseInvoiceNum` varchar(20) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qtyGoods` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `poPrice` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `poDiscount` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `discountPercent` decimal(20,4) DEFAULT NULL,
  `vat` decimal(20,4) NOT NULL,
  `vatValue` decimal(20,4) DEFAULT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_purchaseinvoicedetail_purchaseinvoicenum` (`purchaseInvoiceNum`),
  KEY `idx_purchaseinvoicedetail_refnum` (`refNum`),
  KEY `idx_tr_purchaseinvoicedetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=323486 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchaseinvoicehead definition

CREATE TABLE `tr_purchaseinvoicehead` (
  `purchaseInvoiceNum` varchar(20) NOT NULL,
  `purchaseInvoiceDate` date NOT NULL,
  `dueDay` int(11) NOT NULL,
  `purchaseInvoiceDueDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `supplierInvoiceNum` varchar(50) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `vatInvoiceNum` varchar(50) DEFAULT NULL,
  `linkProductSalesInvoiceNum` varchar(20) DEFAULT NULL,
  `linkInvoiceNumEsbGoods` varchar(50) DEFAULT NULL,
  `costTotal` decimal(20,4) NOT NULL,
  `referenceTotal` decimal(20,4) NOT NULL,
  `invoiceTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`purchaseInvoiceNum`),
  KEY `idx_purchaseinvoicehead_currencyid` (`currencyID`),
  KEY `idx_purchaseinvoicehead_supplierid` (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasepaymentaccount definition

CREATE TABLE `tr_purchasepaymentaccount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchasePaymentNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `otherCostTotal` decimal(20,4) DEFAULT NULL,
  `exportCsvCounter` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `idx_purchasepaymentaccount_purchasepaymentnum` (`purchasePaymentNum`)
) ENGINE=InnoDB AUTO_INCREMENT=17521 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasepaymentadvance definition

CREATE TABLE `tr_purchasepaymentadvance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchasePaymentNum` varchar(20) NOT NULL,
  `advancePaymentNum` varchar(20) NOT NULL,
  `advanceTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_purchasepaymentadvance_purchasePaymentNum` (`purchasePaymentNum`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasepaymentcost definition

CREATE TABLE `tr_purchasepaymentcost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchasePaymentNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `paymentCostAmount` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_purchasepaymentcost_purchasePaymentNum` (`purchasePaymentNum`)
) ENGINE=InnoDB AUTO_INCREMENT=6244 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasepaymentdetail definition

CREATE TABLE `tr_purchasepaymentdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchasePaymentNum` varchar(20) NOT NULL,
  `purchaseInvoiceNum` varchar(20) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) DEFAULT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_purchasepaymentdetail_purchasepaymentnum` (`purchasePaymentNum`),
  KEY `idx_purchasepaymentdetail_purchaseinvoicenum` (`purchaseInvoiceNum`)
) ENGINE=InnoDB AUTO_INCREMENT=139978 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasepaymenthead definition

CREATE TABLE `tr_purchasepaymenthead` (
  `purchasePaymentNum` varchar(20) NOT NULL,
  `purchasePaymentDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `bankName` varchar(50) NOT NULL,
  `bankAccountNumber` varchar(500) NOT NULL,
  `bankAccountName` varchar(100) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `invoiceTotal` decimal(20,4) NOT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `advanceTotal` decimal(20,4) NOT NULL,
  `roundingTotal` decimal(20,4) DEFAULT '0.0000',
  `additionalInfo` varchar(1000) NOT NULL,
  `flagAdvance` int(11) NOT NULL DEFAULT '0',
  `statusID` tinyint(2) NOT NULL,
  `exportCsvCounter` tinyint(1) DEFAULT '0',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`purchasePaymentNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchaserequestdetail definition

CREATE TABLE `tr_purchaserequestdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseRequestNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `convertionQty` decimal(20,4) NOT NULL,
  `requestProcessID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_purchaserequestdetail_purchaseRequestNum` (`purchaseRequestNum`),
  KEY `idx_tr_purchaserequestdetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=458656 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchaserequesthead definition

CREATE TABLE `tr_purchaserequesthead` (
  `purchaseRequestNum` varchar(20) NOT NULL,
  `purchaseRequestDate` date NOT NULL,
  `requiredDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `requestTemplateID` int(11) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`purchaseRequestNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasereturndetail definition

CREATE TABLE `tr_purchasereturndetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseReturnNum` varchar(20) NOT NULL,
  `purchaseInvoiceNum` varchar(20) NOT NULL,
  `refNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `otherTax` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `fullDelivery` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_purchasereturnhead definition

CREATE TABLE `tr_purchasereturnhead` (
  `purchaseReturnNum` varchar(20) NOT NULL,
  `purchaseReturnDate` date NOT NULL,
  `supplierID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `priceTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `otherTaxTotal` decimal(20,4) NOT NULL,
  `returnTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`purchaseReturnNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_questionanswer definition

CREATE TABLE `tr_questionanswer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) NOT NULL,
  `salesNum` varchar(20) DEFAULT NULL,
  `orderID` varchar(20) DEFAULT NULL,
  `transactionModeID` int(11) DEFAULT NULL,
  `questionID` int(11) NOT NULL,
  `answerText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_questionanswer_salesNum` (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_receiptdetail definition

CREATE TABLE `tr_receiptdetail` (
  `receiptDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `receiptNum` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `costCenterID` int(11) DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`receiptDetailID`),
  KEY `receiptNum_INDEX` (`receiptNum`),
  KEY `branchID_INDEX` (`branchID`),
  KEY `coaNo_INDEX` (`coaNo`),
  KEY `costCenterID_INDEX` (`costCenterID`)
) ENGINE=InnoDB AUTO_INCREMENT=15647 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_receipthead definition

CREATE TABLE `tr_receipthead` (
  `receiptNum` varchar(50) NOT NULL,
  `receiptDate` date NOT NULL,
  `receiptDueDate` date DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `creditTerm` int(11) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `receiptCoa` varchar(20) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) DEFAULT NULL,
  `authorizationNotes` varchar(200) DEFAULT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`receiptNum`),
  KEY `branchID_INDEX` (`branchID`),
  KEY `paymentID_INDEX` (`paymentID`),
  KEY `customerID_INDEX` (`customerID`),
  KEY `receiptCoa_INDEX` (`receiptCoa`),
  KEY `reference_INDEX` (`reference`),
  KEY `receiptDate_INDEX` (`receiptDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Transaction Receipt Table';


-- fnb_bmp.tr_receivablesettlement definition

CREATE TABLE `tr_receivablesettlement` (
  `receivableSettlementNum` varchar(20) NOT NULL,
  `receivableSettlementDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `productSalesInvoiceNum` varchar(20) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `settlementTotal` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`receivableSettlementNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_releasepayment definition

CREATE TABLE `tr_releasepayment` (
  `releasePaymentNum` varchar(20) NOT NULL,
  `transType` varchar(50) NOT NULL,
  `refNum` varchar(45) NOT NULL,
  `linkProductSalesPaymentNum` varchar(20) DEFAULT NULL,
  `linkPaymentNumEsbGoods` varchar(50) DEFAULT NULL,
  `releasePaymentExternalNum` varchar(20) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `releasedBy` varchar(100) NOT NULL,
  `releasedDate` datetime NOT NULL,
  PRIMARY KEY (`releasePaymentNum`),
  KEY `idx_releasepayment_refNum` (`refNum`),
  KEY `idx_releasepayment_releasedDate` (`releasedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_releasepaymentbatch definition

CREATE TABLE `tr_releasepaymentbatch` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `batchCode` varchar(45) NOT NULL,
  `transType` varchar(50) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `refNum` varchar(45) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `exportedBy` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_releasepaymentexternaldetail definition

CREATE TABLE `tr_releasepaymentexternaldetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `releasePaymentExternalNum` varchar(20) DEFAULT NULL,
  `transType` varchar(50) DEFAULT NULL,
  `refNum` varchar(20) DEFAULT NULL,
  `paymentTotal` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_releasepaymentexternalhead definition

CREATE TABLE `tr_releasepaymentexternalhead` (
  `releasePaymentExternalNum` varchar(20) NOT NULL,
  `externalTransactionNum` varchar(50) DEFAULT NULL,
  `paymentCoaNo` varchar(20) DEFAULT NULL,
  `bankTemplateID` int(11) DEFAULT NULL,
  `externalBankCode` varchar(20) DEFAULT NULL,
  `recipientBankAccountNumber` varchar(255) DEFAULT NULL,
  `recipientBankAccountName` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `paymentTotal` decimal(20,4) DEFAULT NULL,
  `notes` text,
  `status` text,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `lastUpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`releasePaymentExternalNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_requestcard definition

CREATE TABLE `tr_requestcard` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `requiredDate` date NOT NULL,
  `productID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_requestcard_branchID` (`branchID`),
  KEY `idx_tr_requestcard_productID` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=436715 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salescontactinfo definition

CREATE TABLE `tr_salescontactinfo` (
  `salesContactInfoID` int(11) NOT NULL AUTO_INCREMENT,
  `salesNum` varchar(20) NOT NULL,
  `customerPhoneNum` varchar(20) NOT NULL,
  PRIMARY KEY (`salesContactInfoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_salesdepositwithdrawal definition

CREATE TABLE `tr_salesdepositwithdrawal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(20) NOT NULL,
  `memberDepositNum` varchar(20) NOT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_salesdepositwithdrawal_salesNum` (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesdetail definition

CREATE TABLE `tr_salesdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `salesNum` varchar(50) NOT NULL,
  `salesMenuDetailID` int(11) DEFAULT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_salesdetail_salesMenuDetailID` (`salesMenuDetailID`),
  KEY `idx_tr_salesdetail_productDetailID` (`productDetailID`),
  KEY `tr_salesdetail_salesNum` (`salesNum`)
) ENGINE=InnoDB AUTO_INCREMENT=154912929 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesemail definition

CREATE TABLE `tr_salesemail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `salesNum` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesexternalintegration definition

CREATE TABLE `tr_salesexternalintegration` (
  `salesNum` varchar(20) NOT NULL,
  `salesDate` date DEFAULT NULL,
  `flagVoid` int(11) NOT NULL,
  `externalID` varchar(100) DEFAULT NULL,
  `externalName` varchar(100) NOT NULL,
  `branchID` int(11) DEFAULT NULL,
  `lastSyncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesNum`),
  KEY `idx_salesDate_tr_salesexternalintegration` (`salesNum`),
  KEY `idx_branchID_tr_salesexternalintegration` (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_saleshead definition

CREATE TABLE `tr_saleshead` (
  `salesNum` varchar(20) NOT NULL,
  `billNum` varchar(20) DEFAULT NULL,
  `bookNum` varchar(20) DEFAULT NULL,
  `queueNum` varchar(10) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `salesDateIn` datetime NOT NULL,
  `salesDateOut` datetime DEFAULT NULL,
  `branchID` int(11) NOT NULL,
  `tenantID` int(11) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `employeeCode` varchar(50) DEFAULT NULL,
  `employeeName` varchar(100) DEFAULT NULL,
  `employeeType` varchar(50) DEFAULT NULL,
  `memberCode` varchar(20) DEFAULT NULL,
  `tableID` int(11) NOT NULL,
  `visitPurposeID` int(11) NOT NULL,
  `visitorTypeID` int(11) DEFAULT NULL,
  `questionID` int(11) DEFAULT NULL,
  `paxTotal` int(11) NOT NULL,
  `subtotal` decimal(20,4) NOT NULL,
  `discountTotal` decimal(20,4) NOT NULL,
  `menuDiscountTotal` decimal(20,4) NOT NULL,
  `promotionDiscount` decimal(20,4) NOT NULL,
  `voucherDiscountTotal` decimal(20,4) DEFAULT NULL,
  `otherTaxTotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `otherVatTotal` decimal(20,4) DEFAULT '0.0000',
  `deliveryCost` decimal(20,4) DEFAULT NULL,
  `orderFee` decimal(20,4) DEFAULT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  `voucherTotal` decimal(20,4) NOT NULL,
  `roundingTotal` decimal(20,4) DEFAULT NULL,
  `paymentTotal` decimal(20,4) NOT NULL,
  `billingPrintCount` int(11) NOT NULL,
  `paymentPrintCount` int(11) NOT NULL,
  `additionalInfo` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `promotionID` int(11) DEFAULT NULL,
  `promotionVoucherCode` varchar(50) DEFAULT NULL,
  `flagInclusive` int(1) DEFAULT NULL,
  `transactionModeID` int(11) DEFAULT NULL,
  `externalMembershipTypeID` varchar(20) DEFAULT NULL,
  `flagExternalAPI` int(11) DEFAULT NULL,
  `flagExternalMemberID` varchar(50) DEFAULT NULL,
  `flagExternalMemberPhone` varchar(20) DEFAULT NULL,
  `flagExternalCardID` varchar(50) DEFAULT NULL,
  `externalMemberName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `externalTransID` varchar(50) DEFAULT NULL,
  `externalCancelTransID` varchar(50) DEFAULT NULL,
  `terminalID` varchar(50) DEFAULT NULL,
  `printEsoFsQr` int(11) DEFAULT '0',
  `statusID` tinyint(2) NOT NULL,
  `flagManualUpdate` tinyint(1) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesNum`),
  KEY `tr_saleshead_salesDate` (`salesDate`),
  KEY `idx_tr_saleshead_statusid_branchid_salesdate` (`statusID`,`branchID`,`salesDate`),
  KEY `idx_billNum_tr_saleshead` (`billNum`),
  KEY `idx_tr_saleshead_memberID` (`memberID`),
  KEY `idx_tr_saleshead_memberCode` (`memberCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesinfo definition

CREATE TABLE `tr_salesinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `salesNum` varchar(20) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_salesNum_tr_salesinfo` (`salesNum`)
) ENGINE=InnoDB AUTO_INCREMENT=44402 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_saleslink definition

CREATE TABLE `tr_saleslink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `linkSalesNum` varchar(50) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_saleslink_salesNum` (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesmenu definition

CREATE TABLE `tr_salesmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `menuRefID` int(11) NOT NULL,
  `menuGroupID` int(11) NOT NULL,
  `batchID` int(11) NOT NULL,
  `menuID` int(11) NOT NULL,
  `customMenuName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` decimal(20,4) NOT NULL,
  `originalPrice` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `inclusivePrice` decimal(20,4) DEFAULT NULL,
  `discount` decimal(20,4) NOT NULL,
  `discountValue` decimal(20,4) DEFAULT NULL,
  `inclusiveDiscountValue` decimal(20,4) DEFAULT NULL,
  `otherTax` decimal(20,4) NOT NULL,
  `otherTaxValue` decimal(20,4) DEFAULT NULL,
  `vat` decimal(20,4) NOT NULL,
  `vatValue` decimal(20,4) DEFAULT NULL,
  `otherVat` decimal(20,4) DEFAULT '0.0000',
  `otherVatValue` decimal(20,4) DEFAULT '0.0000',
  `otherTaxOnVat` tinyint(1) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `notes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `promotionDetailID` int(11) NOT NULL,
  `menuPromotionID` int(11) NOT NULL,
  `promotionVoucherCode` varchar(50) DEFAULT NULL,
  `cancelNotes` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `salesType` varchar(50) DEFAULT NULL,
  `flagPending` tinyint(1) DEFAULT '1',
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_salesmenu_salesNum` (`salesNum`),
  KEY `tr_salesmenu_menuID` (`menuID`),
  KEY `idx_tr_salesmenu_salesnu_qty_price_discount` (`salesNum`,`qty`,`price`,`discount`),
  KEY `idx_menuRefID_tr_salesmenu` (`menuRefID`),
  KEY `idx_localID_tr_salesmenu` (`localID`),
  KEY `idx_tr_salesmenu_menuGroupID` (`menuGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=17973941 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesmenucompletion definition

CREATE TABLE `tr_salesmenucompletion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(20) NOT NULL,
  `salesMenuID` int(11) NOT NULL,
  `qty` decimal(20,4) DEFAULT NULL,
  `completedDate` datetime DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_salesmenucompletion_salesNum` (`salesNum`),
  KEY `idx_tr_salesmenucompletion_salesMenuID` (`salesMenuID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesmenuextra definition

CREATE TABLE `tr_salesmenuextra` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(20) NOT NULL,
  `menuDetailID` int(11) NOT NULL,
  `menuExtraID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `inclusivePrice` decimal(20,4) DEFAULT NULL,
  `discount` decimal(20,4) NOT NULL,
  `discountValue` decimal(20,4) DEFAULT NULL,
  `inclusiveDiscountValue` decimal(20,4) DEFAULT NULL,
  `otherTax` decimal(20,4) NOT NULL,
  `otherTaxValue` decimal(20,4) DEFAULT NULL,
  `vat` decimal(20,4) NOT NULL,
  `vatValue` decimal(20,4) DEFAULT NULL,
  `otherVat` decimal(20,4) DEFAULT '0.0000',
  `otherVatValue` decimal(20,4) DEFAULT '0.0000',
  `otherTaxOnVat` tinyint(1) NOT NULL,
  `total` decimal(20,4) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_salesmenuextra_salesNum` (`salesNum`),
  KEY `idx_tr_salesmenuextra_menuExtraID` (`menuExtraID`),
  KEY `idx_tr_salesmenuextra_menuDetailID` (`menuDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=2733516 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesmenurelated definition

CREATE TABLE `tr_salesmenurelated` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `salesNum` varchar(50) NOT NULL,
  `salesMenuID` int(11) NOT NULL,
  `mainMenuID` int(11) DEFAULT NULL,
  `mainMenuQty` decimal(20,4) DEFAULT '0.0000',
  `relatedMenuID` int(11) NOT NULL,
  `relatedMenuQty` decimal(20,4) DEFAULT '0.0000',
  PRIMARY KEY (`ID`),
  KEY `salesNum_INDEX` (`salesNum`),
  KEY `salesMenuID_INDEX` (`salesMenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesmergetable definition

CREATE TABLE `tr_salesmergetable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `tableID` int(11) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_salesmergetable_salesNum` (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesordercampaign definition

CREATE TABLE `tr_salesordercampaign` (
  `salesNum` varchar(20) NOT NULL,
  `selfOrderCampaignID` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesNum`,`selfOrderCampaignID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salespayment definition

CREATE TABLE `tr_salespayment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `voucherCode` varchar(50) NOT NULL,
  `voucherCategoryID` int(11) DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cardNumber` varchar(20) NOT NULL,
  `bankName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `selfOrderID` varchar(50) DEFAULT NULL,
  `verificationCode` varchar(100) NOT NULL,
  `traceNumber` varchar(50) DEFAULT NULL,
  `canceledVerificationCode` varchar(100) DEFAULT NULL,
  `flagExternalVoucherAPI` int(1) DEFAULT NULL,
  `externalVoucherCode` varchar(50) DEFAULT NULL,
  `externalTransactionId` varchar(50) DEFAULT NULL,
  `externalBatchNumber` varchar(50) DEFAULT NULL,
  `externalCanceledTransactionId` varchar(50) DEFAULT NULL,
  `externalCanceledBatchNumber` varchar(50) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `previousDepositBalance` decimal(20,4) DEFAULT NULL,
  `merchantDiscountRate` decimal(20,4) DEFAULT '0.0000',
  `paymentAmount` decimal(20,4) NOT NULL,
  `fullPaymentAmount` decimal(20,4) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  `edcTerminalID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_salespayment_salesNum` (`salesNum`),
  KEY `tr_salespayment_paymentMethodID` (`paymentMethodID`)
) ENGINE=InnoDB AUTO_INCREMENT=4901907 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salespaymentgateway definition

CREATE TABLE `tr_salespaymentgateway` (
  `salesPaymentGatewayNum` varchar(50) NOT NULL,
  `salesNum` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  `transactionDate` datetime NOT NULL,
  `paymentAmount` decimal(20,4) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `paymentMethod` varchar(20) NOT NULL,
  `paymentTransactionStatus` varchar(20) NOT NULL,
  `paymentTransactionID` varchar(50) DEFAULT NULL,
  `paymentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesPaymentGatewayNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesrewardhead definition

CREATE TABLE `tr_salesrewardhead` (
  `salesNum` varchar(50) NOT NULL,
  `rewardType` varchar(50) NOT NULL,
  PRIMARY KEY (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_salesrewardmenu definition

CREATE TABLE `tr_salesrewardmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) NOT NULL,
  `salesNum` varchar(50) NOT NULL,
  `rewardType` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_salesrewardmenu_salesNum` (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- fnb_bmp.tr_salesshiftpaymentdenom definition

CREATE TABLE `tr_salesshiftpaymentdenom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) NOT NULL,
  `salesShiftPaymentHeadID` int(11) NOT NULL,
  `denomAmount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `denomQty` int(11) NOT NULL DEFAULT '0',
  `denomTotal` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesshiftpaymentdetail definition

CREATE TABLE `tr_salesshiftpaymentdetail` (
  `salesShiftDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesShiftPaymentHeadID` int(20) NOT NULL,
  `paymentMethodID` int(20) NOT NULL,
  `actualPaymentAmount` decimal(20,4) DEFAULT NULL,
  `expectedPaymentAmount` decimal(20,4) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesShiftDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesshiftpaymenthead definition

CREATE TABLE `tr_salesshiftpaymenthead` (
  `salesShiftPaymentHeadID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `shiftID` int(20) DEFAULT NULL,
  `shiftLogDetailID` int(20) NOT NULL,
  `branchID` int(20) NOT NULL,
  `actualTotalPaymentNonCash` decimal(20,4) DEFAULT NULL,
  `expectedTotalPaymentNonCash` decimal(20,4) DEFAULT NULL,
  `actualTotalPaymentCash` decimal(20,4) DEFAULT NULL,
  `expectedTotalPaymentCash` decimal(20,4) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createdBy` varchar(100) DEFAULT NULL,
  `submittedBy` varchar(100) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`salesShiftPaymentHeadID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesvoucher definition

CREATE TABLE `tr_salesvoucher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `voucherID` varchar(20) NOT NULL,
  `voucherSalesPrice` decimal(20,4) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tr_salesvoucher_salesNum` (`salesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesvoucheronline definition

CREATE TABLE `tr_salesvoucheronline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `voucherID` varchar(20) NOT NULL,
  `voucherAmount` decimal(20,4) NOT NULL,
  `voucherSalesPrice` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesvouchertemplate definition

CREATE TABLE `tr_salesvouchertemplate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `refNum` varchar(20) NOT NULL,
  `transType` varchar(20) NOT NULL,
  `voucherID` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_salesvoucherusage definition

CREATE TABLE `tr_salesvoucherusage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localID` int(11) DEFAULT NULL,
  `salesNum` varchar(50) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `voucherCode` varchar(50) NOT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `coaNo` varchar(20) NOT NULL,
  `voucherAmount` decimal(20,4) NOT NULL,
  `fullVoucherAmount` decimal(20,4) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_salesvoucherusage_salesNum` (`salesNum`)
) ENGINE=InnoDB AUTO_INCREMENT=2409 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_shiftlog definition

CREATE TABLE `tr_shiftlog` (
  `shiftID` int(11) NOT NULL AUTO_INCREMENT,
  `branchID` int(11) NOT NULL,
  `shiftInTime` datetime NOT NULL,
  `shiftOutTime` datetime DEFAULT NULL,
  `shiftInTotal` decimal(20,4) NOT NULL,
  `systemCashReceivedTotal` decimal(20,4) DEFAULT NULL,
  `shiftOutTotal` decimal(20,4) DEFAULT NULL,
  `shiftInUsername` varchar(50) NOT NULL,
  `shiftOutUsername` varchar(50) DEFAULT NULL,
  `terminalID` varchar(50) DEFAULT NULL,
  `shiftOutNotes` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`shiftID`),
  UNIQUE KEY `idx_uc_tr_shiftlog` (`branchID`,`shiftInTime`,`shiftOutTime`),
  KEY `idx_tr_shiftlog_branchID` (`branchID`)
) ENGINE=InnoDB AUTO_INCREMENT=50072 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_shiftlogdetail definition

CREATE TABLE `tr_shiftlogdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `localeID` int(11) DEFAULT '0',
  `shiftID` int(11) NOT NULL,
  `shiftTime` datetime NOT NULL,
  `shiftUsername` varchar(50) NOT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_shiftlogdetail_shiftID` (`shiftID`)
) ENGINE=InnoDB AUTO_INCREMENT=135213 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_shiftlogothercost definition

CREATE TABLE `tr_shiftlogothercost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `shiftID` int(11) DEFAULT NULL,
  `coaNo` varchar(20) DEFAULT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_shiftlogtenant definition

CREATE TABLE `tr_shiftlogtenant` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `shiftID` int(11) NOT NULL,
  `tenantID` int(11) NOT NULL,
  `shiftInTime` datetime NOT NULL,
  `shiftOutTime` datetime DEFAULT NULL,
  `shiftInUsername` varchar(50) NOT NULL,
  `shiftOutUsername` varchar(50) DEFAULT NULL,
  `syncDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_shopeeqrispaymentnotification definition

CREATE TABLE `tr_shopeeqrispaymentnotification` (
  `transaction_sn` varchar(100) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `user_id_hash` varchar(100) NOT NULL,
  `merchant_ext_id` varchar(20) NOT NULL,
  `store_ext_id` varchar(20) NOT NULL,
  `terminal_id` varchar(5) NOT NULL,
  `payment_reference_id` varchar(25) NOT NULL,
  `payment_statusID` int(11) NOT NULL,
  `payment_statusName` varchar(100) NOT NULL,
  `callbackDate` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_signoffdetail definition

CREATE TABLE `tr_signoffdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `signOffNum` varchar(20) NOT NULL,
  `signOffTypeID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(18,2) NOT NULL,
  `hpp` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_signoffhead definition

CREATE TABLE `tr_signoffhead` (
  `signOffNum` varchar(20) NOT NULL,
  `signOffDate` date NOT NULL,
  `productionOrderNum` varchar(20) NOT NULL,
  `branchID` int(11) NOT NULL,
  `additionalInfo` varchar(200) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`signOffNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simplemanufacturingbomcost definition

CREATE TABLE `tr_simplemanufacturingbomcost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `simpleManufacturingNum` varchar(20) NOT NULL,
  `costDescription` varchar(50) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `costTotal` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simplemanufacturinghead definition

CREATE TABLE `tr_simplemanufacturinghead` (
  `simpleManufacturingNum` varchar(20) NOT NULL,
  `simpleManufacturingDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `bomID` int(11) NOT NULL,
  `originLocationID` int(11) NOT NULL,
  `destinationLocationID` int(11) NOT NULL,
  `manufacturingQty` decimal(20,4) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`simpleManufacturingNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simplemanufacturingmaterial definition

CREATE TABLE `tr_simplemanufacturingmaterial` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `simpleManufacturingNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `systemQty` decimal(20,4) DEFAULT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simplemanufacturingresult definition

CREATE TABLE `tr_simplemanufacturingresult` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `simpleManufacturingNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `manufacturingQty` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `hpp` decimal(20,4) DEFAULT NULL,
  `weightFactor` decimal(20,4) DEFAULT NULL,
  `expiredDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simpleproductsalescost definition

CREATE TABLE `tr_simpleproductsalescost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `simpleProductSalesNum` varchar(20) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_simpleproductsalescost_simpleProductSalesNum` (`simpleProductSalesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simpleproductsalesdetail definition

CREATE TABLE `tr_simpleproductsalesdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `simpleProductSalesNum` varchar(50) COLLATE latin1_bin NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `price` decimal(20,4) NOT NULL,
  `discount` decimal(20,4) NOT NULL,
  `vat` decimal(20,4) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `taxRate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_simpleproductsalesdetail_simpleProductSalesNum` (`simpleProductSalesNum`),
  KEY `idx_tr_simpleproductsalesdetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=623 DEFAULT CHARSET=latin1 COLLATE=latin1_bin ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simpleproductsaleshead definition

CREATE TABLE `tr_simpleproductsaleshead` (
  `simpleProductSalesNum` varchar(50) NOT NULL,
  `simpleProductSalesDate` date NOT NULL,
  `productSalesTypeID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `vatInvoiceNum` varchar(50) DEFAULT NULL,
  `coaNo` varchar(20) DEFAULT NULL,
  `paymentID` int(11) NOT NULL,
  `dueDate` int(11) NOT NULL,
  `additionalInfo` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `footNote` text CHARACTER SET utf8mb4,
  `salesRepID` int(11) DEFAULT NULL,
  `costTotal` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `simpleProductSalesTotal` decimal(20,4) NOT NULL,
  `externalSalesNumber` varchar(255) DEFAULT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime NOT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`simpleProductSalesNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simpletransferasset definition

CREATE TABLE `tr_simpletransferasset` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `simpleTransferNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simpletransferdetail definition

CREATE TABLE `tr_simpletransferdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `simpleTransferNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `convertionQty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_simpletransferdetail_simpleTransferNum` (`simpleTransferNum`),
  KEY `idx_simpletransferdetail_productDetailid` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_simpletransferhead definition

CREATE TABLE `tr_simpletransferhead` (
  `simpleTransferNum` varchar(20) NOT NULL,
  `simpleTransferDate` date NOT NULL,
  `originLocationID` int(11) NOT NULL,
  `destinationLocationID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) DEFAULT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`simpleTransferNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_stockopnamedetail definition

CREATE TABLE `tr_stockopnamedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stockOpnameNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `stockQty` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `hpp` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_tr_stockopnamedetail_stockOpnameNum` (`stockOpnameNum`),
  KEY `idx_tr_stockopnamedetail_productDetailID` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=724039 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_stockopnamehead definition

CREATE TABLE `tr_stockopnamehead` (
  `stockOpnameNum` varchar(20) NOT NULL,
  `stockOpnameDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `purposeID` int(11) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(1) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`stockOpnameNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_supplierpayable definition

CREATE TABLE `tr_supplierpayable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `payableDate` date NOT NULL,
  `supplierID` int(11) NOT NULL,
  `purchaseInvoiceNum` varchar(20) NOT NULL,
  `purchasePaymentNum` varchar(20) DEFAULT NULL,
  `currencyID` int(11) NOT NULL,
  `rate` decimal(20,4) NOT NULL,
  `payableTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=259205 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_synclog definition

CREATE TABLE `tr_synclog` (
  `syncLogID` int(11) NOT NULL AUTO_INCREMENT,
  `logTime` datetime NOT NULL,
  `branchID` int(11) DEFAULT NULL,
  `logDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`syncLogID`)
) ENGINE=InnoDB AUTO_INCREMENT=24454150 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_tenantbankstatement definition

CREATE TABLE `tr_tenantbankstatement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tenantReconciliationID` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `coaNo` varchar(20) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `drAmount` decimal(20,4) NOT NULL,
  `crAmount` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_tenantreconciliationdetail definition

CREATE TABLE `tr_tenantreconciliationdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tenantReconciliationID` int(11) NOT NULL,
  `tenantShiftID` int(11) NOT NULL,
  `tenantShiftDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `subtotal` decimal(20,4) NOT NULL,
  `vatTotal` decimal(20,4) NOT NULL,
  `discountTotal` decimal(20,4) NOT NULL,
  `grandTotal` decimal(20,4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_tenantreconciliationhead definition

CREATE TABLE `tr_tenantreconciliationhead` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tenantID` int(11) NOT NULL,
  `tenantReconciliationDate` datetime NOT NULL,
  `statusID` int(11) NOT NULL,
  `additionalInfo` varchar(200) DEFAULT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `editedBy` varchar(100) NOT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_transactionlog definition

CREATE TABLE `tr_transactionlog` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `logTime` datetime DEFAULT NULL,
  `logTypeID` int(11) DEFAULT NULL,
  `logDesc` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `refNum` varchar(50) NOT NULL,
  `beforeValue` mediumtext,
  `afterValue` mediumtext,
  PRIMARY KEY (`logID`),
  KEY `tr_transactionlog_logDesc` (`logDesc`),
  KEY `tr_transactionlog_username` (`username`),
  KEY `tr_transactionlog_refNum` (`refNum`)
) ENGINE=InnoDB AUTO_INCREMENT=1306129 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_transactionlogapi definition

CREATE TABLE `tr_transactionlogapi` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `logTime` datetime DEFAULT NULL,
  `refNum` varchar(50) DEFAULT NULL,
  `logDesc` varchar(200) DEFAULT NULL,
  `salesDate` datetime DEFAULT NULL,
  `endPointUrl` varchar(100) DEFAULT NULL,
  `bodyRequest` mediumtext,
  PRIMARY KEY (`logID`)
) ENGINE=InnoDB AUTO_INCREMENT=120707 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_transferasset definition

CREATE TABLE `tr_transferasset` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transferNum` varchar(20) NOT NULL,
  `assetID` varchar(50) NOT NULL,
  `flagDelivery` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_transferNum_tr_transferasset` (`transferNum`),
  KEY `idx_assetID_tr_transferasset` (`assetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_transferdetail definition

CREATE TABLE `tr_transferdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transferNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `requestQty` decimal(20,4) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `convertionQty` decimal(20,4) NOT NULL,
  `fullDelivery` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_transferdetail_transfernum` (`transferNum`),
  KEY `idx_transferdetail_productDetailid` (`productDetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=167189 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_transferhead definition

CREATE TABLE `tr_transferhead` (
  `transferNum` varchar(20) NOT NULL,
  `transferDate` date NOT NULL,
  `requiredDateFrom` date DEFAULT NULL,
  `requiredDateTo` date DEFAULT NULL,
  `categoryTypeID` int(11) NOT NULL,
  `purchaseRequestNum` varchar(20) DEFAULT NULL,
  `originBranchID` int(11) NOT NULL,
  `destinationBranchID` int(11) NOT NULL,
  `locationID` int(11) DEFAULT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` tinyint(2) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`transferNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_usagemanagementdetail definition

CREATE TABLE `tr_usagemanagementdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `usageManagementNum` varchar(20) NOT NULL,
  `productDetailID` int(11) NOT NULL,
  `qty` decimal(20,4) NOT NULL,
  `wasteQty` decimal(20,4) DEFAULT '0.0000',
  `notes` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_usagemanagementhead definition

CREATE TABLE `tr_usagemanagementhead` (
  `usageManagementNum` varchar(20) NOT NULL,
  `usageManagementDate` date NOT NULL,
  `branchID` int(11) NOT NULL,
  `additionalInfo` varchar(1000) NOT NULL,
  `statusID` int(11) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `createdDate` datetime NOT NULL,
  `editedBy` varchar(100) DEFAULT NULL,
  `editedDate` datetime DEFAULT NULL,
  `authorizedBy` varchar(100) DEFAULT NULL,
  `authorizedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`usageManagementNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_userlog definition

CREATE TABLE `tr_userlog` (
  `logID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `loginTime` datetime NOT NULL,
  `logoutTime` datetime DEFAULT NULL,
  PRIMARY KEY (`logID`),
  KEY `idx_userlog_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=223073 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_xenditdanapaymentnotification definition

CREATE TABLE `tr_xenditdanapaymentnotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callback_authentication_token` varchar(100) NOT NULL,
  `external_id` varchar(100) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `business_id` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `ewallet_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_xenditovopaymentnotification definition

CREATE TABLE `tr_xenditovopaymentnotification` (
  `id` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `business_id` varchar(100) NOT NULL,
  `external_id` varchar(100) NOT NULL,
  `ewallet_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_xenditqrispaymentnotification definition

CREATE TABLE `tr_xenditqrispaymentnotification` (
  `id` varchar(100) NOT NULL,
  `event` varchar(100) NOT NULL,
  `amount` decimal(20,4) NOT NULL,
  `created` datetime NOT NULL,
  `qr_code_id` varchar(100) NOT NULL,
  `qr_code_external_id` varchar(100) NOT NULL,
  `qr_code_qr_string` varchar(500) NOT NULL,
  `qr_code_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `callbackDate` datetime NOT NULL,
  `payment_details_receipt_id` varchar(100) DEFAULT NULL,
  `payment_details_source` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_yukkpaymentnotification definition

CREATE TABLE `tr_yukkpaymentnotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `bill_code` varchar(50) NOT NULL,
  `final_amount` decimal(20,4) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


-- fnb_bmp.tr_yukkqrispaymentnotification definition

CREATE TABLE `tr_yukkqrispaymentnotification` (
  `order_id` varchar(100) NOT NULL,
  `nominal` decimal(20,4) NOT NULL,
  `additional_field` varchar(100) NOT NULL,
  `rrn` varchar(100) DEFAULT NULL,
  `callbackDate` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;