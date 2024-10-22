package com.pu;

import java.util.List;
import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.pu.entity.Student;

public class App 
{
    public static void main( String[] args )
    {
        //saveStudent();
    	//updateStudent();
    	//deleteStudent();
    	fetchAllStudents();
    }
    private static void saveStudent() {
    	Scanner sc=new Scanner(System.in);
    	System.out.println("Please enter name: ");
    	String studentName=sc.nextLine();
    	System.out.println("Please enter age: ");
    	int studentAge=sc.nextInt();
    	Student studentobj= new Student(studentName,studentAge);
    	Transaction transaction = null;
    	try(Session session=HibernateUtil.getSessionFactory().openSession()){
    		transaction=session.beginTransaction();
    		session.persist(studentobj);
    		transaction.commit();
    		System.out.println("Student Saved Successfully...");
    	}catch(Exception e) {
    		if(transaction!=null) {
    			transaction.rollback();
    		}
    		e.printStackTrace();
    	}
    	sc.close();
    }
    private static void updateStudent() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Please enter Student ID: ");
        int studentId = sc.nextInt();
        
        if (studentId <= 0) {
            System.out.println("Please enter a valid Student ID...");
        } else {
            Transaction transaction = null;
            try (Session session = HibernateUtil.getSessionFactory().openSession()) {
                Student studentObj = session.get(Student.class, studentId);
                if (studentObj != null) {
                    System.out.println("Existing Student Name: " + studentObj.getName());
                    System.out.println("Existing Student Age: " + studentObj.getAge());
                    
                    System.out.println("What would you like to update?");
                    System.out.println("1. Name");
                    System.out.println("2. Age");
                    System.out.println("3. Both");
                    
                    int choice = sc.nextInt();
                    sc.nextLine(); // consume the newline
                    
                    switch (choice) {
                        case 1:
                            System.out.println("Enter new name: ");
                            String newName = sc.nextLine();
                            studentObj.setName(newName);
                            break;
                        case 2:
                            System.out.println("Enter new age: ");
                            int newAge = sc.nextInt();
                            studentObj.setAge(newAge);
                            break;
                        case 3:
                            System.out.println("Enter new name: ");
                            newName = sc.nextLine();
                            System.out.println("Enter new age: ");
                            newAge = sc.nextInt();
                            studentObj.setName(newName);
                            studentObj.setAge(newAge);
                            break;
                        default:
                            System.out.println("Invalid choice. No changes made.");
                            return;
                    }
                    
                    transaction = session.beginTransaction();
                    session.merge(studentObj);
                    transaction.commit();
                    System.out.println("Student successfully updated.");
                } else {
                    System.out.println("Invalid student ID");
                }
            } catch (Exception e) {
                if (transaction != null) {
                    transaction.rollback();
                }
                e.printStackTrace();
            }
        }
        sc.close();
    }
    private static void deleteStudent() {
    	 Scanner sc = new Scanner(System.in);
         System.out.println("Please enter Student ID: ");
         int studentId = sc.nextInt();
         
         if (studentId <= 0) {
             System.out.println("Please enter a valid Student ID...");
         } else {
             Transaction transaction = null;
             try (Session session = HibernateUtil.getSessionFactory().openSession()) {
                 Student studentObj = session.get(Student.class, studentId);
                 if (studentObj != null) {
                	 System.out.println("Existing Student Name : "+studentObj.getName());
                	 transaction = session.beginTransaction();
                     session.remove(studentObj);
                     transaction.commit();
                     System.out.println("Student successfully deleted.");
                 }else System.out.println("No student found with that ID.");
             }catch(Exception e) {
            	 if(transaction!=null) {
            		 transaction.rollback();
            	 }
            	 e.printStackTrace();
             }
         }	
    }
    private static void fetchAllStudents() {
    	try(Session session=HibernateUtil.getSessionFactory().openSession()){
    		List<Student> students=session.createQuery("from Student",Student.class).list();
    		students.forEach(s ->{
    			System.out.println("Student ID: "+ s.getId()+", Name: "+s.getName()+", Age: "+s.getAge());
    		});
    	}catch(Exception e) {
    		e.printStackTrace();	
    	}
    }
}
