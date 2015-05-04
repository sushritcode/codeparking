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
		$arrForms = array("basic-details"=>array());

		//formelementname 
		$arrForms["basic-details"] = array("companyname"=>"CompanyName","natureofbusiness"=>"NatureOfBusiness","displayName"=>"DisplayName","companyURL"=>"CompanyWebsite","briefDescription"=>"Description","industryType"=>"IndustryType");
		return $arrForms;
        }
}
?>
