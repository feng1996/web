package com.feng.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
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
		String sql = "select * from file";
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
	
	
}
