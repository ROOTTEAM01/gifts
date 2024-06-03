<?php
namespace Opencart\Catalog\Controller\Account;

class Relative extends \Opencart\System\Engine\Controller {
    
    public function index(): void {
        if (!$this->customer->isLogged()) {
            $this->response->redirect($this->url->link('account/login', 'language=' . $this->config->get('config_language')));
        }

        $this->load->language('account/relative');
        $this->load->model('account/relative');

        if (isset($this->request->get['delete']) && isset($this->request->get['id'])) {
            $this->deleteRelative($this->request->get['id']);
        }

        $data['relatives'] = $this->model_account_relative->getRelatives($this->customer->getId());
        $data['add_relative'] = $this->url->link('account/relative_form', 'language=' . $this->config->get('config_language') . '&customer_token=' . $this->session->data['customer_token']);
        $data['edit_relative'] = $this->url->link('account/relative_form', 'language=' . $this->config->get('config_language') . '&customer_token=' . $this->session->data['customer_token']);
        $data['heading_title'] = $this->language->get('heading_title');
        $data['text_no_relatives'] = $this->language->get('text_no_relatives');
        $data['text_add_relative'] = $this->language->get('text_add_relative');
        $data['button_add'] = $this->language->get('button_add');
        
        $data['action'] = $this->url->link('account/relative', 'language=' . $this->config->get('config_language') . '&customer_token=' . $this->session->data['customer_token']);
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');
        $this->response->setOutput($this->load->view('account/relative', $data));
    }

    public function deleteRelative($relative_id): void {
        if (!$this->customer->isLogged()) {
            $this->response->redirect($this->url->link('account/login', 'language=' . $this->config->get('config_language')));
        }

        $this->load->model('account/relative');
        $this->model_account_relative->deleteRelative($relative_id);
        
        $this->response->redirect($this->url->link('account/relative', 'language=' . $this->config->get('config_language') . '&customer_token=' . $this->session->data['customer_token']));
    }
}
