<?php

namespace Opencart\Catalog\Model\Account;

class RelativeForm extends \Opencart\System\Engine\Model {
    public function addRelative($data) {
        $this->db->query("INSERT INTO " . DB_PREFIX . "relatives SET 
            customer_id = '" . (int)$data['customer_id'] . "', 
            name = '" . $this->db->escape($data['name']) . "', 
            surname = '" . $this->db->escape($data['surname']) . "', 
            description = '" . $this->db->escape($data['description']) . "', 
            occasion_type = '" . $this->db->escape($data['occasion_type']) . "', 
            day = '" . $this->db->escape($data['day']) . "', 
            delivery_time = '" . $this->db->escape($data['delivery_time']) . "', 
            remember_me_week = '" . $this->db->escape($data['remember_me_week']) . "', 
            remember_type = '" . $this->db->escape($data['remember_type']) . "'");
    }

    public function editRelative($id, $data) {
        $this->db->query("UPDATE " . DB_PREFIX . "relatives SET 
            name = '" . $this->db->escape($data['name']) . "', 
            surname = '" . $this->db->escape($data['surname']) . "', 
            description = '" . $this->db->escape($data['description']) . "', 
            occasion_type = '" . $this->db->escape($data['occasion_type']) . "', 
            day = '" . $this->db->escape($data['day']) . "', 
            delivery_time = '" . $this->db->escape($data['delivery_time']) . "', 
            remember_me_week = '" . $this->db->escape($data['remember_me_week']) . "', 
            remember_type = '" . $this->db->escape($data['remember_type']) . "' 
            WHERE id = '" . (int)$id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
    }

    public function getRelativeById($id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "relatives WHERE id = '" . (int)$id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
        return $query->row;
    }
}
