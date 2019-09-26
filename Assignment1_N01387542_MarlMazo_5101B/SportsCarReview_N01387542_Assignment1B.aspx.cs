using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;


namespace Assignment1_N01387542_MarlMazo_5101B
{
    public partial class SportsCarReview_N01387542_Assignment1B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    string Reviewer_Name = reviewer_Name.Text.ToString();
                    string Reviewer_EmailAddress = reviewer_EmailAddress.Text.ToString();
                    string Reviewer_SportsCarBrand = sportsCar_Brand.Text.ToString();
                    string Reviewer_SportsCarModel = sportsCar_Model.Text.ToString();
                    string Reviewer_SportsCarYear = sportsCar_Year.Text.ToString();
                    string Reviewer_SportsCarColor = sportsCar_Color.Text.ToString();
                    string Reviewer_Review = reviewer_Review.Text.ToString();
                    int Reviewer_SportsCarSeat = Convert.ToInt32(sportsCar_Seat.Text);
                    int Reviewer_SportsCarPrice = int.Parse(sportsCar_Price.Text,NumberStyles.Currency); //Numberstyles Resources in https://stackoverflow.com/questions/4094334/how-to-format-a-currency-string-to-integer by Khalos Year 2010
                    int Reviewer_OverAllStar = 0;
                    

                        if ((Reviewer_SportsCarPrice >= 1000000 && (Reviewer_SportsCarYear == "2019"|| Reviewer_SportsCarYear == "2018")) || 
                           ((100000 < Reviewer_SportsCarPrice && Reviewer_SportsCarPrice < 1000000) && (Reviewer_SportsCarYear == "2019" || Reviewer_SportsCarYear == "2018")) ||
                           (Reviewer_SportsCarPrice <= 100000 && (Reviewer_SportsCarYear == "2019" || Reviewer_SportsCarYear == "2018")))
                            {
                                Reviewer_OverAllStar = 5;  
                            }               
                        else if ((Reviewer_SportsCarPrice >= 1000000 && (Reviewer_SportsCarYear == "2017" || Reviewer_SportsCarYear == "2016")) ||
                                ((100000 < Reviewer_SportsCarPrice && Reviewer_SportsCarPrice < 1000000) && (Reviewer_SportsCarYear == "2017" || Reviewer_SportsCarYear == "2016"))||
                                (Reviewer_SportsCarPrice <= 100000 && (Reviewer_SportsCarYear == "2017" || Reviewer_SportsCarYear == "2016")) ||
                                (Reviewer_SportsCarPrice <= 100000 && (Reviewer_SportsCarYear == "2019" || Reviewer_SportsCarYear == "2018")))
                            {
                                Reviewer_OverAllStar = 4;
                            }
                        else if ((Reviewer_SportsCarPrice >= 1000000 && (Reviewer_SportsCarYear == "2015" || Reviewer_SportsCarYear == "2014_Older")) ||
                                (Reviewer_SportsCarPrice <= 100000 && (Reviewer_SportsCarYear == "2017" || Reviewer_SportsCarYear == "2016")))
                            {
                                Reviewer_OverAllStar = 3;
                            }
                        else if ((100000 < Reviewer_SportsCarPrice && Reviewer_SportsCarPrice < 1000000) && (Reviewer_SportsCarYear == "2015" || Reviewer_SportsCarYear == "2014_Older"))
                            {
                                Reviewer_OverAllStar = 2;
                            }
                        else if (Reviewer_SportsCarPrice <= 100000 && (Reviewer_SportsCarYear == "2015" || Reviewer_SportsCarYear == "2014_Older"))
                            {
                                Reviewer_OverAllStar = 1;
                            }

                        box_Results.InnerHtml = "Thank you for giving us your Feedback on the SportsCar you bought<br>";
                        box_Results.InnerHtml+= "The System concludes that you got a " + Reviewer_SportsCarBrand + " with a model of " + Reviewer_SportsCarModel + " " + Reviewer_SportsCarYear+"<br>";
                        box_Results.InnerHtml+= "Your overall Review is "+ Reviewer_OverAllStar + " stars";

                }
            }
        }
    }
}