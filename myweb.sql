-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.1.19-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 myweb 的数据库结构
CREATE DATABASE IF NOT EXISTS `myweb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `myweb`;


-- 导出  表 myweb.file 结构
CREATE TABLE IF NOT EXISTS `file` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(50) COLLATE utf8_bin NOT NULL,
  `path` varchar(300) COLLATE utf8_bin NOT NULL,
  `downNum` int(11) NOT NULL,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.file 的数据：~12 rows (大约)
DELETE FROM `file`;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`fid`, `fileName`, `path`, `downNum`, `userName`) VALUES
	(81, '学生开题要求.doc', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 11, 'sicnu'),
	(82, '14级期末考试安排表.xls', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 9, 'sicnu'),
	(83, '资料下载测试文本10.txt', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 8, 'sicnu'),
	(84, '资料下载测试文件1.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 0, 'sicnu'),
	(85, '资料下载测试文件7.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 0, 'sicnu'),
	(86, '资料下载测试文件4.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 5, 'sicnu'),
	(87, '资料下载测试文件3.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 0, 'sicnu'),
	(88, '资料下载测试文件9.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 0, 'sicnu'),
	(89, '资料下载测试文件8.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 2, 'sicnu'),
	(90, '资料下载测试文件6.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 0, 'sicnu'),
	(91, '资料下载测试文件5.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 0, 'sicnu'),
	(92, '资料下载测试文件2.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 4, 'sicnu'),
	(93, '计算机科学学院本科毕业设计模板.doc', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\WEB-INF\\Drive\\null', 4, 'fjl');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;


-- 导出  表 myweb.link 结构
CREATE TABLE IF NOT EXISTS `link` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(50) COLLATE utf8_bin NOT NULL,
  `linkURL` varchar(50) COLLATE utf8_bin NOT NULL,
  `addTime` varchar(50) COLLATE utf8_bin NOT NULL,
  `note` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.link 的数据：~4 rows (大约)
DELETE FROM `link`;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` (`lid`, `linkName`, `linkURL`, `addTime`, `note`) VALUES
	(50, '成都市人力资源和社会保障局', 'http://www.cdhrss.gov.cn/index.action', '2018/04/23', 'test'),
	(51, '达州市人民政府', 'http://www.dazhou.gov.cn/index.html', '2018/04/23', 'test'),
	(52, '达州人大网', 'http://www.dzsrd.gov.cn/', '2018/04/23', 'test'),
	(53, '中国人民政治协商会议达州市委员会', 'http://www.dzzx.gov.cn/', '2018/04/23', 'test');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;


-- 导出  表 myweb.member 结构
CREATE TABLE IF NOT EXISTS `member` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `memberName` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberCode` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberType` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberAddr` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberPerson` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberID` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberContact` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberPhone` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberIntro` varchar(50) COLLATE utf8_bin NOT NULL,
  `memberURL` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.member 的数据：~4 rows (大约)
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`mid`, `memberName`, `memberCode`, `memberType`, `memberAddr`, `memberPerson`, `memberID`, `memberContact`, `memberPhone`, `memberIntro`, `memberURL`) VALUES
	(50, '会员单位测试数据1', '000001', '其它', '四川省达州市', 'tester', '', '', '', '', 'https://www.baidu.com/'),
	(51, '会员单位测试数据2', '000002', '其它', '四川省达州市', 'tester', '', '', '', '', 'http://www.sina.com.cn/'),
	(52, '会员单位测试数据3', '000003', '其它', '四川省达州市', 'tester', '', '', '', '', 'http://jwc.sicnu.edu.cn/'),
	(53, '四川师范大学教务处主页', '666666', '国有企业', '', '', '', '', '', '', 'http://jwc.sicnu.edu.cn/');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;


-- 导出  表 myweb.pub 结构
CREATE TABLE IF NOT EXISTS `pub` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pubTitle` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubType` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubUser` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubTime` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubContent` longtext COLLATE utf8_bin NOT NULL,
  `imgName` varchar(50) COLLATE utf8_bin NOT NULL,
  `imgURL` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.pub 的数据：~138 rows (大约)
DELETE FROM `pub`;
/*!40000 ALTER TABLE `pub` DISABLE KEYS */;
INSERT INTO `pub` (`pid`, `pubTitle`, `pubType`, `pubUser`, `pubTime`, `pubContent`, `imgName`, `imgURL`) VALUES
	(54, '我市实施“人才强市”推进人才创新转型发展', '新闻中心', 'fjl', '2018/05/01', '4月19日，由市就业局联合五所大中专院校、人力资源服务公司开展的为期一个月“2018年达州市大中专院校毕业生职业指导巡回公开课进校园”活动最后一场公开课，在达州市华西职业技术学校落下帷幕，也标志着我市此次职业指导公开课活动圆满结束。\r\n\r\n为进一步深入实施高校毕业生就业促进计划，贯彻落实高校毕业生就业政策，帮助我市大中专毕业生转变就业观念，提升求职能力，促进应届大中专毕业生实现充分就业。我市于2018年3月29日至4月19日，在达州职业技术学院、市高级技工学校、市职业高级中学等五所大中专院校相继开展了5场以“塑造阳光就业心态、打造魅力职场先锋”为主题的2018年大中专毕业生职业指导校园巡回公开课，2358名应届毕业生聆听了职业指导公开课。\r\n\r\n职业指导进校园活动有效地帮助了即将踏入工作岗位的大中专院校毕业生，摆正求职心态，树立正确择业观、就业观；帮助同学们在未来职业生涯中做好具体而实在的准备，提前为学生做好职业启蒙与生涯规划，寻找到自己的人生目标，包括职业与职业理想、职业生涯规划的基本涵义和内容等，让学生在校期间就有明确的职业生涯目标，进一步了解社会、了解职业、了解自己，让他们能以更加理智的态度去择业就业。\r\n\r\n今年来，全市就业服务机构在全面落实高校毕业生就业创业政策基础上，将实施“创业引领计划”、“就业服务与援助计划”、“高校毕业生”专场招聘、用人单位进校园“双选会”送岗位、民营企业招聘周等多项高校毕业生就业促进和服务活动，为高校毕业生搭建更多的供需对接平台，促进其充分实现就业。\r\n', '', ''),
	(55, '达州市人社局组团参加第十六届中国国际人才交流大会', '新闻中心', 'fjl', '2018/05/01', '', '', ''),
	(56, '市人社局王隆毅局长调研市高级技工学校新区建设工作', '新闻中心', 'fjl', '2018/05/01', '', '', ''),
	(57, '我市启动市、县、乡、村四级人社公共服务事项', '新闻中心', 'fjl', '2018/04/23', '', '', ''),
	(58, '市人社局召开党建工作暨业务培训会', '新闻中心', 'fjl', '2018/04/23', '', '', ''),
	(59, '缅怀革命先烈 弘扬优良传统——达州市人社局开展4月“党员活动日”活动', '新闻中心', 'fjl', '2018/04/23', '', '', ''),
	(60, '市人社局“九大举措”力促信息宣传工作', '新闻中心', 'fjl', '2018/04/23', '', '', ''),
	(61, '春风吹暖烟灯村—王隆毅同志带队深入扶贫联系村调研', '新闻中心', 'fjl', '2018/04/23', '', '', ''),
	(62, '市人社局学习贯彻十九届三中全会精神', '新闻中心', 'fjl', '2018/04/18', '', '', ''),
	(63, '达州市多管齐下打造群众满意的退休人员生存认证服务', '新闻中心', 'fjl', '2018/04/18', '', '', ''),
	(64, '我市成立协调劳动关系三方委员会', '新闻中心', 'fjl', '2018/04/18', '', '', ''),
	(65, '达州市就业创业凸显“四新”', '新闻中心', 'fjl', '2018/04/18', '', '', ''),
	(66, '省职业技能鉴定指导中心调研我市职业技能鉴定工作', '新闻中心', 'fjl', '2018/04/18', '', '', ''),
	(67, '达州市人社局召开卸任领导职务干部座谈会', '新闻中心', 'fjl', '2018/04/16', '', '', ''),
	(68, '全市“四精四清”助推就业困难人员就业', '新闻中心', 'fjl', '2018/04/16', '', '', ''),
	(69, '市人社局“九大举措”力促信息宣传工作', '新闻中心', 'fjl', '2018/04/16', '', '', ''),
	(70, '我市开展“全民参保”为主题的 12333全国咨询日宣传活动', '新闻中心', 'fjl', '2018/04/16', '', '', ''),
	(71, '我市出台失业保险业务经办内控管理办法', '新闻中心', 'fjl', '2018/04/16', '', '', ''),
	(72, '市人社局学习贯彻十九届二中全会精神', '新闻中心', 'fjl', '2018/04/05', '', '', ''),
	(73, '省外国专家局王建红局长一行调研达州引智工作', '新闻中心', 'fjl', '2018/04/05', '', '', ''),
	(74, '市人社局组织户外活动庆祝“三八”妇女节', '新闻中心', 'fjl', '2018/04/05', '', '', ''),
	(75, '省人社厅李强副厅长一行来达调研和谐 劳动关系工作', '新闻中心', 'fjl', '2018/04/05', '', '', ''),
	(76, '达州“四轮驱动”破解节后“用工荒”', '新闻中心', 'fjl', '2018/04/05', '', '', ''),
	(77, '达州主城区隆重举办2018年春风行动暨就业扶贫招聘会', '新闻中心', 'fjl', '2018/04/02', '', '', ''),
	(78, '人社部来达调研春节后企业用工及转移就业', '新闻中心', 'fjl', '2018/04/02', '', '', ''),
	(79, '全市人社统计培训会议召开', '新闻中心', 'fjl', '2018/04/02', '', '', ''),
	(80, '达州市“就业援助月”活动帮扶938名就业困难人员就业', '新闻中心', 'fjl', '2018/04/02', '', '', ''),
	(81, '市人社局领导班子节后上班首日看望慰问干部职工', '新闻中心', 'fjl', '2018/04/02', '', '', ''),
	(82, '人社系统先进集体和工作者事迹视频', '新闻中心', 'fjl', '2018/04/01', '', '', ''),
	(83, '市人社局深入扶贫联系村走访慰问', '新闻中心', 'fjl', '2018/04/01', '', '', ''),
	(84, '市人力资源社会保障局召开2017年度总结表彰暨新春团拜会', '新闻中心', 'fjl', '2018/04/01', '', '', ''),
	(85, '节前慰问老干部 浓浓关怀暖人心', '新闻中心', 'fjl', '2018/04/01', '', '', ''),
	(86, '省农劳办慰问组赴达开展送温暖走访慰问农民工活动', '新闻中心', 'fjl', '2018/04/01', '为深入推进群众满意人社公共服务体系建设，近日，市人社局组织力量，集中时间，启动实施市、县、乡、村四级人社公共服务事项“最多跑一次”规范化建设工作，各县（市、区）和乡（镇）、村（社区）基层平台相关工作人员共同参与。\r\n\r\n开展这项工作，旨在通过对服务项目的梳理和办事指南的规范，有效解决人社领域公共服务事项办理过程中存在的标准不一、各自为阵等问题，力争做到全市范围内任何一地办理同一事项，不论是申请条件、申报资料，还是办结时限、办理形式等，所有环节和要求全部一致，为打造“智慧人社”提供支撑，并最终实现群众办理人社公共服务事项手续最简、流程最优、方式最便捷。\r\n\r\n根据安排和设计要求，规范化建设工作将从纵横两个维度和具体内容9个方面，对市、县、乡、村四级人社公共服务事项进行集中梳理和优化再造，统一所有事项目录序号、项目名称、办理次数、申请条件、申报材料、办理形式、办结时限和办事流程。为确保效果，达州市人社局成立了专门工作机构，具体负责市、县、乡、村四级人社公共服务事项“最多跑一次”规范化建设的相关工作，党组书记、局长亲自担任组长。\r\n\r\n该工作已于4月8日启动，预计4月底前可全面完成。目前，正在按计划有序推进，市、县、乡、村四级服务项目和办事指南一经规范和统一，市人社局将及时组织召开新闻发布会，并通过门户网站和微信、微博等方式，面向社会公布。\r\n', '', ''),
	(87, '关于印发《关于加强基层专业技术人才队伍建设的实施意见》的通知', '政策法规', 'fjl', '2018/05/01', '各市（州）人力资源社会保障局、党委组织部、编办、财政局，省直各部门，中央在川单位：\r\n\r\n　　经省委、省政府同意，现将《关于加强基层专业技术人才队伍建设的实施意见》印发给你们，请结合实际认真贯彻执行。\r\n\r\n \r\n\r\n　               　四川省人力资源和社会保障厅       中共四川省委组织部\r\n\r\n　               　中共四川省委机构编制委员会办公室  四 川 省 财 政 厅\r\n\r\n \r\n\r\n                                                                       2017年4月25日 \r\n \r\n\r\n \r\n\r\n关于加强基层专业技术人才队伍建设的实施意见\r\n\r\n \r\n\r\n　　专业技术人才是基层最紧缺、最急需的人才。为切实解决基层特别是艰苦边远地区事业单位招人难、空编严重的问题，确保各类人才招得来、留得住、用得好，现就加强基层专业技术人才队伍建设提出以下意见。\r\n\r\n　　一、实施范围对象\r\n\r\n　　（一）本意见适用于全省乡镇、贫困县（市、区）、民族地区（指甘孜、阿坝、凉山州各县市及其他民族自治县、少数民族待遇县，下同）所属有关单位的专业技术人员。\r\n\r\n　　二、放宽基层事业单位人员招聘政策\r\n\r\n　　（二）放宽学历条件。放宽条件，降低门槛，除有行业准入规定的外，学历可放宽到大专，乡镇可放宽到高中、中职（含中专、技工校）。\r\n\r\n　　（三）放宽职称资格条件。民族地区可按专业对口原则，公开考核招聘（即采取面试、组织考察的方式，下同）以下基层事业单位专业技术人员：农、林、水、文化事业单位取得相应初级及以上专业技术职称的农（含农机）、林、水、牧、渔、艺术专业技术人员；中小学校、幼儿园和中等职业学校（含技工校）取得相应教师资格证的教师；医疗卫生事业单位取得中级及以上职称或者执业医师资格证书的卫生专业技术人员。其中，乡镇卫生院的考核招聘条件可放宽到取得初级及以上职称或者执业（助理）医师(含乡村全科执业助理医师）、执业护士资格证书。\r\n\r\n　　（四）放宽招聘权限。考试招聘基层事业单位工作人员，形成差额即可开考，考试成绩计算比例可由各市（州）或县（市、区）自主确定。乡镇事业单位公开招聘高中、中职（含中专、技工校）学历人员，应采取考试招聘方式进行；贫困县（区）乡镇事业单位公开招聘大学本科毕业生，可自主确定招聘方式。民族地区公开招聘，可自主确定地域范围、进行民族语言测试,考核招聘专业技术人员的学历条件可放宽到大专（藏区乡镇卫生院医疗卫生专业技术主序列岗位可直接考核招聘35周岁以下、普通中专学校普通班医学类专业毕业生）。各地可自主提高招聘条件。\r\n\r\n　　（五）加强空岗补员。各地每年初应及时清理基层事业单位空缺编制，加强空编补员。基层事业单位当年应补员至编制总额的90%以上，支持民族地区乡镇事业单位满编运行。\r\n\r\n　　（六）严格服务年限。乡镇事业单位公开招聘的工作人员，最低服务年限为5年，从聘用合同生效之日起计算，聘用合同应明确违约责任和相关要求。在最低服务期限内，其他单位不得以任何理由将其借出或调走。违规办理的，追究调出单位和组织人事部门主要负责人的责任。\r\n\r\n　　（七）严肃招聘纪律。全面落实公招政策和纪律要求，采取有效措施，加强对招聘工作的监督，防止出现因人画像、人情招聘、暗箱操作等问题。对以权谋私、违规进人等违规违法行为，坚决查处，并追究相关责任单位、部门主要负责人的责任。\r\n\r\n　　三、完善基层事业单位岗位管理\r\n\r\n　　（八）优化岗位结构。提高基层事业单位中、高级专业技术岗位结构比例。单位规模小、人员数量少、分布较分散的，可由县（市、区）行业主管部门统一组织制订岗位设置方案，在核准的岗位总量、结构比例、最高等级限额内集中调控、集中管理。县、乡事业单位岗位设置方案可由县（市、区）人事综合管理部门核准，报市（州）人事综合管理部门备案。\r\n\r\n　　（九）实施特设岗位管理。鼓励各地区和部门建立“定向评价、定向使用”的基层专业技术职称制度，所获资格在本县范围内有效，对高级专业技术岗位实行总量控制、比例单列，不占各地专业技术高级结构比例。乡镇事业单位通过特设岗位引进的急需紧缺专业人才，其所聘岗位等级可放宽至专业技术八级，不受单位岗位总量、结构比例限制。扩大农村教师、农技推广、全科医生特设岗位计划实施范围和规模，支持基层补充专业技术人才。\r\n\r\n　　四、积极引导各类人才向基层一线流动\r\n\r\n　　（十）引导高校毕业生到基层工作。统筹实施高校毕业生“三支一扶”计划、“农村义务教育阶段学校教师特设岗位计划”、“选聘高校毕业生到村任职工作”、“大学生志愿服务西部计划”等项目，扩大招募规模，招募名额向民族地区倾斜，采取考试、考核等方式招募高校毕业生服务基层。甘孜、阿坝、凉山州招募方案经省级主管部门同意，可统一组织考核招募应届毕业生。对服务期满、考核合格的高校毕业生“三支一扶”计划、“选聘高校毕业生到村任职工作”、“大学生志愿服务西部计划”人员，结合岗位空缺情况和岗位聘用条件，可直接考核招聘到服务所在县（市、区）的乡镇事业单位。其中，对在甘孜、阿坝、凉山州服务的人员，尽可能招聘到服务所在县（市）的县乡事业单位。\r\n\r\n　　（十一）拓宽基层柔性引才渠道。推动岗编一体向岗编分离转变，探索将编制放在县级部门，让人才下派乡镇，实现人才向基层流动。深入实施千名干部人才援藏援彝行动、万名专家服务基层行动计划、科技特派员、城乡医卫人员对口支援、城市教师支援农村教育等项目，引导和组织专业技术人才柔性流动到基层创新创业和开展服务活动。实施专业技术人才基层锻炼计划，对没有基层工作经历的专业技术人才，由省、市（州）行业主管部门根据基层需求组织开展支教、支农、支医、支文、支企等工作。专业技术人才由单位选派到基层服务期间，其原单位岗位、职级、工资福利保留不变，在基层工作经历和业绩可作为晋职、晋级、评聘和晋升专业技术职务的重要依据，有条件的单位可适当给予工作、生活补助。\r\n\r\n　　（十二）加大基层政府购买服务力度。鼓励基层政府购买公共服务和社会服务岗位，完善公开透明规范的购买流程，建立健全购买公共服务信息发布平台，引进基层急需紧缺专业技术人才。鼓励专业技术协会、农村合作组织和技术中介服务组织，依托专家服务基地等平台，帮助基层集聚创新资源、突破关键技术、优化产业结构、培养急需人才，有关政府部门可给予相应资助。允许基层事业单位满编后，采取合同管理、签约服务管理等方式引进专业技术人才。\r\n\r\n　　五、改革基层专业技术人才评价机制\r\n\r\n　　（十三）完善评价标准。建立体现基层专业技术人才工作实际和特点的评价标准，提高履行岗位职责的实践能力、工作业绩、工作年限等评价权重。基层专业技术人才参加职称评审，对论文、科研、外语和计算机应用能力等不作统一或硬性要求，可用能够体现专业技术工作业绩和水平的工作总结、文案教案、病历、技术推广总结、工程项目方案、专利成果等替代。\r\n\r\n　　（十四）创新评价机制。建立以同行评价为基础的评价机制，灵活采用考试、评审、考评结合、考核认定等方式，严格规范程序，加强过程监督，提高职称评价质量和公信力。将高、中级职称的评审权放给符合条件的市（州）、县（市、区），突出用人主体在职称评审中的主导作用。有条件的地区和部门可试行基层专业技术人才申报职称单独分组、单独评审、单独确定结果。依托公共人才服务机构、行业协会等，畅通基层非公有制经济组织、社会组织等专业技术人才职称申报渠道，探索有针对性的评价办法。\r\n\r\n　　（十五）完善职称倾斜政策。“四大片区”外的专业技术人才，任现职务期间到“四大片区”88个贫困县服务满1年、或与“四大片区”88个贫困县企事业单位建立3年及以上支援服务关系、或参加精准扶贫工作取得显著成效，且年度考核均为合格及以上的，可提前1年申报高一级专业技术职务资格，同等条件下优先聘用到相应专业技术岗位。\r\n\r\n　　六、加强基层专业技术人才服务保障\r\n\r\n　　（十六）加强基层人才培养。突出基层经济社会发展需求导向，支持高等学校、职业院校创新培养模式，培养基层急需的高素质应用型人才。进一步完善少数民族地区教师培养机制，积极探索为少数民族地区培养“下得去、留得住、教得好”的中小学和幼儿园教师的招生办法。继续实施免费师范生、免费医学生等制度，每年为基层培养3000名免费师范生和500名农村订单定向免费医学生。依托省校合作平台、继续教育基地、各类教育培训机构和远程教育等资源，分层分类开展继续教育活动，力争五年内将全省基层专业技术人才轮训一遍。实施专业技术人才知识更新工程、高素质教育人才培养工程、全民健康卫生人才保障工程等人才工程，选育一批基层急需紧缺和骨干专业技术人才。\r\n\r\n　　（十七）加大基层人才激励力度。落实好绩效工资、艰苦边远地区津贴、乡镇工作补贴等待遇政策。在开展享受政府特殊津贴人员、省有突出贡献优秀专家等人才称号和省人才表彰奖励项目评选时，对基层专业技术人才单列指标或单独分组评审，向在基层推广应用新技术、新成果且取得显著经济社会效益的人才以及“四大片区”倾斜。支持各地建立有突出贡献优秀专家制度，充分激发广大基层专业技术人才创新创业积极性。\r\n\r\n　　（十八）提高基层人才服务保障水平。各级党委、政府要把基层专业技术人才队伍建设作为一项重要政治任务和战略工程，纳入人才工作目标责任制考核的重要内容，将基层专业技术人才队伍建设经费列入人才工作经费预算。省级行业主管部门要加强工作指导和业务培训，加大项目、资金等支持力度。组织、人社部门要充分发挥人才综合管理职能作用，与相关部门形成共同推进基层人才队伍建设的强大合力。各地、各部门要依托“互联网+”等模式，扩宽服务渠道，简化服务流程，为基层人才提供优质高效便捷服务；广泛宣传优秀基层人才先进事迹，营造关心支持基层人才的良好氛围，激励广大基层专业技术人才扎根基层、立足岗位、务实奉献。\r\n', '', ''),
	(88, '人社部财政部印发通知要求阶段性降低失业保险费率', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(89, '我省农民工等人员返乡创业政策解读', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(90, '中华人民共和国劳动法', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(91, '中华人民共和国公务员法', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(92, '中华人民共和国社会保险法', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(93, '中华人民共和国就业促进法', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(94, '中华人民共和国劳动合同法', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(95, '中华人民共和国劳动合同法实施条例', '政策法规', 'fjl', '2018/05/01', '', '', ''),
	(96, '中华人民共和国劳动争议调解仲裁法', '政策法规', 'fjl', '2018/05/01', '《中华人民共和国劳动争议调解仲裁法》已由中华人民共和国第十届全国人民代表大会常务委员会第三十一次会议于2007年12月29日通过，现予公布，自2008年5月1日起施行。\r\n\r\n　　　　　　　　　　　　　　　　　　　　　中华人民共和国主席　胡锦涛\r\n　　　　　　　　　　　　　　　　　　　　　　　　　2007年12月29日\r\n\r\n中华人民共和国劳动争议调解仲裁法\r\n（2007年12月29日第十届全国人民代表大会常务委员会第三十一次会议通过）\r\n\r\n    目　录\r\n    第一章　总则\r\n    第二章　调解\r\n    第三章　仲裁\r\n    第一节　一般规定\r\n    第二节　申请和受理\r\n    第三节　开庭和裁决\r\n    第四章　附则\r\n\r\n第一章　总　　则\r\n\r\n    第一条 为了公正及时解决劳动争议，保护当事人合法权益，促进劳动关系和谐稳定，制定本法。\r\n    第二条 中华人民共和国境内的用人单位与劳动者发生的下列劳动争议，适用本法：\r\n    （一）因确认劳动关系发生的争议；\r\n    （二）因订立、履行、变更、解除和终止劳动合同发生的争议；\r\n    （三）因除名、辞退和辞职、离职发生的争议；\r\n    （四）因工作时间、休息休假、社会保险、福利、培训以及劳动保护发生的争议；\r\n    （五）因劳动报酬、工伤医疗费、经济补偿或者赔偿金等发生的争议；\r\n    （六）法律、法规规定的其他劳动争议。\r\n    第三条 解决劳动争议，应当根据事实，遵循合法、公正、及时、着重调解的原则，依法保护当事人的合法权益。\r\n    第四条 发生劳动争议，劳动者可以与用人单位协商，也可以请工会或者第三方共同与用人单位协商，达成和解协议。\r\n    第五条 发生劳动争议，当事人不愿协商、协商不成或者达成和解协议后不履行的，可以向调解组织申请调解；不愿调解、调解不成或者达成调解协议后不履行的，可以向劳动争议仲裁委员会申请仲裁；对仲裁裁决不服的，除本法另有规定的外，可以向人民法院提起诉讼。\r\n    第六条 发生劳动争议，当事人对自己提出的主张，有责任提供证据。与争议事项有关的证据属于用人单位掌握管理的，用人单位应当提供；用人单位不提供的，应当承担不利后果。\r\n    第七条 发生劳动争议的劳动者一方在十人以上，并有共同请求的，可以推举代表参加调解、仲裁或者诉讼活动。\r\n    第八条 县级以上人民政府劳动行政部门会同工会和企业方面代表建立协调劳动关系三方机制，共同研究解决劳动争议的重大问题。\r\n    第九条 用人单位违反国家规定，拖欠或者未足额支付劳动报酬，或者拖欠工伤医疗费、经济补偿或者赔偿金的，劳动者可以向劳动行政部门投诉，劳动行政部门应当依法处理。\r\n\r\n第二章　调　　解\r\n\r\n    第十条 发生劳动争议，当事人可以到下列调解组织申请调解：\r\n    （一）企业劳动争议调解委员会；\r\n    （二）依法设立的基层人民调解组织；\r\n    （三）在乡镇、街道设立的具有劳动争议调解职能的组织。\r\n    企业劳动争议调解委员会由职工代表和企业代表组成。职工代表由工会成员担任或者由全体职工推举产生，企业代表由企业负责人指定。企业劳动争议调解委员会主任由工会成员或者双方推举的人员担任。\r\n    第十一条 劳动争议调解组织的调解员应当由公道正派、联系群众、热心调解工作，并具有一定法律知识、政策水平和文化水平的成年公民担任。\r\n    第十二条 当事人申请劳动争议调解可以书面申请，也可以口头申请。口头申请的，调解组织应当当场记录申请人基本情况、申请调解的争议事项、理由和时间。\r\n    第十三条 调解劳动争议，应当充分听取双方当事人对事实和理由的陈述，耐心疏导，帮助其达成协议。\r\n    第十四条 经调解达成协议的，应当制作调解协议书。\r\n    调解协议书由双方当事人签名或者盖章，经调解员签名并加盖调解组织印章后生效，对双方当事人具有约束力，当事人应当履行。\r\n    自劳动争议调解组织收到调解申请之日起十五日内未达成调解协议的，当事人可以依法申请仲裁。\r\n    第十五条 达成调解协议后，一方当事人在协议约定期限内不履行调解协议的，另一方当事人可以依法申请仲裁。\r\n    第十六条 因支付拖欠劳动报酬、工伤医疗费、经济补偿或者赔偿金事项达成调解协议，用人单位在协议约定期限内不履行的，劳动者可以持调解协议书依法向人民法院申请支付令。人民法院应当依法发出支付令。\r\n\r\n第三章　仲　　裁\r\n\r\n    第一节 一般规定\r\n    第十七条 劳动争议仲裁委员会按照统筹规划、合理布局和适应实际需要的原则设立。省、自治区人民政府可以决定在市、县设立；直辖市人民政府可以决定在区、县设立。直辖市、设区的市也可以设立一个或者若干个劳动争议仲裁委员会。劳动争议仲裁委员会不按行政区划层层设立。\r\n    第十八条 国务院劳动行政部门依照本法有关规定制定仲裁规则。省、自治区、直辖市人民政府劳动行政部门对本行政区域的劳动争议仲裁工作进行指导。\r\n    第十九条 劳动争议仲裁委员会由劳动行政部门代表、工会代表和企业方面代表组成。劳动争议仲裁委员会组成人员应当是单数。\r\n    劳动争议仲裁委员会依法履行下列职责：\r\n    （一）聘任、解聘专职或者兼职仲裁员；\r\n    （二）受理劳动争议案件；\r\n    （三）讨论重大或者疑难的劳动争议案件；\r\n    （四）对仲裁活动进行监督。\r\n    劳动争议仲裁委员会下设办事机构，负责办理劳动争议仲裁委员会的日常工作。\r\n    第二十条 劳动争议仲裁委员会应当设仲裁员名册。\r\n    仲裁员应当公道正派并符合下列条件之一：\r\n    （一）曾任审判员的；\r\n    （二）从事法律研究、教学工作并具有中级以上职称的；\r\n    （三）具有法律知识、从事人力资源管理或者工会等专业工作满五年的；\r\n    （四）律师执业满三年的。\r\n    第二十一条 劳动争议仲裁委员会负责管辖本区域内发生的劳动争议。\r\n    劳动争议由劳动合同履行地或者用人单位所在地的劳动争议仲裁委员会管辖。双方当事人分别向劳动合同履行地和用人单位所在地的劳动争议仲裁委员会申请仲裁的，由劳动合同履行地的劳动争议仲裁委员会管辖。\r\n    第二十二条 发生劳动争议的劳动者和用人单位为劳动争议仲裁案件的双方当事人。\r\n    劳务派遣单位或者用工单位与劳动者发生劳动争议的，劳务派遣单位和用工单位为共同当事人。\r\n    第二十三条 与劳动争议案件的处理结果有利害关系的第三人，可以申请参加仲裁活动或者由劳动争议仲裁委员会通知其参加仲裁活动。\r\n    第二十四条 当事人可以委托代理人参加仲裁活动。委托他人参加仲裁活动，应当向劳动争议仲裁委员会提交有委托人签名或者盖章的委托书，委托书应当载明委托事项和权限。\r\n    第二十五条 丧失或者部分丧失民事行为能力的劳动者，由其法定代理人代为参加仲裁活动；无法定代理人的，由劳动争议仲裁委员会为其指定代理人。劳动者死亡的，由其近亲属或者代理人参加仲裁活动。\r\n    第二十六条 劳动争议仲裁公开进行，但当事人协议不公开进行或者涉及国家秘密、商业秘密和个人隐私的除外。\r\n    第二节 申请和受理\r\n    第二十七条 劳动争议申请仲裁的时效期间为一年。仲裁时效期间从当事人知道或者应当知道其权利被侵害之日起计算。\r\n    前款规定的仲裁时效，因当事人一方向对方当事人主张权利，或者向有关部门请求权利救济，或者对方当事人同意履行义务而中断。从中断时起，仲裁时效期间重新计算。\r\n    因不可抗力或者有其他正当理由，当事人不能在本条第一款规定的仲裁时效期间申请仲裁的，仲裁时效中止。从中止时效的原因消除之日起，仲裁时效期间继续计算。\r\n    劳动关系存续期间因拖欠劳动报酬发生争议的，劳动者申请仲裁不受本条第一款规定的仲裁时效期间的限制；但是，劳动关系终止的，应当自劳动关系终止之日起一年内提出。\r\n    第二十八条 申请人申请仲裁应当提交书面仲裁申请，并按照被申请人人数提交副本。\r\n    仲裁申请书应当载明下列事项：\r\n    （一）劳动者的姓名、性别、年龄、职业、工作单位和住所，用人单位的名称、住所和法定代表人或者主要负责人的姓名、职务；\r\n    （二）仲裁请求和所根据的事实、理由；\r\n    （三）证据和证据来源、证人姓名和住所。\r\n    书写仲裁申请确有困难的，可以口头申请，由劳动争议仲裁委员会记入笔录，并告知对方当事人。\r\n    第二十九条 劳动争议仲裁委员会收到仲裁申请之日起五日内，认为符合受理条件的，应当受理，并通知申请人；认为不符合受理条件的，应当书面通知申请人不予受理，并说明理由。对劳动争议仲裁委员会不予受理或者逾期未作出决定的，申请人可以就该劳动争议事项向人民法院提起诉讼。\r\n    第三十条 劳动争议仲裁委员会受理仲裁申请后，应当在五日内将仲裁申请书副本送达被申请人。\r\n    被申请人收到仲裁申请书副本后，应当在十日内向劳动争议仲裁委员会提交答辩书。劳动争议仲裁委员会收到答辩书后，应当在五日内将答辩书副本送达申请人。被申请人未提交答辩书的，不影响仲裁程序的进行。\r\n    第三节 开庭和裁决\r\n    第三十一条 劳动争议仲裁委员会裁决劳动争议案件实行仲裁庭制。仲裁庭由三名仲裁员组成，设首席仲裁员。简单劳动争议案件可以由一名仲裁员独任仲裁。\r\n    第三十二条 劳动争议仲裁委员会应当在受理仲裁申请之日起五日内将仲裁庭的组成情况书面通知当事人。\r\n    第三十三条 仲裁员有下列情形之一，应当回避，当事人也有权以口头或者书面方式提出回避申请：\r\n    （一）是本案当事人或者当事人、代理人的近亲属的；\r\n    （二）与本案有利害关系的；\r\n    （三）与本案当事人、代理人有其他关系，可能影响公正裁决的；\r\n    （四）私自会见当事人、代理人，或者接受当事人、代理人的请客送礼的。\r\n    劳动争议仲裁委员会对回避申请应当及时作出决定，并以口头或者书面方式通知当事人。\r\n    第三十四条 仲裁员有本法第三十三条第四项规定情形，或者有索贿受贿、徇私舞弊、枉法裁决行为的，应当依法承担法律责任。劳动争议仲裁委员会应当将其解聘。\r\n    第三十五条 仲裁庭应当在开庭五日前，将开庭日期、地点书面通知双方当事人。当事人有正当理由的，可以在开庭三日前请求延期开庭。是否延期，由劳动争议仲裁委员会决定。\r\n    第三十六条 申请人收到书面通知，无正当理由拒不到庭或者未经仲裁庭同意中途退庭的，可以视为撤回仲裁申请。\r\n    被申请人收到书面通知，无正当理由拒不到庭或者未经仲裁庭同意中途退庭的，可以缺席裁决。\r\n    第三十七条 仲裁庭对专门性问题认为需要鉴定的，可以交由当事人约定的鉴定机构鉴定；当事人没有约定或者无法达成约定的，由仲裁庭指定的鉴定机构鉴定。\r\n    根据当事人的请求或者仲裁庭的要求，鉴定机构应当派鉴定人参加开庭。当事人经仲裁庭许可，可以向鉴定人提问。\r\n    第三十八条 当事人在仲裁过程中有权进行质证和辩论。质证和辩论终结时，首席仲裁员或者独任仲裁员应当征询当事人的最后意见。\r\n    第三十九条 当事人提供的证据经查证属实的，仲裁庭应当将其作为认定事实的根据。\r\n    劳动者无法提供由用人单位掌握管理的与仲裁请求有关的证据，仲裁庭可以要求用人单位在指定期限内提供。用人单位在指定期限内不提供的，应当承担不利后果。\r\n    第四十条 仲裁庭应当将开庭情况记入笔录。当事人和其他仲裁参加人认为对自己陈述的记录有遗漏或者差错的，有权申请补正。如果不予补正，应当记录该申请。\r\n    笔录由仲裁员、记录人员、当事人和其他仲裁参加人签名或者盖章。\r\n    第四十一条 当事人申请劳动争议仲裁后，可以自行和解。达成和解协议的，可以撤回仲裁申请。\r\n    第四十二条 仲裁庭在作出裁决前，应当先行调解。\r\n    调解达成协议的，仲裁庭应当制作调解书。\r\n    调解书应当写明仲裁请求和当事人协议的结果。调解书由仲裁员签名，加盖劳动争议仲裁委员会印章，送达双方当事人。调解书经双方当事人签收后，发生法律效力。\r\n    调解不成或者调解书送达前，一方当事人反悔的，仲裁庭应当及时作出裁决。\r\n    第四十三条 仲裁庭裁决劳动争议案件，应当自劳动争议仲裁委员会受理仲裁申请之日起四十五日内结束。案情复杂需要延期的，经劳动争议仲裁委员会主任批准，可以延期并书面通知当事人，但是延长期限不得超过十五日。逾期未作出仲裁裁决的，当事人可以就该劳动争议事项向人民法院提起诉讼。\r\n    仲裁庭裁决劳动争议案件时，其中一部分事实已经清楚，可以就该部分先行裁决。\r\n    第四十四条 仲裁庭对追索劳动报酬、工伤医疗费、经济补偿或者赔偿金的案件，根据当事人的申请，可以裁决先予执行，移送人民法院执行。\r\n    仲裁庭裁决先予执行的，应当符合下列条件：\r\n    （一）当事人之间权利义务关系明确；\r\n    （二）不先予执行将严重影响申请人的生活。\r\n    劳动者申请先予执行的，可以不提供担保。\r\n    第四十五条 裁决应当按照多数仲裁员的意见作出，少数仲裁员的不同意见应当记入笔录。仲裁庭不能形成多数意见时，裁决应当按照首席仲裁员的意见作出。\r\n    第四十六条 裁决书应当载明仲裁请求、争议事实、裁决理由、裁决结果和裁决日期。裁决书由仲裁员签名，加盖劳动争议仲裁委员会印章。对裁决持不同意见的仲裁员，可以签名，也可以不签名。\r\n    第四十七条 下列劳动争议，除本法另有规定的外，仲裁裁决为终局裁决，裁决书自作出之日起发生法律效力：\r\n    （一）追索劳动报酬、工伤医疗费、经济补偿或者赔偿金，不超过当地月最低工资标准十二个月金额的争议；\r\n    （二）因执行国家的劳动标准在工作时间、休息休假、社会保险等方面发生的争议。\r\n    第四十八条 劳动者对本法第四十七条规定的仲裁裁决不服的，可以自收到仲裁裁决书之日起十五日内向人民法院提起诉讼。\r\n    第四十九条 用人单位有证据证明本法第四十七条规定的仲裁裁决有下列情形之一，可以自收到仲裁裁决书之日起三十日内向劳动争议仲裁委员会所在地的中级人民法院申请撤销裁决：\r\n    （一）适用法律、法规确有错误的；\r\n    （二）劳动争议仲裁委员会无管辖权的；\r\n    （三）违反法定程序的；\r\n    （四）裁决所根据的证据是伪造的；\r\n    （五）对方当事人隐瞒了足以影响公正裁决的证据的；\r\n    （六）仲裁员在仲裁该案时有索贿受贿、徇私舞弊、枉法裁决行为的。\r\n    人民法院经组成合议庭审查核实裁决有前款规定情形之一的，应当裁定撤销。\r\n    仲裁裁决被人民法院裁定撤销的，当事人可以自收到裁定书之日起十五日内就该劳动争议事项向人民法院提起诉讼。\r\n    第五十条 当事人对本法第四十七条规定以外的其他劳动争议案件的仲裁裁决不服的，可以自收到仲裁裁决书之日起十五日内向人民法院提起诉讼；期满不起诉的，裁决书发生法律效力。\r\n    第五十一条 当事人对发生法律效力的调解书、裁决书，应当依照规定的期限履行。一方当事人逾期不履行的，另一方当事人可以依照民事诉讼法的有关规定向人民法院申请执行。受理申请的人民法院应当依法执行。\r\n\r\n第四章　附　　则\r\n\r\n    第五十二条 事业单位实行聘用制的工作人员与本单位发生劳动争议的，依照本法执行；法律、行政法规或者国务院另有规定的，依照其规定。\r\n    第五十三条 劳动争议仲裁不收费。劳动争议仲裁委员会的经费由财政予以保障。\r\n    第五十四条 本法自2008年5月1日起施行。\r\n', '', ''),
	(97, '市本级企业职工退休（特殊工种提前退休、因病退休）审批服务指南', '办事指南', 'fjl', '2018/05/01', '我是办事指南的一条数据', '', ''),
	(98, '职业技能鉴定机构审批服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(99, '台港澳人员在内地就业许可服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(100, '外国人来华工作许可服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(101, '经营劳务派遣业务许可服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(102, '特殊工时制度审批服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(103, '中外合资（合作）人力资源服务机构许可服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(104, '民办职业培训学校审批服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(105, '民办职业培训学校审批服务指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(106, '达州市劳动能力鉴定须知', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(107, '达州市工伤认定工作须知', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(108, '四川调整工伤人员待遇 1-4级伤残每月增加230元', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(109, '异地居住者养老金怎么领？', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(110, '工伤保险政策知识问答', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(111, '生育保险政策知识问答', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(112, '行政权力事项办事指南和办理流程', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(113, '城乡居民基本养老保险政策知识问答', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(114, '行政权力事项办事指南（行政许可）', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(115, '机关事业单位养老保险政策知识问答', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(116, '企业职工基本养老保险政策知识问答', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(117, '基本医疗保险异地就医政策知识问答', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(118, '集体合同审查办事指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(119, '市本级基本医疗保险定点零售药店资格审定办事指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(120, '市本级基本医疗保险定点医疗机构资格审定办事指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(121, '职业技能鉴定机构审批办事指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(122, '职业介绍机构资格认定办事指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(123, '民办职业培训学校审批办事指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(124, '特殊工时制度审批办事指南', '办事指南', 'fjl', '2018/05/01', '', '', ''),
	(125, '工伤认定（初审）办事指南', '办事指南', 'fjl', '2018/05/01', '一、适用范围\r\n\r\n各类企业、社会组织、个人申办民办职业培训学校的申请和办理。\r\n\r\n二、法定依据\r\n\r\n（一）《劳动法》（主席令第28号）第六十九条；第六十九条 国家确定职业分类，对规定的职业制定职业技能标准，实行职业资格证书制度，由经过政府批准的考核鉴定机构负责对劳动者实施职业技能考核鉴定。   \r\n\r\n      （二）劳动部《职业技能鉴定规定》（劳部发〔1993〕134号）第十条（二)申请建立职业技能鉴定站（所）的单位，根据上述条件和省、自治区、直辖市的具体规定，报当地劳动行政部门审查批准并由其发给《职业技能鉴定许可证》，明确鉴定的工种（专业）范围、等级和类别，同时授予统一的职业技能鉴定站（所）标牌。\r\n\r\n三、申请条件\r\n\r\n（一）具有与所鉴定工种（专业）及其等级或类别相适应的考核场地和设备；\r\n　　（二）具有与所鉴定工种（专业）及其等级或类别操作技能考核相适应的、符合国家标准的检测仪器；\r\n　　（三）有专（兼）职的组织管理人员和考评员；  \r\n\r\n（四）有完善的管理办法。\r\n四、申请材料\r\n\r\n序号\r\n 申请材料名称\r\n 申请材料要求\r\n 备注\r\n \r\n1\r\n 《四川省职业技能鉴定机构申报表》\r\n 原件3份\r\n 申请人可在达州市电子政务大厅和市政务服务大厅网站下载、市人社局审批窗口领取。见格式文本1。\r\n \r\n2\r\n 申请建立职业技能鉴定机构的请示\r\n 原件3份\r\n  \r\n \r\n3\r\n 规章制度和管理办法\r\n 原件3份\r\n  \r\n \r\n4\r\n 拟鉴定职业（工种）及鉴定级别需要的设施、设备及场地证明\r\n 原件1份及复印件2份\r\n  \r\n \r\n5\r\n 管理人员、符合考评员条件人员的有关材料\r\n 原件1份及复印件2份\r\n  \r\n \r\n6\r\n 申办单位资格、经费来源、固定资产、规模等证明\r\n 原件1份及复印件2份\r\n  \r\n \r\n\r\n\r\n五、办理程序\r\n\r\n（一）申请：申请人按照规定提出申请并提交相关资料报驻达州市政府政务服务中心的达州市人力资源和社会保障局窗口（简称：窗口）；\r\n\r\n   （二）受理：对资料不齐的，由窗口受理岗位工作人员填写补正材料通知书，并当场出具给申请人。对资料齐全的，由窗口受理岗工作人员填写《达州市人民政府政务服务中心部门服务事项受理通知书》；\r\n\r\n   （三）现场勘查：窗口首席代表组织专家和相关业务人员现场勘查，并出具勘查意见；\r\n\r\n（四）审查：窗口首席代表审查后，作出准予行政许可或不予行政许可的决定;\r\n\r\n（五）审批：窗口制作准予行政许可的文件，对不予行政许可的出具《不予行政许可决定书》并说明理由并告知权利。\r\n\r\n六、办理时限\r\n\r\n（一）法定时限：10个工作日。\r\n\r\n      （二）承诺时限：7个工作日，分别为转外2个工作日，审批4个工作日，办结发审批文件1个工作日。\r\n\r\n七、收费依据、收费标准\r\n\r\n不收费。\r\n\r\n八、审批决定证件\r\n\r\n《职业技能鉴定许可证》。\r\n\r\n十、联系方式\r\n\r\n（一）联系电话：\r\n\r\n驻市政务服务中心市人力资源社会保障局窗口：0818-2523213。\r\n\r\n（二）网址：\r\n\r\n市电子政务大厅：http://dzzwdt.dazhou.gov.cn\r\n\r\n    市政务服务中心：http://www.dzszw.gov.cn\r\n\r\n    市人力资源社会保障局：http://www.scdz.hrss.gov.cn\r\n\r\n（三）投诉电话\r\n\r\n四川省行政效能投诉电话：96960\r\n\r\n市政务服务中心：0818-2536663  \r\n\r\n市人力资源社会保障局：0818-3322209\r\n\r\n十一、注意事项\r\n\r\n   职业技能鉴定机构的资质不准转让。鉴定资格取缔后，须重新办理。\r\n\r\n', '', ''),
	(126, '2018年达州市达川区部分中小学校 公开招聘教师的公告', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(127, '万源市2017年事业单位面试资格复审结果及递补资格复审通知', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(128, '2017年“千名硕博进达州”行动引才公告', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(129, '我市打击高科技作弊成效显著', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(130, '关于2016年大竹县公招教师招聘递补人员加试成绩公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(131, '开江县关于2016年部分事业单位公招拟聘递补人员的公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(132, '渠县关于2016年部分事业单位招聘工作人员递补人员体检结果公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(133, '2016达川区教科系统招聘教师拟聘递补人员及选岗事宜的公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(134, '关于通川区2016年部分事业单位招聘工作人员递补拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(135, '2016年达川区卫计系统招聘工作人员拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(136, '关于通川区2016年部分事业单位招聘工作人员递补拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(137, '2016年达川区卫计系统招聘工作人员拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(138, '关于2016年市属部分事业单位公招第二批体检复检结果的公示', '事业单位招聘', 'fjl', '2018/05/01', '', '', ''),
	(139, '关于2016年达州中医学校公开招聘教师总成绩及排名公示', '事业单位招聘', 'fjl', '2018/05/01', '据中共达州市委组织部、达州市人力资源和社会保障局《关于2017年达州市部分事业单位招聘工作人员公告》（以下简称《公告》）规定，现将我县2017年部分事业单位（卫生系统）招聘工作人员递补资格复审等工作公告如下：\r\n一、递补资格复审工作\r\n（一）递补资格复审人员名单\r\n根据《公告》规定，确定了宣汉县2017年部分事业单位（卫生系统）招聘工作人员递补资格复审人员，人员名单见附件（501740岗位首轮体检有一个考生因孕期体检缺项，如补〈复〉检不合格，另行通知递补资格复审人员）。\r\n（二）资格复审时间\r\n2018年1月18日10:00-12:00。\r\n（三）资格复审地点\r\n宣汉县人社局事管股（602室）\r\n（三）资格复审所需材料\r\n1．本次报考网站上打印的本人报名表（1份）。\r\n2．本人身份证、毕业证、学位证、报考岗位所需资格证书原件和复印件各1套。\r\n3．机关、事业单位在编在职人员需提供用人单位和上级主管部门加盖公章的同意报考的书面证明，并注明有无基层最低服务年限或基层最低服务年限是否期满。\r\n二、体检工作\r\n（一）体检人员\r\n递补资格复审合格者作为本次体检人员。2018年1月19日08：00，所有递补体检人员到宣汉县人社局事管股报到并到指定医院参加体检。报到时，需出示本人笔试准考证、身份证，交一张与笔试准考证同底版的一寸彩色照片。\r\n（二）体检项目和标准\r\n体检项目和标准，参照公务员录用体检标准执行。\r\n初次体检确定为不合格者，三天内可申请复查一次。复查者的体检结果以复检医院结论为准。\r\n（三）体检注意事项\r\n1．体检人员需全程携带本人《笔试准考证》和身份证参加体检。体检费用由医院按标准收取，约350元。\r\n2．体检人员不得请他人代为体检。\r\n3．体检期间入闱封闭，体检顺序临时确定。体检人员应听从工作人员和体检医院医生安排，不准高声喧哗，不得擅离体检现场。体检人员亲朋不得随行到体检医院。\r\n4．体检时不得向体检医生介绍自己的姓名、单位和家庭情况等情况，不得单独与医生交谈。\r\n5．女性体检人员，如体检期间为月经期、孕期、产期的需主动告知检查医生。\r\n6．体检前一天请注意休息和饮食。体检当天早上需禁食、禁饮。\r\n7．体检人员不得携带任何通讯工具参加体检。已携带的，在集中时需按要求关闭电源后交由工作人员保管。未按规定交出通讯工具的，在体检过程中一经发现，取消体检资格。\r\n三、政审工作\r\n体检（复检）合格者，由用人单位主管部门组织政审。\r\n四、注意事项\r\n1．资格审查不合格或体检（复检）不合格者，不得进入招聘工作的下一环节。\r\n2．以上事项指定了时间节点的，均需在规定时间参加或完成。凡不在规定时间参加或完成的，均视为自动放弃，责任自负。', '', ''),
	(140, '2017年11月领证通知', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(141, '关于领取2017年卫生、中医药专业副高级技术资格考试合格证的通知', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(142, '2017年5月领证通知（第二批）', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(143, '2017年2月领证通知', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(144, '2016年度水电工程技术中级职务任职资格评审拟通过人员名单公示', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(145, '达州市2016年12月专业技术人员计算机应用能力考试成绩', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(146, '2016年度技校教师中初级职务任职资格评审拟通过人员名单公示', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(147, '卫生副高领证通知', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(148, '关于领取2016年9月职称计算机考试成绩合格证书的通知', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(149, '我市6月份职称计算机考试实现“零代考”', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(150, '关于领取2016年3月职称计算机考试成绩合格证书的通知', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(151, '关于2016年6月（第2次）全国职称计算机应用能力考试报名的通知', '职称资格考试', 'fjl', '2018/05/01', '', '', ''),
	(152, '关于办理2013年度会计专业技术资格证书的通告', '职称资格考试', 'fjl', '2018/05/01', '现将办理2013年度全国会计专业技术资格证书有关事宜通告如下：\r\n        一、办证范围：在达州报名，参加2013年度全国会计专业技术资格考试，且成绩合格的人员。\r\n        二、受理时间：2014年3月1日至2014年3月31日止（不含节假日），过期不予集中办理，责任自负。请考试合格的考生相互转告。\r\n        三、办证地点\r\n        凡是在达州市报名参加全国会计专业技术资格考试合格的考生，请到达州市人事考试中心（达州市南外华蜀南路市人力资源和社会保障局侧楼2楼，联系电话：0818-2123499）办理。\r\n        四、所需资料\r\n        1.本人同底版两寸彩色照片2张。\r\n        2.身份证复印件1张。\r\n        五、领证事宜\r\n        会计专业技术资格证书由四川省人事考试中心负责印制，印制完成后再通知各市（州）前去领取空白证书，且各市（州）领回空白证书后，将贴好考生照片的证书和登记表一同送往省厅盖章后方能领取。由于全省合格人数较多，逐一打印各市（州）的合格证书需要较长时间，请考生交表后，勿反复电话催促或询问，证书发放的具体时间、地点将公布在达州人事考试网，请随时关注网上信息。', '', ''),
	(153, '生育保险知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(154, '工伤保险知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(155, '城乡居民基本医疗保险知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(156, '职工基本医疗保险知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(157, '城乡居民养老保险知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(158, '城镇职工基本养老保险知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(159, '全民参保政策解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(160, '高校毕业生就业创业政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(161, '就业促进政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(162, '失业保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(163, '工伤保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(164, '生育保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(165, '行政权力事项办事指南和办理流程', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(166, '城乡居民基本养老保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(167, '机关事业单位养老保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(168, '企业职工基本养老保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(169, '基本医疗保险异地就医政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(170, '城镇居民基本医疗保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(171, '城镇职工基本医疗保险门诊特殊疾病政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(172, '城镇职工基本医疗保险政策知识问答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(173, '失业保险常见问题解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(174, '生育保险常见问题解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(175, '企业职工基本养老保险常见问题解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(176, '劳动争议调解仲裁常见问题解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(177, '就业促进常见问题解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(178, '基本医疗保险常见问题解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(179, '工伤保险常见问题解答', '常见问题', 'fjl', '2018/05/01', '', '', ''),
	(180, '达州市城乡居民基本养老保险制度常见问题解答', '常见问题', 'fjl', '2018/05/01', '1．城乡居民基本养老保险制度参保人群是哪些？\r\n\r\n　　答：年满16周岁（不含在校学生），非国家机关和事业单位工作人员、以及不属于职工基本养老保险制度覆盖范围的城乡居民，可以在户籍地参加城乡居民养老保险。\r\n\r\n　　2．城乡居民养老保险基金由哪几个部份构成？参保人目前有哪些缴费档次可以选择？\r\n\r\n答：城乡居民养老保险基金由个人缴费、集体补助、政府补贴三部份构成。我市个人缴费标准目前设为14个档次，分别是：100元、200元、300元、400元、500元、600元、700元、800元、900元、1000元、1500元、2000元、3000元和最高缴费档次（最高缴费档次缴费金额按当年全省灵活就业人员参加职工基本养老保险最低缴费比例确定）。2014年我市最高缴费档次缴费金额为3900元。\r\n\r\n3．政府缴费补贴和集体补助标准是什么？\r\n\r\n答：政府补贴方面，各级政府应对参保人缴费给予补贴，补贴标准不低于40元/年·人。对选择100元、200元、300元、400元、500元、600元、700元、800元、900元、1000元、1500元、2000元、3000元档次和最高缴费档次缴费的，政府补贴分别对应为每人每年40元、40元、45元、50元、60元、60元、65元，70元、75元、80元、100元、120元、160元、160元。有条件的村集体经济组织应当对参保人缴费予以补助，补助标准由村委会召开村民会议民主确定，同时鼓励有条件的社区将集体补助纳入社会公益事业资金筹资范围。鼓励其他社会经济组织、公益慈善组织、个人为参保人缴费提供资助。补助、资助金额不超过当地设定的最高缴费档次标准。\r\n\r\n4．城乡居民养老保险待遇领取须具备哪些条件?\r\n\r\n答：参加城乡居民养老保险的个人，年满60周岁、累计缴费满15年，且未领取国家规定的基本养老保障待遇的，可以按月领取城乡居民养老保险待遇。新农保或城居保制度实施时，已年满60周岁，在国家《实施意见》发布之日前未领取国家规定的基本养老保障待遇的，不用缴费，自意见实施之日起，可以按月领取城乡居民养老保险基础养老金；距规定领取年龄不足15年的，应逐年缴费，允许补缴，累计缴费不超过15年；距规定领取年龄超过15年的，应按年缴费，累计缴费不少于15年。\r\n\r\n5．养老金待遇如何计算？\r\n\r\n养老金待遇由基础养老金和个人账户养老金组成。基础养老金标准目前为每人每月75元，国家根据经济发展和物价变动等情况，适时调整基础养老金标准。个人账户养老金的月计发标准为个人账户存储额（包括历年个人缴费、政府补贴、集体补助、利息）除以139。\r\n\r\n6．城乡居民基本养老保险制度如何体现长缴多得？\r\n\r\n　　答: 参保缴费人员达到待遇领取年龄时，正常缴费年限超过15年的，每超过1年，基础养老金每月增加2元。\r\n\r\n　　7．个人账户养老金能否提前支取？\r\n\r\n答：个人账户储存额只能用于个人账户养老金的支付，除出国（境）定居、死亡等情形外，不得提前支取或挪作他用。\r\n\r\n8．城乡居民保险参保人员死亡后是否可以继承？\r\n\r\n答：参保人死亡，个人账户资金余额可以依法继承。\r\n\r\n　　9．参保的城乡居民死亡后有丧葬补助金吗？\r\n\r\n答：城乡居民养老保险参保人员死亡后应当发放丧葬补助金。达到待遇领取条件的参保人员死亡的，丧葬补助金按其死亡当月养老金标准12个月计发；未达到待遇领取条件的参保人员死亡的，丧葬补助金按基础养老金6个月计发（但不超过其缴费总额，特殊缴费群体除外）。\r\n\r\n10．城乡居民基本养老保险制度如何体现对特殊群体人员的政策扶持？\r\n\r\n答：对重度残疾人（二级以上残疾）、独生子女伤残死亡家庭（三级以上残疾或死亡且未再生育或收养子女的家庭）夫妻，各县（市、区）政府按每人每年100元的标准为其代缴养老保险费。\r\n\r\n11．如何防止参保人重复领取和虚报冒领养老保险待遇？\r\n\r\n　　答：为防止参保人重复领取待遇和虚报冒领，各县（市、区）每年要对城乡居民养老保险待遇领取人员进行资格认证，与职工养老保险待遇等领取记录进行比对，确保不重、不漏、不虚报冒领。村（居）民委员会要在村（社区）范围内，对参保人待遇领取资格进行公示。\r\n\r\n12．城乡居民养老保险是否可以异地转移？\r\n\r\n答：参加城乡居民基本养老保险的人员，在缴费期间因户籍迁移需要跨地区转移城乡居民养老保险关系的，可以在迁入地申请转移养老保险关系，一次性转移个人账户全部储存额，并按迁入地规定继续参保缴费，缴费年限累计计算。已经按规定领取城乡居民养老保险待遇的，无论户籍是否迁移，其养老保险关系都不转移。\r\n\r\n13．城乡居民社会养老保险与城镇职工养老保险是否可以相互转移？\r\n\r\n答：根据参保人个人意愿，城乡居民社会养老保险与城镇职工养老保险制度间可以相互转移。但已领取待遇人员不得转移。\r\n', '', ''),
	(181, '达州市劳动监察支队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '', '', ''),
	(182, '达川区劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '', '', ''),
	(183, '通川区劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '', '', ''),
	(184, '大竹县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '', '', ''),
	(185, '渠县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '', '', ''),
	(186, '宣汉县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '', '', ''),
	(187, '开江县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '', '', ''),
	(188, '万源市劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '       万源市劳动保障监察大队举报投诉电话：8730315\r\n \r\n', 'timg.jpg', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\upload\\timg.jpg'),
	(189, '1', '政策法规', 'fjl', '1', '1', 'logo.jpg', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\upload\\logo.jpg'),
	(190, '22', '政策法规', 'fjl', '', '', 'banner.jpg', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate\\upload\\banner.jpg');
/*!40000 ALTER TABLE `pub` ENABLE KEYS */;


-- 导出  表 myweb.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  `pwd` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.user 的数据：~1 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `userName`, `pwd`) VALUES
	(2, 'fjl', '123456'),
	(3, 'sicnu', '12345678');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
