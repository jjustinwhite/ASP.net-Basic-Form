using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JWhiteHW3
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Populate HomeState Dropdown
                drpHomeState.Items.Add(new ListItem("", ""));
                drpHomeState.Items.Add(new ListItem("Alabama", "AL"));
                drpHomeState.Items.Add(new ListItem("Alaska", "AK"));
                drpHomeState.Items.Add(new ListItem("Arizona", "AZ"));
                drpHomeState.Items.Add(new ListItem("Arkansas", "AR"));
                drpHomeState.Items.Add(new ListItem("California", "CA"));
                drpHomeState.Items.Add(new ListItem("Colorado", "CO"));
                drpHomeState.Items.Add(new ListItem("Connecticut", "CT"));
                drpHomeState.Items.Add(new ListItem("Deleware", "DE"));
                drpHomeState.Items.Add(new ListItem("District of Columbia", "DC"));
                drpHomeState.Items.Add(new ListItem("Florida", "FL"));
                drpHomeState.Items.Add(new ListItem("Georgia", "GA"));
                drpHomeState.Items.Add(new ListItem("Hawaii", "HI"));
                drpHomeState.Items.Add(new ListItem("Idaho", "ID"));
                drpHomeState.Items.Add(new ListItem("Illinois", "IL"));
                drpHomeState.Items.Add(new ListItem("Indiana", "IN"));
                drpHomeState.Items.Add(new ListItem("Iowa", "IA"));
                drpHomeState.Items.Add(new ListItem("Kansas", "KS"));
                drpHomeState.Items.Add(new ListItem("Kentucky", "KY"));
                drpHomeState.Items.Add(new ListItem("Lousiana", "LA"));
                drpHomeState.Items.Add(new ListItem("Maine", "ME"));
                drpHomeState.Items.Add(new ListItem("Maryland", "MD"));
                drpHomeState.Items.Add(new ListItem("Massachusetts", "AL"));
                drpHomeState.Items.Add(new ListItem("Michigan", "MI"));
                drpHomeState.Items.Add(new ListItem("Minnesota", "MN"));
                drpHomeState.Items.Add(new ListItem("Mississippi", "MS"));
                drpHomeState.Items.Add(new ListItem("Missouri", "MO"));
                drpHomeState.Items.Add(new ListItem("Montana", "MT"));
                drpHomeState.Items.Add(new ListItem("Nebraska", "NE"));
                drpHomeState.Items.Add(new ListItem("Nevada", "NV"));
                drpHomeState.Items.Add(new ListItem("New Hampshire", "NH"));
                drpHomeState.Items.Add(new ListItem("New Jersey", "NJ"));
                drpHomeState.Items.Add(new ListItem("New Mexico", "NM"));
                drpHomeState.Items.Add(new ListItem("New York", "NY"));
                drpHomeState.Items.Add(new ListItem("North Carolina", "NC"));
                drpHomeState.Items.Add(new ListItem("North Dakota", "ND"));
                drpHomeState.Items.Add(new ListItem("Ohio", "OH"));
                drpHomeState.Items.Add(new ListItem("Oklahoma", "OK"));
                drpHomeState.Items.Add(new ListItem("Oregon", "OR"));
                drpHomeState.Items.Add(new ListItem("Pennsylvania", "PA"));
                drpHomeState.Items.Add(new ListItem("Rhode Island", "RI"));
                drpHomeState.Items.Add(new ListItem("South Carolina", "SC"));
                drpHomeState.Items.Add(new ListItem("South Dakota", "SD"));
                drpHomeState.Items.Add(new ListItem("Tennessee", "TN"));
                drpHomeState.Items.Add(new ListItem("Texas", "TX"));
                drpHomeState.Items.Add(new ListItem("Utah", "UT"));
                drpHomeState.Items.Add(new ListItem("Vermont", "VT"));
                drpHomeState.Items.Add(new ListItem("Virginia", "VA"));
                drpHomeState.Items.Add(new ListItem("Washington", "WA"));
                drpHomeState.Items.Add(new ListItem("West Virginia", "WV"));
                drpHomeState.Items.Add(new ListItem("Wisconsin", "WI"));
                drpHomeState.Items.Add(new ListItem("Wyoming", "WY"));

            // Populate Age Dropdown
                int count = 18;
                ArrayList ageArray = new ArrayList();
                while (count < 101)
                {
                    ageArray.Add(count);
                    count++;
                }

                drpAge.DataSource = ageArray;
                drpAge.DataBind();
                


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblFirstNameEntered.Text = txtFirstName.Text;
                lblLastNameEntered.Text = txtLastName.Text;
                lblHomeStreetAddressEntered.Text = txtHomeStreetAddress.Text;
                lblCityEntered.Text = txtHomeCity.Text;
                lblStateEntered.Text = drpHomeState.Text;
                lblEmailEntered.Text = txtEmail.Text;
                lblUsernameEntered.Text = txtUsername.Text;

                lblGenderEntered.Text = lstGender.Text;
                lblAgeEntered.Text = drpAge.Text;

                lblEmailSubscriptionEntered.Text = lstEmailSubscription.Text;
                lblStudentEntered.Text = lstStudent.Text;
                lblEducationEntered.Text = lstEducation.Text;


                pnlForm.Visible = false;
                pnlFormResults.Visible = true;
            }
        }

    }
}