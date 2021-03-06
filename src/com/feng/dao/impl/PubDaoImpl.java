package com.feng.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import com.feng.dao.BaseDao;
import com.feng.dao.PubDao;
import com.feng.dao.RSProcessor;
import com.feng.entity.PubManage;

public class PubDaoImpl extends BaseDao implements PubDao {

	

	@Override
	public int insert(PubManage pub) {
		System.out.println("insert");
		String sql = "insert pub (pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL) values(?,?,?,?,?,?,?)";
		Object[] params = { pub.getPubTitle(), pub.getPubType(), pub.getPubUser(),pub.getPubTime(), pub.getPubContent(),pub.getImgName(),pub.getImgURL() };
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
						String imgName = rs.getString("imgName");
						String imgURL = rs.getString("imgURL");
						pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					}
				}

				return pub;

			}
		};

		return (PubManage) this.executeQuery(getUserByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getPub() {
		String sql = "select * from pub order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getPolicyPub() {
		String sql = "select * from pub where pubType = '政策法规' order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getNewsPub() {
		String sql = "select * from pub where pubType = '新闻中心' order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getBsznPub() {
		String sql = "select * from pub where pubType = '办事指南' order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getSydwzpPub() {
		String sql = "select * from pub where pubType = '事业单位招聘' order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getZczgksPub() {
		String sql = "select * from pub where pubType = '职称资格考试' order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getCjwtPub() {
		String sql = "select * from pub where pubType = '常见问题' order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getJbtsPub() {
		String sql = "select * from pub where pubType = '举报投诉' order by pid desc";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getPolicyPubLimit() {
		String sql = "select * from pub where pubType = '政策法规' order by pid desc limit 8";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getNewsPubLimit() {
		String sql = "select * from pub where pubType = '新闻中心' order by pid desc limit 8";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getSydwzpPubLimit() {
		String sql = "select * from pub where pubType = '事业单位招聘' order by pid desc limit 8";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getZczgksPubLimit() {
		String sql = "select * from pub where pubType = '职称资格考试' order by pid desc limit 8";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<PubManage> getBsznsPubLimit() {
		String sql = "select * from pub where pubType = '办事指南' order by pid desc limit 8";
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
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
		String sql = "update pub set pubTitle=?,pubType=?,pubUser=?,pubTime=?,pubContent=?,imgName=?,imgURL=? where pid=?";
		Object[] params = { pub.getPubTitle(), pub.getPubType(), pub.getPubUser(),pub.getPubTime(), pub.getPubContent(),pub.getImgName(),pub.getImgURL(), pub.getPid() };
		return this.executeUpdate(sql, params);
	}
	
	@Override
    public List<PubManage> findPolicyPubs(int page, int count){
		
		String sql = "select * from pub where pubType = '政策法规' order by pid desc LIMIT ?,?";
		Object[] params = { (page-1)*count,count };
		
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (List<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
       
    
    }
	
	@Override
    public List<PubManage> findNewsPubs(int page, int count){
		
		String sql = "select * from pub where pubType = '新闻中心' order by pid desc LIMIT ?,?";
		Object[] params = { (page-1)*count,count };
		
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (List<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
       
    
    }

    @Override
    public int count(String pubType) {
    	
    	String sql = "select count(*) from pub where pubType = ?";
		Object[] params = {pubType };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
		int count = 0;
        if (rs.next()) {
            count = rs.getInt(1);
        }
        return count;
			}
		};

  
        
		return (int) this.executeQuery(getUsersByNameProcessor, sql, params);  
    }
    
    @Override
    public Vector<PubManage> getPolicySearch(String sw){
    	String sql = "select * from pub where pubType = '政策法规' and pubTitle like ?";
		Object[] params = {'%'+sw+'%'};
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
    }
    
    @Override
    public Vector<PubManage> getNewsSearch(String sw){
    	String sql = "select * from pub where pubType = '新闻中心' and pubTitle like ?";
		Object[] params = {'%'+sw+'%'};
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
    }
    
    @Override
    public Vector<PubManage> getHallSearch(String sw){
    	String sql = "select * from pub where (pubType = '办事指南' or pubType = '事业单位招聘' or pubType = '职称资格考试' or pubType = '常见问题' or pubType = '举报投诉') and pubTitle like ?";
		Object[] params = {'%'+sw+'%'};
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
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					pubs.add(pub);
				}
				return pubs;
			}
		};

		return (Vector<PubManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
    }
    
    
    @Override
    public List<String> getPolicyKeyword(String keyword){
    	String sql = "select * from pub where pubType = '政策法规' and pubTitle like ?";
		Object[] params = {'%'+keyword+'%'};
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				List<String> datas = new ArrayList<String>();
				while (rs.next()) {	
					int pid = rs.getInt("pid");
					String pubTitle = rs.getString("pubTitle");
					String pubType = rs.getString("pubType");
					String pubUser = rs.getString("pubUser");
					String pubTime = rs.getString("pubTime");
					String pubContent = rs.getString("pubContent");
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					datas.add(pub.getPubTitle());
				}
				return datas;
			}
		};

		return (List<String>) this.executeQuery(getUsersByNameProcessor, sql, params);
    }
    
    @Override
    public List<String> getNewsKeyword(String keyword){
    	String sql = "select * from pub where pubType = '新闻中心' and pubTitle like ?";
		Object[] params = {'%'+keyword+'%'};
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				List<String> datas = new ArrayList<String>();
				while (rs.next()) {	
					int pid = rs.getInt("pid");
					String pubTitle = rs.getString("pubTitle");
					String pubType = rs.getString("pubType");
					String pubUser = rs.getString("pubUser");
					String pubTime = rs.getString("pubTime");
					String pubContent = rs.getString("pubContent");
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					datas.add(pub.getPubTitle());
				}
				return datas;
			}
		};

		return (List<String>) this.executeQuery(getUsersByNameProcessor, sql, params);
    }
    
    @Override
    public List<String> getHallKeyword(String keyword){
    	String sql = "select * from pub where (pubType = '办事指南' or pubType = '事业单位招聘' or pubType = '职称资格考试' or pubType = '常见问题' or pubType = '举报投诉') and pubTitle like ?";
		Object[] params = {'%'+keyword+'%'};
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				List<String> datas = new ArrayList<String>();
				while (rs.next()) {	
					int pid = rs.getInt("pid");
					String pubTitle = rs.getString("pubTitle");
					String pubType = rs.getString("pubType");
					String pubUser = rs.getString("pubUser");
					String pubTime = rs.getString("pubTime");
					String pubContent = rs.getString("pubContent");
					String imgName = rs.getString("imgName");
					String imgURL = rs.getString("imgURL");
					PubManage pub = new PubManage(pid,pubTitle,pubType,pubUser,pubTime,pubContent,imgName,imgURL);
					datas.add(pub.getPubTitle());
				}
				return datas;
			}
		};

		return (List<String>) this.executeQuery(getUsersByNameProcessor, sql, params);
    }
}
