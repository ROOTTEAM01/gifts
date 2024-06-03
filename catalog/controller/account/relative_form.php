<?php

namespace Opencart\Catalog\Controller\Account;

class RelativeForm extends \Opencart\System\Engine\Controller {
    
    public function index(): void {
        if (!$this->customer->isLogged()) {
            $this->response->redirect($this->url->link('account/login', 'language=' . $this->config->get('config_language')));
        }

        $this->load->language('account/relative_form');
        $this->load->model('account/relative_form');


        $data['back_url'] = $this->url->link('account/relative', 'language=' . $this->config->get('config_language') . '&customer_token=' . $this->session->data['customer_token']);

        $data = array(
            'header' => $this->load->controller('common/header'),
            'footer' => $this->load->controller('common/footer')
        );

        if ($this->request->server['REQUEST_METHOD'] == 'POST') {
            $relative_data = array(
                'customer_id' => $this->customer->getId(),
                'name' => $this->request->post['name'],
                'surname' => $this->request->post['surname'],
                'description' => $this->request->post['description'],
                'occasion_type' => $this->request->post['occasion_type'],
                'day' => $this->request->post['day'],
                'delivery_time' => $this->request->post['delivery_time'],
                'remember_me_week' => $this->request->post['remember_me_week'],
                'remember_type' => $this->request->post['remember_type']
            );

            if (isset($this->request->post['id']) && $this->request->post['id']) {
                $this->model_account_relative_form->editRelative($this->request->post['id'], $relative_data);
            } else {
                $this->model_account_relative_form->addRelative($relative_data);
            }

            $this->response->redirect($this->url->link('account/relative', 'language=' . $this->config->get('config_language') . '&customer_token=' . $this->session->data['customer_token']));
        }

        if (isset($this->request->get['id'])) {
            $id = (int)$this->request->get['id'];
            $relative_info = $this->model_account_relative_form->getRelativeById($id);
            
            if ($relative_info) {
                $data['relative'] = $relative_info;
            } else {
                $this->response->redirect($this->url->link('account/relative', 'language=' . $this->config->get('config_language') . '&customer_token=' . $this->session->data['customer_token']));
            }
        }

        $this->response->setOutput($this->load->view('account/relative_form', $data));
    }
}
