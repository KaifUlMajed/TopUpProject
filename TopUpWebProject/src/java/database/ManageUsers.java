/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Kaif Ul Majed
 */
import dao.User;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ManageUsers {

    private static SessionFactory factory;

    public ManageUsers() {
        try {
            factory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Failed to create sessionFactory object." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    public Integer addUser(User u){
        Integer id = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            id = (Integer)session.save(u);
            tx.commit();
        }catch(HibernateException he){
            if (tx!=null) tx.rollback();
            he.printStackTrace();
        }
        finally{
            session.close();
        }
        return id;        
    }
    public User getUSer(String id, String pass){
        User u = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            List students = session.createQuery("FROM User").list();
            for (Iterator it = students.iterator(); it.hasNext();){
                User user = (User) it.next();
                if (user.getUsername().equals(id) && (user.getPassword().equals(pass))){
                    u = user;
                    break;
                }
            }
            tx.commit();
            
            
        }catch(HibernateException he){
            if (tx!=null) tx.rollback();
            he.printStackTrace();
        }
        finally{
            session.close();
        }
        return u;
             
    }
}
