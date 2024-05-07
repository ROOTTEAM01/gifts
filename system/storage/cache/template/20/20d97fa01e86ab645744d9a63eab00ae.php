<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* catalog/view/template/account/affiliate.twig */
class __TwigTemplate_a8a2fb889b7ab3a6fa0a61433a5b2e9a extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo ($context["header"] ?? null);
        echo "
<div class=\"pb-50\">
<div id=\"account-affiliate\" class=\"container acpage\">
<!-- Breadcrumb -->
<div class=\"d-flex justify-content-between align-items-center back-page\">
  <div class=\"\">
  <div class=\"back-to-home\">
      <a href=\"";
        // line 8
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
   </div>  
  </div>
  <div class=\"\">
    <ul class=\"breadcrumb \">
      ";
        // line 13
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 14
            echo "        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 14);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 14);
            echo "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 16
        echo "    </ul>  
  </div> 
</div>
<!-- Breadcrumb end -->
  <div class=\"row\">";
        // line 20
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 21
        echo ($context["content_top"] ?? null);
        echo "
      <h1>";
        // line 22
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <form id=\"form-affiliate\" action=\"";
        // line 23
        echo ($context["save"] ?? null);
        echo "\" method=\"post\" data-oc-toggle=\"ajax\">

        <fieldset>
          <legend>";
        // line 26
        echo ($context["text_my_affiliate"] ?? null);
        echo "</legend>
          <div class=\"row mb-3\">
            <label for=\"input-company\" class=\"col-sm-2 col-form-label\">";
        // line 28
        echo ($context["entry_company"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"company\" value=\"";
        // line 30
        echo ($context["company"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_company"] ?? null);
        echo "\" id=\"input-company\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-website\" class=\"col-sm-2 col-form-label\">";
        // line 34
        echo ($context["entry_website"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"website\" value=\"";
        // line 36
        echo ($context["website"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_website"] ?? null);
        echo "\" id=\"input-website\" class=\"form-control\"/>
            </div>
          </div>
        </fieldset>

        <fieldset>
          <legend>";
        // line 42
        echo ($context["text_payment"] ?? null);
        echo "</legend>
          <div class=\"row mb-3\">
            <label for=\"input-tax\" class=\"col-sm-2 col-form-label\">";
        // line 44
        echo ($context["entry_tax"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"tax\" value=\"";
        // line 46
        echo ($context["tax"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_tax"] ?? null);
        echo "\" id=\"input-tax\" class=\"form-control\"/>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\">";
        // line 50
        echo ($context["entry_payment"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment\" value=\"cheque\" id=\"input-payment-cheque\" class=\"form-check-input\"";
        // line 53
        if ((($context["payment"] ?? null) == "cheque")) {
            echo " checked";
        }
        echo "/> <label for=\"input-payment-cheque\" class=\"form-check-label\">";
        echo ($context["text_cheque"] ?? null);
        echo "</label>
              </div>
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment\" value=\"paypal\" id=\"input-payment-paypal\" class=\"form-check-input\"";
        // line 56
        if ((($context["payment"] ?? null) == "paypal")) {
            echo " checked";
        }
        echo "/> <label for=\"input-payment-paypal\" class=\"form-check-label\">";
        echo ($context["text_paypal"] ?? null);
        echo "</label>
              </div>
              <div class=\"form-check\">
                <input type=\"radio\" name=\"payment\" value=\"bank\" id=\"input-payment-bank\" class=\"form-check-input\"";
        // line 59
        if ((($context["payment"] ?? null) == "bank")) {
            echo " checked";
        }
        echo "/> <label for=\"input-payment-bank\" class=\"form-check-label\">";
        echo ($context["text_bank"] ?? null);
        echo "</label>
              </div>
            </div>
          </div>
          <div class=\"row mb-3 required payment\" id=\"payment-cheque\">
            <label for=\"input-cheque\" class=\"col-sm-2 col-form-label\">";
        // line 64
        echo ($context["entry_cheque"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"cheque\" value=\"";
        // line 66
        echo ($context["cheque"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_cheque"] ?? null);
        echo "\" id=\"input-cheque\" class=\"form-control\"/>
              <div id=\"error-cheque\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required payment\" id=\"payment-paypal\">
            <label for=\"input-paypal\" class=\"col-sm-2 col-form-label\">";
        // line 71
        echo ($context["entry_paypal"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"paypal\" value=\"";
        // line 73
        echo ($context["paypal"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_paypal"] ?? null);
        echo "\" id=\"input-paypal\" class=\"form-control\"/>
              <div id=\"error-paypal\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div id=\"payment-bank\" class=\"payment\">
            <div class=\"row mb-3\">
              <label for=\"input-bank-name\" class=\"col-sm-2 col-form-label\">";
        // line 79
        echo ($context["entry_bank_name"] ?? null);
        echo "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_name\" value=\"";
        // line 81
        echo ($context["bank_name"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_bank_name"] ?? null);
        echo "\" id=\"input-bank-name\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3\">
              <label for=\"input-bank-branch-number\" class=\"col-sm-2 col-form-label\">";
        // line 85
        echo ($context["entry_bank_branch_number"] ?? null);
        echo "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_branch_number\" value=\"";
        // line 87
        echo ($context["bank_branch_number"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_bank_branch_number"] ?? null);
        echo "\" id=\"input-bank-branch-number\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3\">
              <label for=\"input-bank-swift-code\" class=\"col-sm-2 col-form-label\">";
        // line 91
        echo ($context["entry_bank_swift_code"] ?? null);
        echo "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_swift_code\" value=\"";
        // line 93
        echo ($context["bank_swift_code"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_bank_swift_code"] ?? null);
        echo "\" id=\"input-bank-swift-code\" class=\"form-control\"/>
              </div>
            </div>
            <div class=\"row mb-3 required row\">
              <label for=\"input-bank-account-name\" class=\"col-sm-2 col-form-label\">";
        // line 97
        echo ($context["entry_bank_account_name"] ?? null);
        echo "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_account_name\" value=\"";
        // line 99
        echo ($context["bank_account_name"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_bank_account_name"] ?? null);
        echo "\" id=\"input-bank-account-name\" class=\"form-control\"/>
                <div id=\"error-bank-account-name\" class=\"invalid-feedback\"></div>
              </div>
            </div>
            <div class=\"row mb-3 required row\">
              <label for=\"input-bank-account-number\" class=\"col-sm-2 col-form-label\">";
        // line 104
        echo ($context["entry_bank_account_number"] ?? null);
        echo "</label>
              <div class=\"col-sm-10\">
                <input type=\"text\" name=\"bank_account_number\" value=\"";
        // line 106
        echo ($context["bank_account_number"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_bank_account_number"] ?? null);
        echo "\" id=\"input-bank-account-number\" class=\"form-control\"/>
                <div id=\"error-bank-account-number\" class=\"invalid-feedback\"></div>
              </div>
            </div>
          </div>
          ";
        // line 111
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 112
            echo "            ";
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "location", [], "any", false, false, false, 112) == "affiliate")) {
                // line 113
                echo "              ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 113) == "select")) {
                    // line 114
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 114)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 115
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 115);
                    echo "\" class=\"col-sm-2 col-form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 115);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <select name=\"custom_field[";
                    // line 117
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 117);
                    echo "]\" id=\"input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 117);
                    echo "\" class=\"form-select\">
                      <option value=\"\">";
                    // line 118
                    echo ($context["text_select"] ?? null);
                    echo "</option>
                      ";
                    // line 119
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 119));
                    foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                        // line 120
                        echo "                        <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 120);
                        echo "\"";
                        if (((($__internal_compile_0 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_0) || $__internal_compile_0 instanceof ArrayAccess ? ($__internal_compile_0[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 120)] ?? null) : null) && (twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 120) == (($__internal_compile_1 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_1) || $__internal_compile_1 instanceof ArrayAccess ? ($__internal_compile_1[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 120)] ?? null) : null)))) {
                            echo " selected";
                        }
                        echo ">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 120);
                        echo "</option>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 122
                    echo "                    </select>
                    <div id=\"error-custom-field-";
                    // line 123
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 123);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 127
                echo "
              ";
                // line 128
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 128) == "radio")) {
                    // line 129
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 129)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label class=\"col-sm-2 col-form-label\">";
                    // line 130
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 130);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <div id=\"input-custom-field-";
                    // line 132
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 132);
                    echo "\">
                      ";
                    // line 133
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 133));
                    foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                        // line 134
                        echo "                        <div class=\"form-check\">
                          <input type=\"radio\" name=\"custom_field[";
                        // line 135
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 135);
                        echo "]\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 135);
                        echo "\" id=\"input-custom-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 135);
                        echo "\" class=\"form-check-input\"";
                        if (((($__internal_compile_2 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_2) || $__internal_compile_2 instanceof ArrayAccess ? ($__internal_compile_2[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 135)] ?? null) : null) && (twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 135) == (($__internal_compile_3 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_3) || $__internal_compile_3 instanceof ArrayAccess ? ($__internal_compile_3[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 135)] ?? null) : null)))) {
                            echo " checked";
                        }
                        echo "/> <label for=\"input-custom-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 135);
                        echo "\" class=\"form-check-label\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 135);
                        echo "</label>
                        </div>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 138
                    echo "                    </div>
                    <div id=\"error-custom-field-";
                    // line 139
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 139);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 143
                echo "
              ";
                // line 144
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 144) == "checkbox")) {
                    // line 145
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 145)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label class=\"col-sm-2 col-form-label\">";
                    // line 146
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 146);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <div id=\"input-custom-field-";
                    // line 148
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148);
                    echo "\">
                      ";
                    // line 149
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 149));
                    foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                        // line 150
                        echo "                        <div class=\"form-check\">
                          <input type=\"checkbox\" name=\"custom_field[";
                        // line 151
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 151);
                        echo "]\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 151);
                        echo "\" id=\"input-custom-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 151);
                        echo "\" class=\"form-check-input\"";
                        if (((($__internal_compile_4 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_4) || $__internal_compile_4 instanceof ArrayAccess ? ($__internal_compile_4[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 151)] ?? null) : null) && twig_in_filter(twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 151), (($__internal_compile_5 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_5) || $__internal_compile_5 instanceof ArrayAccess ? ($__internal_compile_5[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 151)] ?? null) : null)))) {
                            echo " checked";
                        }
                        echo "/> <label for=\"input-custom-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 151);
                        echo "\" class=\"form-check-label\">";
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 151);
                        echo "</label>
                        </div>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 154
                    echo "                    </div>
                    <div id=\"error-custom-field-";
                    // line 155
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 155);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 159
                echo "
              ";
                // line 160
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 160) == "text")) {
                    // line 161
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 161)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 162
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 162);
                    echo "\" class=\"col-sm-2 col-form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 162);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <input type=\"text\" name=\"custom_field[";
                    // line 164
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 164);
                    echo "]\" value=\"";
                    if ((($__internal_compile_6 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_6) || $__internal_compile_6 instanceof ArrayAccess ? ($__internal_compile_6[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 164)] ?? null) : null)) {
                        echo (($__internal_compile_7 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_7) || $__internal_compile_7 instanceof ArrayAccess ? ($__internal_compile_7[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 164)] ?? null) : null);
                    } else {
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 164);
                    }
                    echo "\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 164);
                    echo "\" id=\"input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 164);
                    echo "\" class=\"form-control\"/>
                    <div id=\"error-custom-field-";
                    // line 165
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 165);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 169
                echo "
              ";
                // line 170
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 170) == "textarea")) {
                    // line 171
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 171)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 172
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 172);
                    echo "\" class=\"col-sm-2 col-form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 172);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <textarea name=\"custom_field[";
                    // line 174
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 174);
                    echo "]\" rows=\"5\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 174);
                    echo "\" id=\"input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 174);
                    echo "\" class=\"form-control\">";
                    if ((($__internal_compile_8 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_8) || $__internal_compile_8 instanceof ArrayAccess ? ($__internal_compile_8[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 174)] ?? null) : null)) {
                        echo (($__internal_compile_9 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_9) || $__internal_compile_9 instanceof ArrayAccess ? ($__internal_compile_9[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 174)] ?? null) : null);
                    } else {
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 174);
                    }
                    echo "</textarea>
                    <div id=\"error-custom-field-";
                    // line 175
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 175);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 179
                echo "
              ";
                // line 180
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 180) == "file")) {
                    // line 181
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 181)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label class=\"col-sm-2 col-form-label\">";
                    // line 182
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 182);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <div>
                      <button type=\"button\" data-oc-toggle=\"upload\" data-oc-url=\"";
                    // line 185
                    echo ($context["upload"] ?? null);
                    echo "\" data-oc-size-max=\"";
                    echo ($context["config_file_max_size"] ?? null);
                    echo "\" data-oc-size-error=\"";
                    echo ($context["error_upload_size"] ?? null);
                    echo "\" data-oc-target=\"#input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 185);
                    echo "\" class=\"btn btn-light\"><i class=\"fa-solid fa-upload\"></i> ";
                    echo ($context["button_upload"] ?? null);
                    echo "</button>
                      <input type=\"hidden\" name=\"custom_field[";
                    // line 186
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 186);
                    echo "]\" value=\"";
                    if ((($__internal_compile_10 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_10) || $__internal_compile_10 instanceof ArrayAccess ? ($__internal_compile_10[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 186)] ?? null) : null)) {
                        echo (($__internal_compile_11 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_11) || $__internal_compile_11 instanceof ArrayAccess ? ($__internal_compile_11[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 186)] ?? null) : null);
                    }
                    echo "\" id=\"input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 186);
                    echo "\"/>
                    </div>
                    <div id=\"error-custom-field-";
                    // line 188
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 188);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 192
                echo "
              ";
                // line 193
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 193) == "date")) {
                    // line 194
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 194)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 195
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 195);
                    echo "\" class=\"col-sm-2 col-form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 195);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <div class=\"input-group\">
                      <input type=\"text\" name=\"custom_field[";
                    // line 198
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 198);
                    echo "]\" value=\"";
                    if ((($__internal_compile_12 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_12) || $__internal_compile_12 instanceof ArrayAccess ? ($__internal_compile_12[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 198)] ?? null) : null)) {
                        echo (($__internal_compile_13 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_13) || $__internal_compile_13 instanceof ArrayAccess ? ($__internal_compile_13[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 198)] ?? null) : null);
                    } else {
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 198);
                    }
                    echo "\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 198);
                    echo "\" id=\"input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 198);
                    echo "\" class=\"form-control date\"/>
                      <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
                    </div>
                    <div id=\"error-custom-field-";
                    // line 201
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 201);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 205
                echo "              ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 205) == "time")) {
                    // line 206
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 206)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 207
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 207);
                    echo "\" class=\"col-sm-2 col-form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 207);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <div class=\"input-group\">
                      <input type=\"text\" name=\"custom_field[";
                    // line 210
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 210);
                    echo "]\" value=\"";
                    if ((($__internal_compile_14 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_14) || $__internal_compile_14 instanceof ArrayAccess ? ($__internal_compile_14[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 210)] ?? null) : null)) {
                        echo (($__internal_compile_15 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_15) || $__internal_compile_15 instanceof ArrayAccess ? ($__internal_compile_15[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 210)] ?? null) : null);
                    } else {
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 210);
                    }
                    echo "\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 210);
                    echo "\" id=\"input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 210);
                    echo "\" class=\"form-control time\"/>
                      <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
                    </div>
                    <div id=\"error-custom-field-";
                    // line 213
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 213);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 217
                echo "              ";
                if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 217) == "datetime")) {
                    // line 218
                    echo "                <div class=\"row mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["custom_field"], "required", [], "any", false, false, false, 218)) {
                        echo " required";
                    }
                    echo " custom-field\">
                  <label for=\"input-custom-field-";
                    // line 219
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 219);
                    echo "\" class=\"col-sm-2 col-form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 219);
                    echo "</label>
                  <div class=\"col-sm-10\">
                    <div class=\"input-group\">
                      <input type=\"text\" name=\"custom_field[";
                    // line 222
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 222);
                    echo "]\" value=\"";
                    if ((($__internal_compile_16 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_16) || $__internal_compile_16 instanceof ArrayAccess ? ($__internal_compile_16[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 222)] ?? null) : null)) {
                        echo (($__internal_compile_17 = ($context["affiliate_custom_field"] ?? null)) && is_array($__internal_compile_17) || $__internal_compile_17 instanceof ArrayAccess ? ($__internal_compile_17[twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 222)] ?? null) : null);
                    } else {
                        echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 222);
                    }
                    echo "\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 222);
                    echo "\" id=\"input-custom-field-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 222);
                    echo "\" class=\"form-control datetime\"/>
                      <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
                    </div>
                    <div id=\"error-custom-field-";
                    // line 225
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 225);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
              ";
                }
                // line 229
                echo "            ";
            }
            // line 230
            echo "          ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 231
        echo "        </fieldset>

        <div class=\"pt-2 pd-2 d-inline-block w-100\">
          <div class=\"float-end\">
            ";
        // line 235
        if (($context["text_agree"] ?? null)) {
            // line 236
            echo "              <div class=\"form-check form-check-inline\">
                <label class=\"form-check-label\">";
            // line 237
            echo ($context["text_agree"] ?? null);
            echo "</label>
                <input type=\"checkbox\" name=\"agree\" value=\"1\" class=\"form-check-input\"/>
                &nbsp;
              </div>
            ";
        }
        // line 242
        echo "            <button type=\"submit\" class=\"btn btn-primary\">";
        echo ($context["button_continue"] ?? null);
        echo "</button>
          </div>
        </div>

      </form>
      ";
        // line 247
        echo ($context["content_bottom"] ?? null);
        echo "</div>
    ";
        // line 248
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
</div>
<script type=\"text/javascript\"><!--
\$('input[name=\\'payment\\']').on('change', function () {
    \$('.payment').hide();

    \$('#payment-' + this.value).show();
});

\$('input[name=\\'payment\\']:checked').trigger('change');
//--></script>
";
        // line 260
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/affiliate.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  781 => 260,  766 => 248,  762 => 247,  753 => 242,  745 => 237,  742 => 236,  740 => 235,  734 => 231,  728 => 230,  725 => 229,  718 => 225,  702 => 222,  694 => 219,  687 => 218,  684 => 217,  677 => 213,  661 => 210,  653 => 207,  646 => 206,  643 => 205,  636 => 201,  620 => 198,  612 => 195,  605 => 194,  603 => 193,  600 => 192,  593 => 188,  582 => 186,  570 => 185,  564 => 182,  557 => 181,  555 => 180,  552 => 179,  545 => 175,  531 => 174,  524 => 172,  517 => 171,  515 => 170,  512 => 169,  505 => 165,  491 => 164,  484 => 162,  477 => 161,  475 => 160,  472 => 159,  465 => 155,  462 => 154,  441 => 151,  438 => 150,  434 => 149,  430 => 148,  425 => 146,  418 => 145,  416 => 144,  413 => 143,  406 => 139,  403 => 138,  382 => 135,  379 => 134,  375 => 133,  371 => 132,  366 => 130,  359 => 129,  357 => 128,  354 => 127,  347 => 123,  344 => 122,  329 => 120,  325 => 119,  321 => 118,  315 => 117,  308 => 115,  301 => 114,  298 => 113,  295 => 112,  291 => 111,  281 => 106,  276 => 104,  266 => 99,  261 => 97,  252 => 93,  247 => 91,  238 => 87,  233 => 85,  224 => 81,  219 => 79,  208 => 73,  203 => 71,  193 => 66,  188 => 64,  176 => 59,  166 => 56,  156 => 53,  150 => 50,  141 => 46,  136 => 44,  131 => 42,  120 => 36,  115 => 34,  106 => 30,  101 => 28,  96 => 26,  90 => 23,  86 => 22,  82 => 21,  78 => 20,  72 => 16,  61 => 14,  57 => 13,  47 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/affiliate.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/account/affiliate.twig");
    }
}
