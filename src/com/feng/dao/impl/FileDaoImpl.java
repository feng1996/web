package com.feng.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import com.feng.dao.BaseDao;
import com.feng.dao.FileDao;
import com.feng.dao.RSProcessor;
import com.feng.entity.FileManage;

public class FileDaoImpl extends BaseDao implements FileDao {

	

	@Override
	public int insert(FileManage file) {
		System.out.println("insert");
		String sql = "insert file (fileName,path,downNum,userName) values(?,?,?,?)";
		Object[] params = { file.getFileName(),file.getPath(),file.getDownNum(),file.getUserName()};
		return this.executeUpdate(sql, params);
	}


	@Override
	public FileManage findFileByID(String fid) {
		String sql = "select * from file where fid = ?";
		Object[] params = { fid };

		RSProcessor getUserByNameProcessor = new RSProcessor() {

			public Object process(ResultSet rs) throws SQLException {
				FileManage file = null;

				if (rs != null) {
					if (rs.next()) {
						int fid = rs.getInt("fid");
						String fileName = rs.getString("fileName");
						String path = rs.getString("path");
						int downNum = rs.getInt("downNum");
						String userName = rs.getString("userName");
						file = new FileManage(fid,fileName,path,downNum,userName);
					}
				}

				return file;

			}
		};

		return (FileManage) this.executeQuery(getUserByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<FileManage> getFile() {
		String sql = "select * from file order by fid desc";
		Object[] params = { };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<FileManage> files = new Vector<FileManage>();
				while (rs.next()) {	
					int fid = rs.getInt("fid");
					String fileName = rs.getString("fileName");
					String path = rs.getString("path");
					int downNum = rs.getInt("downNum");
					String userName = rs.getString("userName");
					FileManage file = new FileManage(fid,fileName,path,downNum,userName);
					files.add(file);
				}
				return files;
			}
		};

		return (Vector<FileManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<FileManage> getFileLimit() {
		String sql = "select * from file order by fid desc limit 8";
		Object[] params = { };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<FileManage> files = new Vector<FileManage>();
				while (rs.next()) {	
					int fid = rs.getInt("fid");
					String fileName = rs.getString("fileName");
					String path = rs.getString("path");
					int downNum = rs.getInt("downNum");
					String userName = rs.getString("userName");
					FileManage file = new FileManage(fid,fileName,path,downNum,userName);
					files.add(file);
				}
				return files;
			}
		};

		return (Vector<FileManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	
	@Override
	public int delFileByFid(int fid) {
		String sql = "delete from file where fid = ?";
		Object[] params = {fid};
		return this.executeUpdate(sql,params);
	}
	
	
	@Override
    public List<FileManage> findFiles(int page, int count){
		
		String sql = "select * from file order by fid desc LIMIT ?,?";
		Object[] params = { (page-1)*count,count };
		
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<FileManage> files = new Vector<FileManage>();
				while (rs.next()) {	
					int fid = rs.getInt("fid");
					String fileName = rs.getString("fileName");
					String path = rs.getString("path");
					int downNum = rs.getInt("downNum");
					String userName = rs.getString("userName");
					FileManage file = new FileManage(fid,fileName,path,downNum,userName);
					files.add(file);
				}
				return files;
			}
		};

		return (List<FileManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
       
    
    }

	
	@Override
    public int count() {
    	
    	String sql = "select count(*) from file";
		Object[] params = {};
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
	public Vector<FileManage> getFileSearch(String sw) {
		String sql = "select * from file where fileName like ?";
		Object[] params = {'%'+sw+'%' };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<FileManage> files = new Vector<FileManage>();
				while (rs.next()) {	
					int fid = rs.getInt("fid");
					String fileName = rs.getString("fileName");
					String path = rs.getString("path");
					int downNum = rs.getInt("downNum");
					String userName = rs.getString("userName");
					FileManage file = new FileManage(fid,fileName,path,downNum,userName);
					files.add(file);
				}
				return files;
			}
		};

		return (Vector<FileManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public List<String> getFileKeyword(String keyword) {
		String sql = "select * from file where fileName like ?";
		Object[] params = {'%'+keyword+'%' };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				List<String> datas = new ArrayList<String>();
				while (rs.next()) {	
					int fid = rs.getInt("fid");
					String fileName = rs.getString("fileName");
					String path = rs.getString("path");
					int downNum = rs.getInt("downNum");
					String userName = rs.getString("userName");
					FileManage file = new FileManage(fid,fileName,path,downNum,userName);
					datas.add(file.getFileName());
				}
				return datas;
			}
		};

		return (List<String>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	@Override
	public int updateDownloadByFid(String fid) {
		String sql = "update file \r\n" + 
				"set downNum = downNum+1\r\n" + 
				"where fid = ?";
		Object[] params = { fid };
		return this.executeUpdate(sql, params);
	}
	
	@Override
	public Vector<FileManage> getHotFile() {
		String sql = "select * from file order by downNum desc limit 5";
		Object[] params = { };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<FileManage> files = new Vector<FileManage>();
				while (rs.next()) {
					
					int fid = rs.getInt("fid");
					String fileName = rs.getString("fileName");
					String path = rs.getString("path");
					int downNum = rs.getInt("downNum");
					String userName = rs.getString("userName");
					FileManage file = new FileManage(fid,fileName,path,downNum,userName);
					files.add(file);
				}
				return files;
			}
		};

		return (Vector<FileManage>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
}
