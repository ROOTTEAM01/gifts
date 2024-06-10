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

/* catalog/view/template/account/register.twig */
class __TwigTemplate_e789599dcfc92a6e29b58b60261552755985e5f34c952f09aacff0c255bc2e84 extends Template
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
        echo "<div class=\"Register-page\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div class=\"container\">
<div class=\"pb-50\">
<div id=\"account-register\" class=\"container\">
<!-- Breadcrumb -->
<div class=\"d-flex justify-content-between align-items-center back-page\">
  <div class=\"\">
  <div class=\"back-to-home\">
      <a href=\"";
        // line 11
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
   </div>  
  </div>
 <div class=\"\">
    <ul class=\"breadcrumb \">
      ";
        // line 16
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 17
            echo "        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 17);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 17);
            echo "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 19
        echo "    </ul>  
  </div>
</div>
<!-- Breadcrumb end -->
  <div class=\"row\">
    ";
        // line 24
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 25
        echo ($context["content_top"] ?? null);
        echo "
      <h1>";
        // line 26
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <p>";
        // line 27
        echo ($context["text_account_already"] ?? null);
        echo "</p>
      <form id=\"form-register\" action=\"";
        // line 28
        echo ($context["register"] ?? null);
        echo "\" method=\"post\" data-oc-toggle=\"ajax\">
        <fieldset id=\"account\">
          <legend>";
        // line 30
        echo ($context["text_your_details"] ?? null);
        echo "</legend>
          ";
        // line 31
        if ((twig_length_filter($this->env, ($context["customer_groups"] ?? null)) > 1)) {
            // line 32
            echo "          <div class=\"row mb-3 required\">
            <label class=\"col-sm-2 col-form-label\">";
            // line 33
            echo ($context["entry_customer_group"] ?? null);
            echo "</label>
            <div class=\"col-sm-10\">
              <select name=\"customer_group_id\" id=\"input-customer-group\" class=\"form-select\">
                ";
            // line 36
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["customer_groups"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["customer_group"]) {
                // line 37
                echo "                  <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["customer_group"], "customer_group_id", [], "any", false, false, false, 37);
                echo "\"";
                if ((twig_get_attribute($this->env, $this->source, $context["customer_group"], "customer_group_id", [], "any", false, false, false, 37) == ($context["customer_group_id"] ?? null))) {
                    echo " selected";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["customer_group"], "name", [], "any", false, false, false, 37);
                echo "</option>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['customer_group'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 39
            echo "              </select>
            </div>
          </div>
          ";
        }
        // line 43
        echo "          <div class=\"row mb-3 required\">
            <label for=\"input-firstname\" class=\"col-sm-2 col-form-label\">";
        // line 44
        echo ($context["entry_firstname"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"firstname\" value=\"\" placeholder=\"";
        // line 46
        echo ($context["entry_firstname"] ?? null);
        echo "\" id=\"input-firstname\" class=\"form-control\"/>
              <div id=\"error-firstname\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-lastname\" class=\"col-sm-2 col-form-label\">";
        // line 51
        echo ($context["entry_lastname"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"lastname\" value=\"\" placeholder=\"";
        // line 53
        echo ($context["entry_lastname"] ?? null);
        echo "\" id=\"input-lastname\" class=\"form-control\"/>
              <div id=\"error-lastname\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3\">
            <label for=\"input-email\" class=\"col-sm-2 col-form-label\">";
        // line 58
        echo ($context["entry_email"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"email\" name=\"email\" value=\"\" placeholder=\"";
        // line 60
        echo ($context["entry_email"] ?? null);
        echo "\" id=\"input-email\" class=\"form-control\"/>
              <div id=\"error-email\" class=\"invalid-feedback\"></div>
            </div>
          </div>

          <div class=\"row mb-3 required\">
            <label for=\"input-telephone\" class=\"col-sm-2 col-form-label\">";
        // line 66
        echo ($context["entry_telephone"] ?? null);
        echo "</label>
              <div class=\"col-sm-10\">
                <input type=\"tel\" name=\"telephone\" value=\"\" placeholder=\"";
        // line 68
        echo ($context["entry_telephone"] ?? null);
        echo "\" id=\"input-telephone\" class=\"form-control\"/>
                <div id=\"error-telephone\" class=\"invalid-feedback\"></div>
              </div>
          </div>

          ";
        // line 73
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["custom_fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["custom_field"]) {
            // line 74
            echo "
            ";
            // line 75
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 75) == "select")) {
                // line 76
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 76);
                echo "\">
                <label for=\"input-custom-field-";
                // line 77
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 77);
                echo "\" class=\"col-sm-2 col-form-label\">";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 77);
                echo "</label>
                <div class=\"col-sm-10\">
                  <select name=\"custom_field[";
                // line 79
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 79);
                echo "]\" id=\"input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 79);
                echo "\" class=\"form-select\">
                    <option value=\"\">";
                // line 80
                echo ($context["text_select"] ?? null);
                echo "</option>
                    ";
                // line 81
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 81));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                    // line 82
                    echo "                      <option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 82);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 82);
                    echo "</option>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 84
                echo "                  </select>
                  <div id=\"error-custom-field-";
                // line 85
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 85);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 89
            echo "
            ";
            // line 90
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 90) == "radio")) {
                // line 91
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 91);
                echo "\">
                <label class=\"col-sm-2 col-form-label\">";
                // line 92
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 92);
                echo "</label>
                <div class=\"col-sm-10\">
                  <div id=\"input-custom-field-";
                // line 94
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 94);
                echo "\">
                    ";
                // line 95
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 95));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                    // line 96
                    echo "                      <div class=\"form-check\">
                        <input type=\"radio\" name=\"custom_field[";
                    // line 97
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 97);
                    echo "]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 97);
                    echo "\" id=\"input-custom-value-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 97);
                    echo "\" class=\"form-check-input\"/> <label for=\"input-custom-value-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 97);
                    echo "\" class=\"form-check-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 97);
                    echo "</label>
                      </div>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 100
                echo "                  </div>
                  <div id=\"error-custom-field-";
                // line 101
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 101);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 105
            echo "
            ";
            // line 106
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 106) == "checkbox")) {
                // line 107
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 107);
                echo "\">
                <label class=\"col-sm-2 col-form-label\">";
                // line 108
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 108);
                echo "</label>
                <div class=\"col-sm-10\">
                  <div id=\"input-custom-field-";
                // line 110
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 110);
                echo "\">
                    ";
                // line 111
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_value", [], "any", false, false, false, 111));
                foreach ($context['_seq'] as $context["_key"] => $context["custom_field_value"]) {
                    // line 112
                    echo "                      <div class=\"form-check\">
                        <input type=\"checkbox\" name=\"custom_field[";
                    // line 113
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 113);
                    echo "][]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 113);
                    echo "\" id=\"input-custom-value-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 113);
                    echo "\" class=\"form-check-input\"/> <label for=\"input-custom-value-";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "custom_field_value_id", [], "any", false, false, false, 113);
                    echo "\" class=\"form-check-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["custom_field_value"], "name", [], "any", false, false, false, 113);
                    echo "</label>
                      </div>
                    ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field_value'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 116
                echo "                  </div>
                  <div id=\"error-custom-field-";
                // line 117
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 117);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 121
            echo "
            ";
            // line 122
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 122) == "text")) {
                // line 123
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 123);
                echo "\">
                <label for=\"input-custom-field-";
                // line 124
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 124);
                echo "\" class=\"col-sm-2 col-form-label\">";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 124);
                echo "</label>
                <div class=\"col-sm-10\">
                  <input type=\"text\" name=\"custom_field[";
                // line 126
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 126);
                echo "]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 126);
                echo "\" placeholder=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 126);
                echo "\" id=\"input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 126);
                echo "\" class=\"form-control\"/>
                  <div id=\"error-custom-field-";
                // line 127
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 127);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 131
            echo "
            ";
            // line 132
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 132) == "textarea")) {
                // line 133
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 133);
                echo "\">
                <label for=\"input-custom-field-";
                // line 134
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 134);
                echo "\" class=\"col-sm-2 col-form-label\">";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 134);
                echo "</label>
                <div class=\"col-sm-10\">
                  <textarea name=\"custom_field[";
                // line 136
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 136);
                echo "]\" rows=\"5\" placeholder=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 136);
                echo "\" id=\"input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 136);
                echo "\" class=\"form-control\">";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 136);
                echo "</textarea>
                  <div id=\"error-custom-field-";
                // line 137
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 137);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 141
            echo "
            ";
            // line 142
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 142) == "file")) {
                // line 143
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 143);
                echo "\">
                <label class=\"col-sm-2 col-form-label\">";
                // line 144
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 144);
                echo "</label>
                <div class=\"col-sm-10\">
                  <div>
                    <button type=\"button\" data-oc-toggle=\"upload\" data-oc-url=\"";
                // line 147
                echo ($context["upload"] ?? null);
                echo "\" data-oc-size-max=\"";
                echo ($context["config_file_max_size"] ?? null);
                echo "\" data-oc-size-error=\"";
                echo ($context["error_upload_size"] ?? null);
                echo "\" data-oc-target=\"#input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 147);
                echo "\" class=\"btn btn-light\"><i class=\"fa-solid fa-upload\"></i> ";
                echo ($context["button_upload"] ?? null);
                echo "</button>
                    <input type=\"hidden\" name=\"custom_field[";
                // line 148
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148);
                echo "]\" value=\"\" id=\"input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 148);
                echo "\"/>
                  </div>
                  <div id=\"error-custom-field-";
                // line 150
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 150);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 154
            echo "
            ";
            // line 155
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 155) == "date")) {
                // line 156
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 156);
                echo "\">
                <label for=\"input-custom-field-";
                // line 157
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 157);
                echo "\" class=\"col-sm-2 col-form-label\">";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 157);
                echo "</label>
                <div class=\"col-sm-10\">
                  <div class=\"input-group\">
                    <input type=\"text\" name=\"custom_field[";
                // line 160
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160);
                echo "]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 160);
                echo "\" placeholder=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 160);
                echo "\" id=\"input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 160);
                echo "\" class=\"form-control date\"/>
                    <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
                  </div>
                  <div id=\"error-custom-field-";
                // line 163
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 163);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 167
            echo "
            ";
            // line 168
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 168) == "time")) {
                // line 169
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 169);
                echo "\">
                <label for=\"input-custom-field-";
                // line 170
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 170);
                echo "\" class=\"col-sm-2 col-form-label\">";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 170);
                echo "</label>
                <div class=\"col-sm-10\">
                  <div class=\"input-group\">
                    <input type=\"text\" name=\"custom_field[";
                // line 173
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 173);
                echo "]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 173);
                echo "\" placeholder=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 173);
                echo "\" id=\"input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 173);
                echo "\" class=\"form-control time\"/>
                    <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
                  </div>
                  <div id=\"error-custom-field-";
                // line 176
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 176);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 180
            echo "
            ";
            // line 181
            if ((twig_get_attribute($this->env, $this->source, $context["custom_field"], "type", [], "any", false, false, false, 181) == "datetime")) {
                // line 182
                echo "              <div class=\"row mb-3 custom-field custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 182);
                echo "\">
                <label for=\"input-custom-field-";
                // line 183
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 183);
                echo "\" class=\"col-sm-2 col-form-label\">";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 183);
                echo "</label>
                <div class=\"col-sm-10\">
                  <div class=\"input-group\">
                    <input type=\"text\" name=\"custom_field[";
                // line 186
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 186);
                echo "]\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "value", [], "any", false, false, false, 186);
                echo "\" placeholder=\"";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "name", [], "any", false, false, false, 186);
                echo "\" id=\"input-custom-field-";
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 186);
                echo "\" class=\"form-control datetime\"/>
                    <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
                  </div>
                  <div id=\"error-custom-field-";
                // line 189
                echo twig_get_attribute($this->env, $this->source, $context["custom_field"], "custom_field_id", [], "any", false, false, false, 189);
                echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
            ";
            }
            // line 193
            echo "
          ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['custom_field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 195
        echo "        </fieldset>

        <fieldset>
          <legend>";
        // line 198
        echo ($context["text_your_password"] ?? null);
        echo "</legend>
          <div class=\"row mb-3 required\">
            <label for=\"input-password\" class=\"col-sm-2 col-form-label\">";
        // line 200
        echo ($context["entry_password"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"password\" name=\"password\" value=\"\" placeholder=\"";
        // line 202
        echo ($context["entry_password"] ?? null);
        echo "\" id=\"input-password\" class=\"form-control\"/>
              <div id=\"error-password\" class=\"invalid-feedback\"></div>
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>";
        // line 208
        echo ($context["text_newsletter"] ?? null);
        echo "</legend>
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\">";
        // line 210
        echo ($context["entry_newsletter"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <div class=\"form-check form-check-inline\">
                <input type=\"radio\" name=\"newsletter\" value=\"1\" id=\"input-newsletter-yes\" class=\"form-check-input\"/>
                <label for=\"input-newsletter-yes\" class=\"form-check-label\">";
        // line 214
        echo ($context["text_yes"] ?? null);
        echo "</label>
              </div>
              <div class=\"form-check form-check-inline\">
                <input type=\"radio\" name=\"newsletter\" value=\"0\" id=\"input-newsletter-no\" class=\"form-check-input\" checked/>
                <label for=\"input-newsletter-no\" class=\"form-check-label\">";
        // line 218
        echo ($context["text_no"] ?? null);
        echo "</label>
              </div>
            </div>
          </div>
        </fieldset>
        ";
        // line 223
        echo ($context["captcha"] ?? null);
        echo "

        <div class=\"d-inline-block pt-2 pd-2 w-100\">
          <div class=\"float-end text-right\">
            ";
        // line 227
        if (($context["text_agree"] ?? null)) {
            // line 228
            echo "              <div class=\"form-check form-check-inline required\">
                <label class=\"form-check-label\">";
            // line 229
            echo ($context["text_agree"] ?? null);
            echo "</label> <input type=\"checkbox\" name=\"agree\" value=\"1\" class=\"form-check-input\"/>
              </div>
            ";
        }
        // line 232
        echo "            <button type=\"submit\" class=\"btn btn-primary\">";
        echo ($context["button_continue"] ?? null);
        echo "</button>
          </div>
        </div>
      </form>
      ";
        // line 236
        echo ($context["content_bottom"] ?? null);
        echo "
    </div>
    ";
        // line 238
        echo ($context["column_right"] ?? null);
        echo "
  </div>
</div>
</div>
</div>
<script type=\"text/javascript\"><!--
\$('#input-customer-group').on('change', function () {
    \$.ajax({
        url: 'index.php?route=account/custom_field&customer_group_id=' + this.value + '&language=";
        // line 246
        echo ($context["language"] ?? null);
        echo "',
        dataType: 'json',
        success: function (json) {
            \$('.custom-field').hide();
            \$('.custom-field').removeClass('required');

            for (i = 0; i < json.length; i++) {
                custom_field = json[i];

                \$('.custom-field-' + custom_field['custom_field_id']).show();

                if (custom_field['required']) {
                    \$('.custom-field-' + custom_field['custom_field_id']).addClass('required');
                }
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});

\$('#input-customer-group').trigger('change');
//--></script>
";
        // line 270
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/register.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  711 => 270,  684 => 246,  673 => 238,  668 => 236,  660 => 232,  654 => 229,  651 => 228,  649 => 227,  642 => 223,  634 => 218,  627 => 214,  620 => 210,  615 => 208,  606 => 202,  601 => 200,  596 => 198,  591 => 195,  584 => 193,  577 => 189,  565 => 186,  557 => 183,  552 => 182,  550 => 181,  547 => 180,  540 => 176,  528 => 173,  520 => 170,  515 => 169,  513 => 168,  510 => 167,  503 => 163,  491 => 160,  483 => 157,  478 => 156,  476 => 155,  473 => 154,  466 => 150,  459 => 148,  447 => 147,  441 => 144,  436 => 143,  434 => 142,  431 => 141,  424 => 137,  414 => 136,  407 => 134,  402 => 133,  400 => 132,  397 => 131,  390 => 127,  380 => 126,  373 => 124,  368 => 123,  366 => 122,  363 => 121,  356 => 117,  353 => 116,  336 => 113,  333 => 112,  329 => 111,  325 => 110,  320 => 108,  315 => 107,  313 => 106,  310 => 105,  303 => 101,  300 => 100,  283 => 97,  280 => 96,  276 => 95,  272 => 94,  267 => 92,  262 => 91,  260 => 90,  257 => 89,  250 => 85,  247 => 84,  236 => 82,  232 => 81,  228 => 80,  222 => 79,  215 => 77,  210 => 76,  208 => 75,  205 => 74,  201 => 73,  193 => 68,  188 => 66,  179 => 60,  174 => 58,  166 => 53,  161 => 51,  153 => 46,  148 => 44,  145 => 43,  139 => 39,  124 => 37,  120 => 36,  114 => 33,  111 => 32,  109 => 31,  105 => 30,  100 => 28,  96 => 27,  92 => 26,  88 => 25,  84 => 24,  77 => 19,  66 => 17,  62 => 16,  52 => 11,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/register.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\account\\register.twig");
    }
}
