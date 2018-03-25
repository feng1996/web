package com.feng.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.feng.dao.BaseDao;
import com.feng.dao.PubDao;
import com.feng.dao.RSProcessor;
import com.feng.entity.PubManage;

public class PubDaoImpl extends BaseDao implements PubDao {

	

	@Override
	public int insert(PubManage pub) {
		System.out.println("yes");
		String sql = "insert pub (pubTitle,pubType,pubUser,pubTime,pubContent) values(?,?,?,?,?)";
		Object[] params = { pub.getPubTitle(), pub.getPubType(), pub.getPubUser(),pub.getPubTime(), pub.getPubContent() };
		return this.executeUpdate(sql, params);
	}


	@Override
	public int delPubByTitle(String pubTitle) {
		String sql = "delete from pub where pubTitle = ?";
		Object[] params = { pubTitle };
		return this.executeUpdate(sql, params);
	}

	
	@Override
	public PubManage getPubByTitle(String pubTitle) {
		String sql = "select pubTitle,pubType,pubUser,pubTime,pubContent from pub where pubTitle = ?";
		Object[] params = {pubTitle};
		RSProcessor rsp = new RSProcessor() {
			@Override
			public Object process(ResultSet rs) throws SQLException {
				PubManage pub = null;
				if(rs!=null&rs.next()) {
					String pubTitle = rs.getString("pubTitle");
					String pubType = rs.getString("pubType");
					String pubUser = rs.getString("pubUser");
					String pubTime = rs.getString("pubTime");
					String pubContent = rs.getString("pubContent");
					pub = new PubManage(pubTitle,pubType,pubUser,pubTime,pubContent);
				}
				return pub;
			}
		};
		return (PubManage)this.executeQuery(rsp,sql,params);
	}
	
}
