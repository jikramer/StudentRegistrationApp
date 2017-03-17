using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace StudentRegistrationApplication.DatabaseClasses
{
    public class StudentInfoDBClass
    {

       
        /*  string CS = ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString;
          string[] StudentInfoArray = new string[10];
          protected void InsertStudentInfo()
          {
              using (SqlConnection con = new SqlConnection(CS))
              {
                  SqlCommand cmd = new SqlCommand();
                  cmd.CommandText = "Insert into StudentData (Student_FirstName, Student_LastName, Student_ContactNo, Student_email, Student_DOB, Student_StAddress, Student_City, Student_State, Student_Zipcode, Student_Type, Student_UserID, Student_Password) values('" + firstname + "', '" + lastname + "', '" + contactno + "', '" + email + "', '" + dob + "', '" + StAddress + "', '" + city + "', '" + state + "', '" + zipcode + "', '" + student_type + "', '" + userid + "', '" + password + "'); ";
                  cmd.Connection = con;
                  con.Open();
                  cmd.ExecuteNonQuery();
              }
          }

          protected  string[] getStudentInfo(string username)
          {           
              using (SqlConnection con = new SqlConnection(CS))
              {
                  SqlCommand cmd = new SqlCommand();
                  cmd.CommandText = "Select Student_FirstName, Student_LastName, Student_ContactNo, Student_email, Student_DOB, Student_StAddress, Student_City, Student_State, Student_Zipcode, Student_Type from StudentData where Student_UserID='" + username + "'";

                  cmd.Connection = con;
                  con.Open();
                  SqlDataReader dr = cmd.ExecuteReader();

                  if (dr.Read())
                  {
                      for (int j = 0; j < 10; j++)                   
                          StudentInfoArray[j] = dr[j].ToString();                    
                  }

                 return (StudentInfoArray);
              }

          }

          protected void updateStudentInfo()
          {

          }
          */
    }
}