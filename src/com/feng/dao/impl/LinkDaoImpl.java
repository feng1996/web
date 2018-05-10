package com.feng.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import com.feng.dao.BaseDao;
import com.feng.dao.LinkDao;
import com.feng.dao.RSProcessor;
import com.feng.entity.Link;

public class LinkDaoImpl extends BaseDao implements LinkDao {

	

	@Override
	public int insert(Link link) {
		System.out.println("insert");
		String sql = "insert link (linkName,linkURL,addTime,note) values(?,?,?,?)";
		Object[] params = { link.getLinkName(), link.getLinkURL(), link.getAddTime(),link.getNote() };
		return this.executeUpdate(sql, params);
	}


	@Override
	public Link findLinkByID(String lid) {
		String sql = "select * from link where lid = ?";
		Object[] params = { lid };

		RSProcessor getUserByNameProcessor = new RSProcessor() {

			public Object process(ResultSet rs) throws SQLException {
				Link link = null;

				if (rs != null) {
					if (rs.next()) {
						int lid = rs.getInt("lid");
						String linkName = rs.getString("linkName");
						String linkURL = rs.getString("linkURL");
						String addTime = rs.getString("addTime");
						String note = rs.getString("note");						
						link = new Link(lid,linkName,linkURL,addTime,note);
					}
				}

				return link;

			}
		};

		return (Link) this.executeQuery(getUserByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<Link> getLink() {
		String sql = "select * from link order by lid desc";
		Object[] params = { };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<Link> links = new Vector<Link>();
				while (rs.next()) {	
					int lid = rs.getInt("lid");
					String linkName = rs.getString("linkName");
					String linkURL = rs.getString("linkURL");
					String addTime = rs.getString("addTime");
					String note = rs.getString("note");
					Link link = new Link(lid,linkName,linkURL,addTime,note);
					links.add(link);
				}
				return links;
			}
		};

		return (Vector<Link>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	
	@Override
	public int delLinkByLid(int lid) {
		String sql = "delete from link where lid = ?";
		Object[] params = {lid};
		return this.executeUpdate(sql,params);
	}
	
	
	@Override
	public Vector<Link> getLinkSearch(String sw) {
		String sql = "select * from link where linkName like ?";
		Object[] params = {'%'+sw+'%' };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<Link> links = new Vector<Link>();
				while (rs.next()) {	
					int lid = rs.getInt("lid");
					String linkName = rs.getString("linkName");
					String linkURL = rs.getString("linkURL");
					String addTime = rs.getString("addTime");
					String note = rs.getString("note");
					Link link = new Link(lid,linkName,linkURL,addTime,note);
					links.add(link);
				}
				return links;
			}
		};

		return (Vector<Link>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public List<String> getLinkKeyword(String keyword) {
		String sql = "select * from link where linkName like ?";
		Object[] params = {'%'+keyword+'%' };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				List<String> datas = new ArrayList<String>();
				while (rs.next()) {	
					int lid = rs.getInt("lid");
					String linkName = rs.getString("linkName");
					String linkURL = rs.getString("linkURL");
					String addTime = rs.getString("addTime");
					String note = rs.getString("note");
					Link link = new Link(lid,linkName,linkURL,addTime,note);
					datas.add(link.getLinkName());
				}
				return datas;
			}
		};

		return (List<String>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
}
