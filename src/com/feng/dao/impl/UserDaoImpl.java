package com.feng.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.feng.dao.BaseDao;
import com.feng.dao.RSProcessor;
import com.feng.dao.UserDao;
import com.feng.entity.PubManage;
import com.feng.entity.User;

public class UserDaoImpl extends BaseDao implements UserDao {

	@Override
	public User findUserByName(String name) {
		String sql = "select * from user where userName = ?";
		Object[] params = { name };

		RSProcessor getUserByNameProcessor = new RSProcessor() {

			public Object process(ResultSet rs) throws SQLException {
				User user = null;

				if (rs != null) {
					if (rs.next()) {
						String userName = rs.getString("userName");
						String pwd = rs.getString("pwd");
						user = new User(userName, pwd);
					}
				}

				return user;

			}
		};

		return (User) this.executeQuery(getUserByNameProcessor, sql, params);
	}
	
	@Override
	public int insert(User user) {
		System.out.println("insert");
		String sql = "insert user (userName,pwd) values(?,?)";
		Object[] params = { user.getUserName(),user.getPwd() };
		return this.executeUpdate(sql, params);
	}


	@Override
	public User findUserByID(String id) {
		String sql = "select * from user where id = ?";
		Object[] params = { id };

		RSProcessor getUserByNameProcessor = new RSProcessor() {

			public Object process(ResultSet rs) throws SQLException {
				User user = null;

				if (rs != null) {
					if (rs.next()) {
						int id = rs.getInt("id");
						String userName = rs.getString("userName");
						String pwd = rs.getString("pwd");
						user = new User(id,userName,pwd);
					}
				}

				return user;

			}
		};

		return (User) this.executeQuery(getUserByNameProcessor, sql, params);
	}
	
	@Override
	public Vector<User> getUser() {
		String sql = "select * from user";
		Object[] params = { };
		RSProcessor getUsersByNameProcessor = new RSProcessor() {
			public Object process(ResultSet rs) throws SQLException {
				Vector<User> users = new Vector<User>();
				while (rs.next()) {	
					int id = rs.getInt("id");
					String userName = rs.getString("userName");
					String pwd = rs.getString("pwd");
					User user = new User(id,userName,pwd);
					users.add(user);
				}
				return users;
			}
		};

		return (Vector<User>) this.executeQuery(getUsersByNameProcessor, sql, params);
	}
	
	
	@Override
	public int delUserByid(int id) {
		String sql = "delete from user where id = ?";
		Object[] params = {id};
		return this.executeUpdate(sql,params);
	}
	

}
