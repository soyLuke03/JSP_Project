package com.jacaranda.DataAccess;

import java.sql.SQLException;

import com.jacaranda.User.User;
import com.jacaranda.User.UserException;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			UserDataAccess uda = new UserDataAccess();
			User u = new User("IamLuke","QwErTy_03");
			uda.comprobationUser(u);
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
