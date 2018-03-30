/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Kaif Ul Majed
 */
import model.Medicine;
import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ManageMedicine {
    private static SessionFactory factory;
    public ManageMedicine() {
        try {
            factory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Failed to create sessionFactory object." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    public Integer addMedicine(Medicine m){

        Integer id = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            id = (Integer)session.save(m);
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
    
    public List<Medicine> getMedByType(String type){
        List <Medicine> meds = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Query q = session.createQuery("FROM Medicine M WHERE M.type= :mtype");
            q.setParameter("mtype", type);
            meds = q.list();
            tx.commit();
        }catch(HibernateException he){
            if (tx!=null) tx.rollback();
            he.printStackTrace();
        }
        finally{
            session.close();
        }        
        return meds;
    }
    
    public List<Medicine> getMedByGenericName(String gn){
        List <Medicine> meds = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            meds = session.createQuery("FROM Medicine M WHERE M.generic_name=:gn" ).setParameter("gn", gn).list();
            tx.commit();
        }catch(HibernateException he){
            if (tx!=null) tx.rollback();
            he.printStackTrace();
        }
        finally{
            session.close();
        }        
        return meds;
    }
    public List<Medicine> getMedByName(String name){
        List <Medicine> meds = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            meds = session.createQuery("FROM Medicine M WHERE M.name=:name" ).setParameter("name", name).list();
            tx.commit();
        }catch(HibernateException he){
            if (tx!=null) tx.rollback();
            he.printStackTrace();
        }
        finally{
            session.close();
        }        
        return meds;
    }     
    public List<Medicine> getAllMeds(){
        List <Medicine> meds = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            meds = session.createQuery("FROM Medicine").list();
            tx.commit();
        }catch(HibernateException he){
            if (tx!=null) tx.rollback();
            he.printStackTrace();
        }
        finally{
            session.close();
        }        
        return meds;
    }     
    
    
}
