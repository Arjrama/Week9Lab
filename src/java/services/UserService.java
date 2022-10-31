/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;
import dataaccess.UserDB;
import models.Role;
import models.User;
import java.util.List;

/**
 *
 * @author Arjun
 */
public class UserService {
    private UserDB userDB = new UserDB();
    
    public User get(String email) throws Exception {
        User user = this.UserDB(email);
        return user;
    }
    
    public List<User> getAll() throws Exception {
        List<User> users = this.UserDB();
    }
    
    
    
}
