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
		System.out.println("insert");
		String sql = "insert pub (pubTitle,pubType,pubUser,pubTime,pubContent) values(?,?,?,?,?)";
		Object[] params = { pub.getPubTitle(), pub.getPubType(), pub.getPubUser(),pub.getPubTime(), pub.getPubContent() };
		return this.executeUpdate(sql, params);
	}


	@Override
	public PubManage findPubByID(String pid) {
		String sql = "select * from pub where pid = ?";
		Object[] params = { pid };

		RSProcessor getUserByNameProcessor = new RSProcessor() {

			public Object process(ResultSet rs) throws SQLException {
				PubManage pub = null;

				if (rs != null) {
					if (rs.next()) {
						int pid = rs.getInt("pid");
						String pubTitle = rs.getString("pubTitle");
						String pubType = rs.getString("pubType");
						String pubUser = rs.getString("pubUser");
						String pubTime = rs.getString("pubTime");
						String pubContent = rs.getString("pubContent");
						pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent);
					}
				}

				return pub;

			}
		};

		return (PubManage) this.executeQuery(getUserByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getPub() {
		String sql = "select * from pub";
		Object[] params = { };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<PubManage> pubs = new Vector<PubManage>();
				while (rs.next()) {	
					int pid = rs.getInt("pid");
					String pubTitle = rs.getString("pubTitle");
					String pubType = rs.getString("pubType");
					String pubUser = rs.getString("pubUser");
					String pubTime = rs.getString("pubTime");
					String pubContent = rs.getString("pubContent");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	
	@Override
	public int delPubByPid(int pid) {
		String sql = "delete from pub where pid = ?";
		Object[] params = {pid};
		return this.executeUpdate(sql,params);
	}
	
	
	@Override
	public int update(PubManage pub) {
		System.out.println("update");
		String sql = "update pub set pubTitle=?,pubType=?,pubUser=?,pubTime=?,pubContent=? where pid=?";
		Object[] params = { pub.getPubTitle(), pub.getPubType(), pub.getPubUser(),pub.getPubTime(), pub.getPubContent(), pub.getPid() };
		return this.executeUpdate(sql, params);
	}
}
