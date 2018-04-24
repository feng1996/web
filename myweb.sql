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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.file 的数据：~9 rows (大约)
DELETE FROM `file`;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`fid`, `fileName`, `path`, `downNum`, `userName`) VALUES
	(59, '资料下载测试文件1.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 2, 'fjl'),
	(60, '资料下载测试文件5.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 1, 'fjl'),
	(61, '资料下载测试文件7.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 1, 'fjl'),
	(62, '资料下载测试文件9.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 0, 'fjl'),
	(63, '资料下载测试文件6.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 10, 'fjl'),
	(64, '资料下载测试文件2.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 0, 'fjl'),
	(65, '资料下载测试文件3.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 3, 'fjl'),
	(66, '资料下载测试文件8.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 1, 'fjl'),
	(67, '资料下载测试文件4.docx', 'D:\\eclipse--workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MyGraduate2\\WEB-INF\\Drive\\null', 0, 'fjl');
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
	(53, '四川师范大学教务处主页', '666666', '其它', '', '', '', '', '', '', 'http://jwc.sicnu.edu.cn/');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;


-- 导出  表 myweb.pub 结构
CREATE TABLE IF NOT EXISTS `pub` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pubTitle` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubType` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubUser` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubTime` varchar(50) COLLATE utf8_bin NOT NULL,
  `pubContent` varchar(10000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.pub 的数据：~135 rows (大约)
DELETE FROM `pub`;
/*!40000 ALTER TABLE `pub` DISABLE KEYS */;
INSERT INTO `pub` (`pid`, `pubTitle`, `pubType`, `pubUser`, `pubTime`, `pubContent`) VALUES
	(54, '我市实施“人才强市”推进人才创新转型发展', '新闻中心', 'fjl', '2018/05/01', '我是新闻中心的一条数据'),
	(55, '达州市人社局组团参加第十六届中国国际人才交流大会', '新闻中心', 'fjl', '2018/05/01', ''),
	(56, '市人社局王隆毅局长调研市高级技工学校新区建设工作', '新闻中心', 'fjl', '2018/05/01', ''),
	(57, '我市启动市、县、乡、村四级人社公共服务事项', '新闻中心', 'fjl', '2018/04/23', ''),
	(58, '市人社局召开党建工作暨业务培训会', '新闻中心', 'fjl', '2018/04/23', ''),
	(59, '缅怀革命先烈 弘扬优良传统——达州市人社局开展4月“党员活动日”活动', '新闻中心', 'fjl', '2018/04/23', ''),
	(60, '市人社局“九大举措”力促信息宣传工作', '新闻中心', 'fjl', '2018/04/23', ''),
	(61, '春风吹暖烟灯村—王隆毅同志带队深入扶贫联系村调研', '新闻中心', 'fjl', '2018/04/23', ''),
	(62, '市人社局学习贯彻十九届三中全会精神', '新闻中心', 'fjl', '2018/04/18', ''),
	(63, '达州市多管齐下打造群众满意的退休人员生存认证服务', '新闻中心', 'fjl', '2018/04/18', ''),
	(64, '我市成立协调劳动关系三方委员会', '新闻中心', 'fjl', '2018/04/18', ''),
	(65, '达州市就业创业凸显“四新”', '新闻中心', 'fjl', '2018/04/18', ''),
	(66, '省职业技能鉴定指导中心调研我市职业技能鉴定工作', '新闻中心', 'fjl', '2018/04/18', ''),
	(67, '达州市人社局召开卸任领导职务干部座谈会', '新闻中心', 'fjl', '2018/04/16', ''),
	(68, '全市“四精四清”助推就业困难人员就业', '新闻中心', 'fjl', '2018/04/16', ''),
	(69, '市人社局“九大举措”力促信息宣传工作', '新闻中心', 'fjl', '2018/04/16', ''),
	(70, '我市开展“全民参保”为主题的 12333全国咨询日宣传活动', '新闻中心', 'fjl', '2018/04/16', ''),
	(71, '我市出台失业保险业务经办内控管理办法', '新闻中心', 'fjl', '2018/04/16', ''),
	(72, '市人社局学习贯彻十九届二中全会精神', '新闻中心', 'fjl', '2018/04/05', ''),
	(73, '省外国专家局王建红局长一行调研达州引智工作', '新闻中心', 'fjl', '2018/04/05', ''),
	(74, '市人社局组织户外活动庆祝“三八”妇女节', '新闻中心', 'fjl', '2018/04/05', ''),
	(75, '省人社厅李强副厅长一行来达调研和谐 劳动关系工作', '新闻中心', 'fjl', '2018/04/05', ''),
	(76, '达州“四轮驱动”破解节后“用工荒”', '新闻中心', 'fjl', '2018/04/05', ''),
	(77, '达州主城区隆重举办2018年春风行动暨就业扶贫招聘会', '新闻中心', 'fjl', '2018/04/02', ''),
	(78, '人社部来达调研春节后企业用工及转移就业', '新闻中心', 'fjl', '2018/04/02', ''),
	(79, '全市人社统计培训会议召开', '新闻中心', 'fjl', '2018/04/02', ''),
	(80, '达州市“就业援助月”活动帮扶938名就业困难人员就业', '新闻中心', 'fjl', '2018/04/02', ''),
	(81, '市人社局领导班子节后上班首日看望慰问干部职工', '新闻中心', 'fjl', '2018/04/02', ''),
	(82, '人社系统先进集体和工作者事迹视频', '新闻中心', 'fjl', '2018/04/01', ''),
	(83, '市人社局深入扶贫联系村走访慰问', '新闻中心', 'fjl', '2018/04/01', ''),
	(84, '市人力资源社会保障局召开2017年度总结表彰暨新春团拜会', '新闻中心', 'fjl', '2018/04/01', ''),
	(85, '节前慰问老干部 浓浓关怀暖人心', '新闻中心', 'fjl', '2018/04/01', ''),
	(86, '省农劳办慰问组赴达开展送温暖走访慰问农民工活动', '新闻中心', 'fjl', '2018/04/01', ''),
	(87, '关于印发《关于加强基层专业技术人才队伍建设的实施意见》的通知', '政策法规', 'fjl', '2018/05/01', '我是政策法规的一条数据'),
	(88, '人社部财政部印发通知要求阶段性降低失业保险费率', '政策法规', 'fjl', '2018/05/01', ''),
	(89, '我省农民工等人员返乡创业政策解读', '政策法规', 'fjl', '2018/05/01', ''),
	(90, '中华人民共和国劳动法', '政策法规', 'fjl', '2018/05/01', ''),
	(91, '中华人民共和国公务员法', '政策法规', 'fjl', '2018/05/01', ''),
	(92, '中华人民共和国社会保险法', '政策法规', 'fjl', '2018/05/01', ''),
	(93, '中华人民共和国就业促进法', '政策法规', 'fjl', '2018/05/01', ''),
	(94, '中华人民共和国劳动合同法', '政策法规', 'fjl', '2018/05/01', ''),
	(95, '中华人民共和国劳动合同法实施条例', '政策法规', 'fjl', '2018/05/01', ''),
	(96, '中华人民共和国劳动争议调解仲裁法', '政策法规', 'fjl', '2018/05/01', ''),
	(97, '市本级企业职工退休（特殊工种提前退休、因病退休）审批服务指南', '办事指南', 'fjl', '2018/05/01', '我是办事指南的一条数据'),
	(98, '职业技能鉴定机构审批服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(99, '台港澳人员在内地就业许可服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(100, '外国人来华工作许可服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(101, '经营劳务派遣业务许可服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(102, '特殊工时制度审批服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(103, '中外合资（合作）人力资源服务机构许可服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(104, '民办职业培训学校审批服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(105, '民办职业培训学校审批服务指南', '办事指南', 'fjl', '2018/05/01', ''),
	(106, '达州市劳动能力鉴定须知', '办事指南', 'fjl', '2018/05/01', ''),
	(107, '达州市工伤认定工作须知', '办事指南', 'fjl', '2018/05/01', ''),
	(108, '四川调整工伤人员待遇 1-4级伤残每月增加230元', '办事指南', 'fjl', '2018/05/01', ''),
	(109, '异地居住者养老金怎么领？', '办事指南', 'fjl', '2018/05/01', ''),
	(110, '工伤保险政策知识问答', '办事指南', 'fjl', '2018/05/01', ''),
	(111, '生育保险政策知识问答', '办事指南', 'fjl', '2018/05/01', ''),
	(112, '行政权力事项办事指南和办理流程', '办事指南', 'fjl', '2018/05/01', ''),
	(113, '城乡居民基本养老保险政策知识问答', '办事指南', 'fjl', '2018/05/01', ''),
	(114, '行政权力事项办事指南（行政许可）', '办事指南', 'fjl', '2018/05/01', ''),
	(115, '机关事业单位养老保险政策知识问答', '办事指南', 'fjl', '2018/05/01', ''),
	(116, '企业职工基本养老保险政策知识问答', '办事指南', 'fjl', '2018/05/01', ''),
	(117, '基本医疗保险异地就医政策知识问答', '办事指南', 'fjl', '2018/05/01', ''),
	(118, '集体合同审查办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(119, '市本级基本医疗保险定点零售药店资格审定办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(120, '市本级基本医疗保险定点医疗机构资格审定办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(121, '职业技能鉴定机构审批办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(122, '职业介绍机构资格认定办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(123, '民办职业培训学校审批办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(124, '特殊工时制度审批办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(125, '工伤认定（初审）办事指南', '办事指南', 'fjl', '2018/05/01', ''),
	(126, '2018年达州市达川区部分中小学校 公开招聘教师的公告', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(127, '万源市2017年事业单位面试资格复审结果及递补资格复审通知', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(128, '2017年“千名硕博进达州”行动引才公告', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(129, '我市打击高科技作弊成效显著', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(130, '关于2016年大竹县公招教师招聘递补人员加试成绩公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(131, '开江县关于2016年部分事业单位公招拟聘递补人员的公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(132, '渠县关于2016年部分事业单位招聘工作人员递补人员体检结果公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(133, '2016达川区教科系统招聘教师拟聘递补人员及选岗事宜的公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(134, '关于通川区2016年部分事业单位招聘工作人员递补拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(135, '2016年达川区卫计系统招聘工作人员拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(136, '关于通川区2016年部分事业单位招聘工作人员递补拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(137, '2016年达川区卫计系统招聘工作人员拟聘人员公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(138, '关于2016年市属部分事业单位公招第二批体检复检结果的公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(139, '关于2016年达州中医学校公开招聘教师总成绩及排名公示', '事业单位招聘', 'fjl', '2018/05/01', ''),
	(140, '2017年11月领证通知', '职称资格考试', 'fjl', '2018/05/01', ''),
	(141, '关于领取2017年卫生、中医药专业副高级技术资格考试合格证的通知', '职称资格考试', 'fjl', '2018/05/01', ''),
	(142, '2017年5月领证通知（第二批）', '职称资格考试', 'fjl', '2018/05/01', ''),
	(143, '2017年2月领证通知', '职称资格考试', 'fjl', '2018/05/01', ''),
	(144, '2016年度水电工程技术中级职务任职资格评审拟通过人员名单公示', '职称资格考试', 'fjl', '2018/05/01', ''),
	(145, '达州市2016年12月专业技术人员计算机应用能力考试成绩', '职称资格考试', 'fjl', '2018/05/01', ''),
	(146, '2016年度技校教师中初级职务任职资格评审拟通过人员名单公示', '职称资格考试', 'fjl', '2018/05/01', ''),
	(147, '卫生副高领证通知', '职称资格考试', 'fjl', '2018/05/01', ''),
	(148, '关于领取2016年9月职称计算机考试成绩合格证书的通知', '职称资格考试', 'fjl', '2018/05/01', ''),
	(149, '我市6月份职称计算机考试实现“零代考”', '职称资格考试', 'fjl', '2018/05/01', ''),
	(150, '关于领取2016年3月职称计算机考试成绩合格证书的通知', '职称资格考试', 'fjl', '2018/05/01', ''),
	(151, '关于2016年6月（第2次）全国职称计算机应用能力考试报名的通知', '职称资格考试', 'fjl', '2018/05/01', ''),
	(152, '关于办理2013年度会计专业技术资格证书的通告', '职称资格考试', 'fjl', '2018/05/01', ''),
	(153, '生育保险知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(154, '工伤保险知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(155, '城乡居民基本医疗保险知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(156, '职工基本医疗保险知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(157, '城乡居民养老保险知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(158, '城镇职工基本养老保险知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(159, '全民参保政策解答', '常见问题', 'fjl', '2018/05/01', ''),
	(160, '高校毕业生就业创业政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(161, '就业促进政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(162, '失业保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(163, '工伤保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(164, '生育保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(165, '行政权力事项办事指南和办理流程', '常见问题', 'fjl', '2018/05/01', ''),
	(166, '城乡居民基本养老保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(167, '机关事业单位养老保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(168, '企业职工基本养老保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(169, '基本医疗保险异地就医政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(170, '城镇居民基本医疗保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(171, '城镇职工基本医疗保险门诊特殊疾病政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(172, '城镇职工基本医疗保险政策知识问答', '常见问题', 'fjl', '2018/05/01', ''),
	(173, '失业保险常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(174, '生育保险常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(175, '企业职工基本养老保险常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(176, '劳动争议调解仲裁常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(177, '就业促进常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(178, '基本医疗保险常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(179, '工伤保险常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(180, '达州市城乡居民基本养老保险制度常见问题解答', '常见问题', 'fjl', '2018/05/01', ''),
	(181, '达州市劳动监察支队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', ''),
	(182, '达川区劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', ''),
	(183, '通川区劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', ''),
	(184, '大竹县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', ''),
	(185, '渠县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', ''),
	(186, '宣汉县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', ''),
	(187, '开江县劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', ''),
	(188, '万源市劳动保障监察大队举报投诉电话', '举报投诉', 'fjl', '2018/05/01', '');
/*!40000 ALTER TABLE `pub` ENABLE KEYS */;


-- 导出  表 myweb.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  `pwd` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  myweb.user 的数据：~0 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `userName`, `pwd`) VALUES
	(2, 'fjl', '123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
