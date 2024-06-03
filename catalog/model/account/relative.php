<?php

namespace Opencart\Catalog\Model\Account;

class Relative extends \Opencart\System\Engine\Model {

    public function deleteRelative($id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "relatives WHERE id = '" . (int)$id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
    }

    public function getRelative($relative_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "relatives WHERE relative_id = '" . (int)$relative_id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
        return $query->row;
    }

    public function getRelatives($customer_id) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "relatives WHERE customer_id = '" . (int)$customer_id . "'");
        return $query->rows;
    }
}

