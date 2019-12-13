/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author APCL
 */
public class StudentDAO {
    public void doSave(Student stu){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(stu);
        s.getTransaction().commit();
        s.close();
    }
    public void doUpppdate(Student stu){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(stu);
        s.getTransaction().commit();
        s.close();
    }
    
    public void doDelete(Student stu){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(stu);
        s.getTransaction().commit();
        s.close();
    }
    public List<Student> findAllInfo(Student stu){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        List<Student> li = new ArrayList<>();
        li=s.createCriteria(Student.class).list();
        s.close();
        return li;
    }
    public boolean checkUser(int id, String p){
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("From Student where id=:a and password=:b");
        q.setParameter("a", id);
        q.setParameter("b", p);
        List<Student> li = new ArrayList<>();
        li=q.list();
        if (li.size()>0) {
            return true;
        } else {
            return false;
        }
    }
}
