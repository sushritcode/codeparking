<?php
class Contacts_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
	}
	function loadDetails($contactId)
	{

		if (is_numeric($contactId))
		{
			$this->db->where(array('ContactId' => $contactId));
			return $this->db->get('LMContactDetails')->row();
		}
		return null;
	}
	function getAll()
	{

		$this->db
			->select('a.ContactId, a.ContactName, a.ContactEmailAddress, a.ContactMobileNo, b.GroupName, a.Association, a.ContactStatus')
			->from('LMContactDetails a, LMGroupDetails b')
			->where("a.GroupID = b.LMGroupID AND a.Association = b.Association and a.Association='".$this->session->userdata('LMLoginId') ."'")
			->order_by('ContactId desc ');
		$query = $this->db->get();
		$recordSet['list'] = $query->result();
		return $recordSet;

	}
	function updateContact()
	{	

		$this->load->helper('my_extra_functions');
		$formTableMap = form_table_map();
		$formValues = $this->input->get(NULL,true);
		$numEntries =  $this->db->where("ContactId ='".trim($this->input->get('contactID'))."'")->get('LMContactDetails')->num_rows();
		$flag=3;
		if( $numEntries == 0)
			return $flag;
		if(isset($formValues['formname']))
		{
			if($formValues['formname'] != "")
			{

				foreach($formValues as $key => $value):
					if($key != "formname"):
					if(isset($formTableMap[$formValues['formname']][$key]) && $value !=""):
					$this->db->set( $formTableMap[$formValues['formname']][$key] , trim($value));
				endif;
				endif;
				endforeach;
				$this->db->where("ContactId = '".$this->input->get('contactID')."'");
				$this->db->update('LMContactDetails');
				$flag=4;
				return $flag;
			}
		}
		return $flag;
	}
	function enable()
	{
		$this->db->set( "ContactStatus" , '1');
		$this->db->where("ContactId = '".$this->uri->segment(3)."'");
		$this->db->update('LMContactDetails');

	}
	function disable()
	{
		$this->db->set( "ContactStatus" , '0');
		$this->db->where("ContactId = '".$this->uri->segment(3)."'");
		$this->db->update('LMContactDetails');

	}

	function insertContact()
	{

		$this->load->helper('my_extra_functions');
		$formTableMap = form_table_map();
		$formValues = $this->input->get(NULL,true);
		$numEntries =  $this->db->where("GroupID ='".trim($this->input->get('groupName'))."' and Association ='". $this->session->userdata('LMLoginId')."' and ContactEmailAddress = '".trim($this->input->get('contactEmail'))."'")->get('LMContactDetails')->num_rows();
		$flag=0;
		if($numEntries == 0)
		{

			if(isset($formValues['formname']))
			{
				if($formValues['formname'] != "")
				{

					foreach($formValues as $key => $value):
						if($key != "formname"):
							if(isset($formTableMap[$formValues['formname']][$key]) && $value !=""):
								$this->db->set( $formTableMap[$formValues['formname']][$key] , trim($value));
							endif;
						endif;
					endforeach;
					$this->db->set( 'Association' , $this->session->userdata('LMLoginId'));
					$this->db->insert('LMContactDetails');
					$flag=1;
				}
			}



		}
		else
			$flag=2;

		return $flag;

	}
	function savecsv()
	{
		$handle = fopen($_FILES['selectFile']['tmp_name'], "r");
		$firstRow = false;

		$arrResult = Array("success"=>Array(),"fail"=>Array(),"dup"=>Array());

		while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) 
		{
			if($firstRow) 
				$firstRow = false; 
			else 
			{
				$num_entry =  $this->db->where("GroupID ='".trim($this->input->get('groupName'))."' and Association ='". $this->session->userdata('LMLoginId')."' and ContactEmailAddress = '".trim($data[1])."'")->get('LMContactDetails')->num_rows();
				if(trim($data[0]) == "" || filter_var($data[1], FILTER_VALIDATE_EMAIL) === false || trim($data[2]) == "")
					array_push($arrResult['fail'],$data);
				elseif($num_entry > 0)
					array_push($arrResult['dup'],$data);
				else
				{


					$this->db->set("ContactName",$data[0]);
					$this->db->set("ContactEmailAddress",$data[1]);
					$this->db->set("ContactMobileNo",$data[2]);
					$this->db->set("GroupID",$this->input->get("groupName"));
					$this->db->set("Association",$this->session->userdata("LMLoginId"));
					$this->db->insert('LMContactDetails');
					array_push($arrResult['success'],$data);
				}
			}
		}
	
		fclose($handle);	
		return $arrResult;
	}
}

?>
