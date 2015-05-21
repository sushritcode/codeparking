<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
if ( ! function_exists('industry_list'))
{
	function industry_list()
	{
		$ci =& get_instance();
		$ci->load->database();
		$ci->db->select("Industryid, IndustryName")->from('mstIndustry');
		$query = $ci->db->get();
		$recordSet['list'] = $query->result();
		return $recordSet['list'];
	}   
}
if ( ! function_exists('timezone_list'))
{
	function timezone_list()
	{

		$ci =& get_instance();
		$ci->load->database();
		$ci->db->select("id, name, timezone")->from('mstTimezones');
		$query = $ci->db->get();
		$recordSet['list'] = $query->result();
		return $recordSet['list'];
	}   
}
if ( ! function_exists('currency_list'))
{
        function currency_list()
        {

                $ci =& get_instance();
                $ci->load->database();
                $ci->db->select("id_countries, countryname, currency_code, currency_name, IFNULL(currency_symbol,'') as 'currency_symbol'")->from('mstCurrency');
                $query = $ci->db->get();
                $recordSet['list'] = $query->result();
                return $recordSet['list'];
        }
}
if ( ! function_exists('form_table_map'))
{
        function form_table_map()
        {

		//formname
		$arrForms = array(	"basic-details"=>array(),
					"contact-details"=>array(),
					"address-details"=>array(),
					"social-media"=>array(),
					"billinglocal"=>array(),
					"addContact"=>array(),
					"addGroup"=>array()
				 );

		//formelementname 
		$arrForms["basic-details"] = array("companyname"=>"CompanyName","natureofbusiness"=>"NatureOfBusiness","displayName"=>"DisplayName","companyURL"=>"CompanyWebsite","briefDescription"=>"Description","industryType"=>"IndustryType");
		$arrForms["contact-details"] = array("phone1"=>"Phone1","phone2"=>"Phone2","mobile"=>"MobileNo","SecondryEmail"=>"SecondryEmail");
		$arrForms["address-details"] = array("address1"=>"PrimaryAddress","address2"=>"Address2","address3"=>"Address3");
		$arrForms["social-media"] = array("facebookid"=>"FacebookId","twitter"=>"TwitterId","googleplus"=>"GooglePlus","linkedin"=>"LinkedIn");
		$arrForms["billinglocal"] = array("billersName"=>"BillingName","currency"=>"Currency","timezones"=>"Timezones" );
		$arrForms["addContact"] = array("contactName"=>"ContactName" , "contactEmail"=>"ContactEmailAddress" , "contactMobile"=>"ContactMobileNo" , "groupName"=>"GroupID");
		$arrForms["addGroup"]=array("groupName"=>"GroupName");
		return $arrForms;
        }
}


if ( ! function_exists('modal_dialog_loader'))
{

	function modal_dialog_loader($header ='' , $message='')
	{

		$html ="";

		$html .= "<div id=\"myModal\" class=\"modal fade\" style=\"padding:210px;\">";
		$html .= " <div class=\"modal-dialog\">";
		$html .= "   <div class=\"modal-content\">";
		$html .= "     <div class=\"modal-header\">";
		if(trim($header) !="")
			$html .= $header;
		else
			$html .= "Processing Request.....";
		$html .= "      </div>";
		$html .= "     <div class=\"modal-body\">";	
		if(trim($message) !="")
			$html .= $message;
		else
			$html .= "Processing Request.....";

		$html .= "       <p>Please wait !!!! </p>";
		$html .= "     </div>";
		$html .= "     <div class=\"modal-footer\">";
		$html .= "       <!--button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button-->";
		$html .= "       <!--button type=\"button\" class=\"btn btn-primary\">Save changes</button-->";
		$html .= "     </div>";
		$html .= "   </div><!-- /.modal-content -->";
		$html .= " </div><!-- /.modal-dialog -->";
		$html .= " </div><!-- /.modal -->";

		return $html;
	}
}

if( ! function_exists ('contacts_list'))
{
	function contacts_list()
	{

		$ci =& get_instance();
                $ci->load->database();
                $ci->db->select("ContactId, ContactName, ContactEmailAddress, ContactMobileNo, GroupID, Association, ContactStatus ")->from('LMContactDetails');
                $query = $ci->db->get();
                $recordSet['list'] = $query->result();
                return $recordSet['list'];
	}
}

if( ! function_exists ('contacts_group'))
{
	function contacts_group()
	{

		$ci =& get_instance();
                $ci->load->database();
                $ci->db->select("LMGroupId, GroupName, Association, GroupStatus")->from('LMGroupDetails');
                $query = $ci->db->get();
                $recordSet['list'] = $query->result();
                return $recordSet['list'];
	}
}
if( ! function_exists ('local_messages'))
{
	function local_messages($controllerName)
	{
		$arrMessages = array('contacts'=>array() , 'groups'=>array());
		$arrMessages['contacts'] = Array("0"=>"Contact not Saved !!!",
						 "1"=>"Contact Saved Suvcessfully",
						 "2"=>"Duplicate Contact ",
						 "3"=>"Contact Details not Found",
						 "4"=>"Contact Details Updated Sucessfully"); 
		$arrMessages['groups'] = Array("0"=>"Group Already Present",
						"1"=>"Group Saved Successfully",
						"2"=>"Group not Found",
						"3"=>"Group Name Already in Use",
						"4"=>"Group Details updated successfully");
		if(isset($arrMessages[$controllerName]))
			return $arrMessages[$controllerName];
	}
}
	
?>
