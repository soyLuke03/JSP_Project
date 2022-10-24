create table Categoria (
	id varchar(50),
	name varchar(50),
	description varchar(200),
	
constraint PK_Categoria Primary key (id)
);

create table USERS (
	name varchar(50),
	pass varchar(50),
CONSTRAINT PK_USERS PRIMARY KEY (name)
);

create table items (
	amount int,
	name varchar(80),
	availability boolean,
	price decimal(10,2),	
	entry_date date,
	id varchar(50),
	categoria_id varchar(50),
	
CONSTRAINT PK_ITEM_DATA PRIMARY KEY (id),
constraint FK_item Foreign Key (categoria_id) references Categoria(id)
);

INSERT into Categoria values ('1', 'Cosas', 'Cosas');
INSERT into Categoria values ('2', 'Mas Cosas', 'Mas Cosas');

insert into USERS values ('Luke', 'Luke');
insert into USERS values ('Florian', 'Florian');

insert into items (amount, name, availability, price, entry_date, id, categoria_id) values (1703, 'Old Second Bancorp, Inc.', false, 251108.11, '2007-06-28', 'com.sitemeter.Ventosanzap', '1');
insert into items (amount, name, availability, price, entry_date, id) values (17971, 'Imax Corporation', true, 148061.99, '2018-03-11', 'edu.stanford.Mat Lam Tam');
insert into items (amount, name, availability, price, entry_date, id) values (5524, 'Torchlight Energy Resources, Inc.', false, 87093.58, '2000-12-25', 'gov.fda.Ronstring');
insert into items (amount, name, availability, price, entry_date, id) values (8511, 'NexPoint Residential Trust, Inc.', true, 284941.67, '2007-12-17', 'nl.google.Zoolab');
insert into items (amount, name, availability, price, entry_date, id) values (4067, 'Cabela''s Inc', false, 50538.15, '2007-08-29', 'net.earthlink.Kanlam');
insert into items (amount, name, availability, price, entry_date, id, categoria_id) values (10172, 'Tyler Technologies, Inc.', true, 237259.99, '2005-03-13', 'de.1und1.Bamity', '1');
insert into items (amount, name, availability, price, entry_date, id) values (5863, 'Gold Fields Limited', false, 136787.09, '2021-08-22', 'uk.co.google.Greenlam');
insert into items (amount, name, availability, price, entry_date, id) values (9841, 'Annaly Capital Management Inc', true, 108867.7, '2009-12-31', 'com.elegantthemes.Rank');
insert into items (amount, name, availability, price, entry_date, id) values (14216, 'Neogen Corporation', true, 229032.61, '2011-12-24', 'com.webmd.Sonsing');
insert into items (amount, name, availability, price, entry_date, id, categoria_id) values (1284, 'KBS Fashion Group Limited', true, 124834.16, '2015-01-28', 'au.com.google.Bigtax', '2');
insert into items (amount, name, availability, price, entry_date, id) values (1314, 'Global X Millennials Thematic ETF', true, 211818.36, '2013-10-31', 'uk.co.dailymail.Matsoft');
insert into items (amount, name, availability, price, entry_date, id) values (5154, 'Quorum Health Corporation', false, 39247.06, '2016-07-04', 'com.dedecms.Bigtax');
insert into items (amount, name, availability, price, entry_date, id) values (18033, 'Western Asset/Claymore U.S. Treasury Inflation Prot Secs Fd', true, 196571.06, '2004-03-09', 'edu.psu.Tin');
insert into items (amount, name, availability, price, entry_date, id) values (5123, 'Huaneng Power International, Inc.', false, 113222.12, '2018-03-15', 'com.examiner.Zontrax');
insert into items (amount, name, availability, price, entry_date, id) values (3651, 'Western Gas Equity Partners, LP', true, 52067.46, '2006-11-08', 'com.mediafire.Lotstring');
insert into items (amount, name, availability, price, entry_date, id) values (19900, 'GoDaddy Inc.', true, 103685.79, '2006-02-13', 'com.zdnet.Ronstring');
insert into items (amount, name, availability, price, entry_date, id) values (3416, 'AGNC Investment Corp.', false, 247590.27, '2021-11-30', 'com.godaddy.Keylex');
insert into items (amount, name, availability, price, entry_date, id) values (7054, 'Limelight Networks, Inc.', true, 233551.24, '2010-11-17', 'gov.loc.Konklab');
insert into items (amount, name, availability, price, entry_date, id) values (19868, 'Nuveen Municipal 2021 Target Term Fund', false, 233492.03, '2010-06-28', 'com.addtoany.Stringtough');
insert into items (amount, name, availability, price, entry_date, id) values (17735, 'Koss Corporation', false, 77188.38, '2007-10-13', 'jp.shop-pro.Andalax');
insert into items (amount, name, availability, price, entry_date, id) values (5433, 'Hersha Hospitality Trust', false, 282269.5, '2021-04-11', 'com.amazonaws.Vagram');
insert into items (amount, name, availability, price, entry_date, id) values (12194, 'Legg Mason BW Global Income Opportunities Fund Inc.', false, 35274.38, '2013-01-25', 'jp.co.google.Bitwolf');
insert into items (amount, name, availability, price, entry_date, id) values (2269, 'Schneider National, Inc.', true, 177641.02, '2004-08-18', 'com.ibm.Greenlam');
insert into items (amount, name, availability, price, entry_date, id) values (8348, 'Oak Valley Bancorp (CA)', false, 7220.1, '2001-11-08', 'com.hubpages.Alphazap');
insert into items (amount, name, availability, price, entry_date, id) values (12792, 'Estee Lauder Companies, Inc. (The)', false, 156216.85, '2014-09-18', 'com.multiply.Zathin');
insert into items (amount, name, availability, price, entry_date, id) values (15737, 'Ciena Corporation', false, 233736.7, '2011-05-20', 'edu.msu.Cardify');
insert into items (amount, name, availability, price, entry_date, id) values (8752, 'Severn Bancorp Inc', false, 275222.08, '2011-10-09', 'com.seattletimes.Duobam');
insert into items (amount, name, availability, price, entry_date, id) values (89, 'Blackrock MuniHoldings California Quality Fund,  Inc.', false, 158791.81, '2010-02-08', 'com.cloudflare.Fix San');
insert into items (amount, name, availability, price, entry_date, id) values (17718, 'B. Riley Financial, Inc.', false, 266094.53, '2004-03-01', 'com.merriam-webster.Sonair');
insert into items (amount, name, availability, price, entry_date, id) values (523, 'OneMain Holdings, Inc.', false, 179758.62, '2011-09-02', 'com.newyorker.Bigtax');
insert into items (amount, name, availability, price, entry_date, id) values (16329, 'Chanticleer Holdings, Inc.', false, 32512.91, '2003-04-09', 'edu.nyu.Veribet');
insert into items (amount, name, availability, price, entry_date, id) values (7171, 'Abraxas Petroleum Corporation', true, 43498.43, '2001-11-12', 'com.twitpic.Ventosanzap');
insert into items (amount, name, availability, price, entry_date, id) values (6820, 'Transdigm Group Incorporated', false, 252006.23, '2019-09-15', 'com.time.Sonsing');
insert into items (amount, name, availability, price, entry_date, id) values (7776, 'Ascena Retail Group, Inc.', false, 282988.12, '2018-11-12', 'gov.va.Fix San');
insert into items (amount, name, availability, price, entry_date, id) values (17861, 'Cushing Renaissance Fund (The)', true, 273164.33, '2018-02-20', 'com.tinypic.Lotstring');
insert into items (amount, name, availability, price, entry_date, id) values (1103, 'Principal Real Estate Income Fund', true, 112101.86, '2002-01-16', 'gov.nasa.Bitwolf');
insert into items (amount, name, availability, price, entry_date, id) values (1448, 'Tri Continental Corporation', true, 13980.55, '2021-09-30', 'com.adobe.Tempsoft');
insert into items (amount, name, availability, price, entry_date, id) values (13286, 'Polar Power, Inc.', false, 75517.26, '2019-06-24', 'com.wunderground.Duobam');
insert into items (amount, name, availability, price, entry_date, id) values (16049, 'First Data Corporation', false, 3963.47, '2011-07-02', 'org.altervista.Rank');
insert into items (amount, name, availability, price, entry_date, id) values (4416, 'Pure Storage, Inc. ', true, 233848.17, '2005-02-12', 'com.over-blog.Tresom');
insert into items (amount, name, availability, price, entry_date, id) values (8539, 'SenesTech, Inc.', true, 205612.97, '2022-04-16', 'com.youtube.Overhold');
insert into items (amount, name, availability, price, entry_date, id) values (17743, 'Anadarko Petroleum Corporation', true, 182911.3, '2022-05-14', 'com.ycombinator.Hatity');
insert into items (amount, name, availability, price, entry_date, id) values (8431, 'IBERIABANK Corporation', false, 50871.11, '2012-03-25', 'org.redcross.Alphazap');
insert into items (amount, name, availability, price, entry_date, id) values (15742, 'Floor & Decor Holdings, Inc.', true, 224856.54, '2011-06-05', 'com.wiley.Fixflex');
insert into items (amount, name, availability, price, entry_date, id) values (18148, 'Nevro Corp.', false, 259433.9, '2011-02-03', 'com.shinystat.Cardguard');
insert into items (amount, name, availability, price, entry_date, id) values (12649, 'Ciner Resources LP', false, 274943.78, '2012-03-05', 'com.hubpages.Fixflex');
insert into items (amount, name, availability, price, entry_date, id) values (19076, 'Keane Group, Inc.', false, 185417.71, '2019-04-13', 'com.jigsy.Bamity');
insert into items (amount, name, availability, price, entry_date, id) values (7869, 'Presidio, Inc.', false, 189293.52, '2004-04-21', 'com.adobe.Bitchip');
insert into items (amount, name, availability, price, entry_date, id) values (4168, 'Donaldson Company, Inc.', true, 185504.13, '2022-10-11', 'gov.ca.Toughjoyfax');
insert into items (amount, name, availability, price, entry_date, id) values (1451, 'Saul Centers, Inc.', true, 252696.25, '2021-10-08', 'cn.360.Stim');
insert into items (amount, name, availability, price, entry_date, id) values (11475, 'Socket Mobile, Inc.', true, 140263.14, '2005-03-18', 'com.sohu.Opela');
insert into items (amount, name, availability, price, entry_date, id) values (3751, 'CMS Energy Corporation', true, 133967.44, '2002-11-23', 'gov.ed.Redhold');
insert into items (amount, name, availability, price, entry_date, id) values (16235, 'Vanguard Russell 2000 ETF', true, 51918.78, '2012-10-30', 'org.pbs.Opela');
insert into items (amount, name, availability, price, entry_date, id) values (17601, 'Blackrock MuniYield Pennsylvania Quality Fund', true, 250375.81, '2006-02-22', 'com.dagondesign.Home Ing');
insert into items (amount, name, availability, price, entry_date, id) values (1451, 'Nuveen Municipal 2021 Target Term Fund', true, 168105.41, '2011-07-20', 'com.digg.Sonsing');
insert into items (amount, name, availability, price, entry_date, id) values (8643, 'SunTrust Banks, Inc.', false, 121987.41, '2007-08-16', 'com.storify.Otcom');
insert into items (amount, name, availability, price, entry_date, id) values (15870, 'LightPath Technologies, Inc.', true, 98038.75, '2022-03-01', 'com.deliciousdays.Subin');
insert into items (amount, name, availability, price, entry_date, id) values (6531, 'Till Capital Ltd.', false, 196078.94, '2002-05-26', 'com.list-manage.Holdlamis');
insert into items (amount, name, availability, price, entry_date, id) values (8265, 'MyoKardia, Inc.', false, 124082.76, '2015-03-07', 'com.delicious.Solarbreeze');
insert into items (amount, name, availability, price, entry_date, id) values (6760, 'TELUS Corporation', false, 63360.83, '2016-10-06', 'com.washingtonpost.Pannier');
insert into items (amount, name, availability, price, entry_date, id) values (15782, 'ADMA Biologics Inc', false, 128439.6, '2006-09-16', 'edu.ucsd.Stronghold');
insert into items (amount, name, availability, price, entry_date, id) values (8922, 'Intrexon Corporation', false, 216033.51, '2021-12-18', 'com.geocities.Namfix');
insert into items (amount, name, availability, price, entry_date, id) values (2520, 'Calamos Dynamic Convertible & Income Fund', false, 277349.91, '2007-01-20', 'com.alexa.Konklab');
insert into items (amount, name, availability, price, entry_date, id) values (15595, 'SORL Auto Parts, Inc.', false, 605.37, '2002-08-13', 'edu.ucsd.Keylex');
insert into items (amount, name, availability, price, entry_date, id) values (12415, 'Nuven Mortgage Opportunity Term Fund 2', true, 275578.16, '2014-05-15', 'com.acquirethisname.Ventosanzap');
insert into items (amount, name, availability, price, entry_date, id) values (3478, 'Innodata Inc.', true, 234417.44, '2007-01-15', 'fr.pagesperso-orange.Ventosanzap');
insert into items (amount, name, availability, price, entry_date, id) values (2521, 'American Financial Group, Inc.', true, 231972.37, '2007-06-28', 'com.friendfeed.It');
insert into items (amount, name, availability, price, entry_date, id) values (5895, 'Blackhawk Network Holdings, Inc.', false, 51005.64, '2003-10-21', 'com.prweb.Job');
insert into items (amount, name, availability, price, entry_date, id) values (8327, 'Concho Resources Inc.', false, 272050.48, '2022-06-07', 'com.ehow.Viva');
insert into items (amount, name, availability, price, entry_date, id) values (5503, 'AGNC Investment Corp.', true, 33120.57, '2021-11-13', 'mil.army.Y-Solowarm');
insert into items (amount, name, availability, price, entry_date, id) values (18960, 'Toyota Motor Corp Ltd Ord', false, 250477.31, '2017-07-29', 'com.over-blog.Tampflex');
insert into items (amount, name, availability, price, entry_date, id) values (8789, 'Callon Petroleum Company', true, 35866.96, '2004-06-04', 'com.typepad.Bytecard');
insert into items (amount, name, availability, price, entry_date, id) values (19552, 'PowerShares 1-30 Laddered Treasury Portfolio', false, 118365.44, '2002-09-25', 'com.elegantthemes.Tin');
insert into items (amount, name, availability, price, entry_date, id) values (19206, 'National Retail Properties', false, 253690.53, '2011-06-28', 'net.clickbank.Zoolab');
insert into items (amount, name, availability, price, entry_date, id) values (17703, 'DLH Holdings Corp.', true, 132178.11, '2002-05-16', 'com.ft.Tres-Zap');
insert into items (amount, name, availability, price, entry_date, id) values (11416, 'Bio-Rad Laboratories, Inc.', true, 156326.57, '2020-05-30', 'com.wsj.Fixflex');
insert into items (amount, name, availability, price, entry_date, id) values (11223, 'Colony Starwood Homes', true, 268067.16, '2018-12-16', 'ru.ucoz.Voyatouch');
insert into items (amount, name, availability, price, entry_date, id) values (19763, 'ChemoCentryx, Inc.', false, 36870.64, '2020-06-03', 'com.bravesites.Fixflex');
insert into items (amount, name, availability, price, entry_date, id) values (17856, 'MiMedx Group, Inc', false, 120873.42, '2020-05-21', 'org.gnu.Cardify');
insert into items (amount, name, availability, price, entry_date, id) values (18794, 'DoubleLine Income Solutions Fund', true, 250255.42, '2023-05-02', 'com.tripod.Mat Lam Tam');
insert into items (amount, name, availability, price, entry_date, id) values (12248, 'Vornado Realty Trust', true, 86682.09, '2018-09-06', 'com.wp.Konklab');
insert into items (amount, name, availability, price, entry_date, id) values (2074, 'CBAK Energy Technology, Inc.', true, 173522.12, '2005-12-19', 'mil.army.Tempsoft');
insert into items (amount, name, availability, price, entry_date, id) values (19767, 'Dreyfus Strategic Municipal Bond Fund, Inc.', true, 35631.73, '2019-04-03', 'uk.ac.cam.Mat Lam Tam');
insert into items (amount, name, availability, price, entry_date, id) values (8397, 'PowerShares S&P SmallCap Utilities Portfolio', false, 25235.34, '2023-01-02', 'com.discovery.Opela');
insert into items (amount, name, availability, price, entry_date, id) values (2743, 'Handy & Harman Ltd.', false, 218270.57, '2002-12-09', 'org.drupal.Viva');
insert into items (amount, name, availability, price, entry_date, id) values (13517, 'CABCO Series 2004-101 Trust', false, 125681.01, '2009-11-11', 'com.economist.Job');
insert into items (amount, name, availability, price, entry_date, id) values (3499, 'Home Bancorp, Inc.', true, 213257.77, '2016-06-05', 'gov.fema.Opela');
insert into items (amount, name, availability, price, entry_date, id) values (2025, 'Hanmi Financial Corporation', false, 211066.28, '2012-11-29', 'com.chron.Pannier');
insert into items (amount, name, availability, price, entry_date, id) values (7467, 'bluebird bio, Inc.', true, 80445.68, '2023-05-27', 'net.jalbum.Fintone');
insert into items (amount, name, availability, price, entry_date, id) values (725, 'Invacare Corporation', true, 149122.8, '2016-11-16', 'com.mac.Tempsoft');
insert into items (amount, name, availability, price, entry_date, id) values (12013, 'Hebron Technology Co., Ltd.', false, 136725.24, '2006-02-12', 'gov.fda.Matsoft');
insert into items (amount, name, availability, price, entry_date, id) values (14, 'Fifth Third Bancorp', true, 99463.68, '2001-11-13', 'com.cbsnews.Zamit');
insert into items (amount, name, availability, price, entry_date, id) values (8819, 'Pacific American Income Shares, Inc.', false, 168315.95, '2001-04-14', 'jp.or.plala.Andalax');
insert into items (amount, name, availability, price, entry_date, id) values (6167, 'NQ Mobile Inc.', false, 158253.74, '2016-01-30', 'com.washingtonpost.Fintone');
insert into items (amount, name, availability, price, entry_date, id) values (13396, 'Korea Equity Fund, Inc.', false, 141124.38, '2020-04-02', 'fm.last.Holdlamis');
insert into items (amount, name, availability, price, entry_date, id) values (4237, 'Global X Longevity Thematic ETF', true, 74289.31, '2018-04-12', 'com.bravesites.Andalax');
insert into items (amount, name, availability, price, entry_date, id) values (8447, 'Xencor, Inc.', false, 77255.04, '2012-10-08', 'co.t.Regrant');
insert into items (amount, name, availability, price, entry_date, id) values (7495, 'Sprouts Farmers Market, Inc.', true, 192133.12, '2001-02-18', 'me.flavors.Tempsoft');
insert into items (amount, name, availability, price, entry_date, id) values (2350, 'KCAP Financial, Inc.', false, 208099.83, '2005-02-03', 'com.amazon.Holdlamis');
insert into items (amount, name, availability, price, entry_date, id) values (19007, 'Gabelli Dividend', false, 32928.13, '2014-01-16', 'com.blinklist.Kanlam');
