<?php
if(!defined('CAN_RUN')) {
	exit('Access Denied');
}

class autobackup_index extends base {

	function __construct($data = NULL) {
		parent::__construct();
		if($data == NULL) {
			$this->data = array (
				'id' => 0,
				'deviceid' => 0,
				'scriptpath' => '', 
				'period' => 0,
				'lastruntime' => '0000-00-00 00:00:00',
				'su' => 0
			);
		}
		else {
			$this->data = $data;
		}
	}


	function set_data($data_index, $data_data) {
		$flag = true;

		if($flag) {
			$this->data[$data_index] = $data_data;
			$this->flag[$data_index] = true;
			return true;
		}
		else {
			return false;
		}
	}

}

?>
