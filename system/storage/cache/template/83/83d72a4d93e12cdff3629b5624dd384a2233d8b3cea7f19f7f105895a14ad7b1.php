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

/* extension/wdcategorytab/admin/view/template/module/wdcategorytab.twig */
class __TwigTemplate_5b720349d084ab05afe551407dee8c8bdc6aa1632446c04285d35602da5fc4d7 extends Template
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
        echo ($context["column_left"] ?? null);
        echo "
<div id=\"content\">
  <div class=\"page-header\">
    <div class=\"container-fluid\">
      <div class=\"float-end\">
        <button type=\"submit\" form=\"form-module\" data-bs-toggle=\"tooltip\" title=\"";
        // line 6
        echo ($context["button_save"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fas fa-save\"></i></button>
        <a href=\"";
        // line 7
        echo ($context["back"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["button_back"] ?? null);
        echo "\" class=\"btn btn-light\"><i class=\"fas fa-reply\"></i></a></div>
      <h1>";
        // line 8
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <ul class=\"breadcrumb\">
        ";
        // line 10
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 11
            echo "        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 11);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 11);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 13
        echo "      </ul>
    </div>
  </div>
  <div class=\"container-fluid\">
    <div class=\"card\">
    ";
        // line 18
        if (($context["error_warning"] ?? null)) {
            // line 19
            echo "    <div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i> ";
            echo ($context["error_warning"] ?? null);
            echo "
      <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
    </div>
    ";
        }
        // line 23
        echo "    <div class=\"panel panel-default\">
      <div class=\"card-header\"><i class=\"fas fa-pencil-alt\"></i> ";
        // line 24
        echo ($context["text_edit"] ?? null);
        echo "</div>
      <div class=\"card-body\">
        <form action=\"";
        // line 26
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\" id=\"form-module\" class=\"form-horizontal\">
          <div class=\"row mb-3\">
            <label for=\"input-name\" class=\"col-sm-2 col-form-label\">";
        // line 28
        echo ($context["entry_name"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"name\" value=\"";
        // line 30
        echo ($context["name"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_name"] ?? null);
        echo "\" id=\"input-name\" class=\"form-control\" />
              ";
        // line 31
        if (($context["error_name"] ?? null)) {
            // line 32
            echo "              <div class=\"text-danger\">";
            echo ($context["error_name"] ?? null);
            echo "</div>
              ";
        }
        // line 34
        echo "            </div>
          </div> 


          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\" for=\"input-category\"><span data-toggle=\"tooltip\" title=\"";
        // line 39
        echo ($context["help_category"] ?? null);
        echo "\">";
        echo ($context["entry_category"] ?? null);
        echo "</span></label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"category_name\" value=\"\" placeholder=\"";
        // line 41
        echo ($context["entry_category"] ?? null);
        echo "\" id=\"input-category\" class=\"form-control\" />
              ";
        // line 42
        if (($context["error_category"] ?? null)) {
            // line 43
            echo "              <div class=\"text-danger\">";
            echo ($context["error_category"] ?? null);
            echo "</div>
              ";
        }
        // line 45
        echo "              <div class=\"form-control p-0\" style=\"height: 150px; overflow: auto;\">
              <table  id=\"category-tab\" class=\"table table-sm m-0\">
                <tbody>
                ";
        // line 48
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 49
            echo "                <tr id=\"category-tab";
            echo twig_get_attribute($this->env, $this->source, $context["category"], "category_id", [], "any", false, false, false, 49);
            echo "\">
                  <td>";
            // line 50
            echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 50);
            echo "<input type=\"hidden\" name=\"category[]\" value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["category"], "category_id", [], "any", false, false, false, 50);
            echo "\" /></td>
                  <td class=\"text-end\"><button type=\"button\" class=\"btn btn-danger btn-sm\"><i class=\"fas fa-minus-circle\"></i></button></td>
                </tr>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 54
        echo "              </tbody>
              </table>
            </div>
            </div>
          </div>


          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\" for=\"input-limit\">";
        // line 62
        echo ($context["entry_limit"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"limit\" value=\"";
        // line 64
        echo ($context["limit"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_limit"] ?? null);
        echo "\" id=\"input-limit\" class=\"form-control\" />
            </div>
          </div>
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\" for=\"input-width\">";
        // line 68
        echo ($context["entry_width"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"width\" value=\"";
        // line 70
        echo ($context["width"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_width"] ?? null);
        echo "\" id=\"input-width\" class=\"form-control\" />
              ";
        // line 71
        if (($context["error_width"] ?? null)) {
            // line 72
            echo "              <div class=\"text-danger\">";
            echo ($context["error_width"] ?? null);
            echo "</div>
              ";
        }
        // line 74
        echo "            </div>
          </div>
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\" for=\"input-height\">";
        // line 77
        echo ($context["entry_height"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <input type=\"text\" name=\"height\" value=\"";
        // line 79
        echo ($context["height"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_height"] ?? null);
        echo "\" id=\"input-height\" class=\"form-control\" />
              ";
        // line 80
        if (($context["error_height"] ?? null)) {
            // line 81
            echo "              <div class=\"text-danger\">";
            echo ($context["error_height"] ?? null);
            echo "</div>
              ";
        }
        // line 83
        echo "            </div>
          </div>
          <div class=\"row mb-3\">
            <label class=\"col-sm-2 col-form-label\" for=\"input-status\">";
        // line 86
        echo ($context["entry_status"] ?? null);
        echo "</label>
            <div class=\"col-sm-10\">
              <select name=\"status\" id=\"input-status\" class=\"form-control\">
                ";
        // line 89
        if (($context["status"] ?? null)) {
            // line 90
            echo "                <option value=\"1\" selected=\"selected\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\">";
            // line 91
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        } else {
            // line 93
            echo "                <option value=\"1\">";
            echo ($context["text_enabled"] ?? null);
            echo "</option>
                <option value=\"0\" selected=\"selected\">";
            // line 94
            echo ($context["text_disabled"] ?? null);
            echo "</option>
                ";
        }
        // line 96
        echo "              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  </div>
  <script type=\"text/javascript\"><!--
\$('input[name=\\'category_name\\']').autocomplete({
  source: function(request, response) {

    \$.ajax({
      url: 'index.php?route=catalog/category|autocomplete&user_token=";
        // line 109
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response(\$.map(json, function(item) {
          return {
            label: item['name'],
            value: item['category_id']
          }
        }));
      }
    });
  },
  select: function(item) {
    \$('input[name=\\'category_name\\']').val('');
    
    \$('#category-tab' + item['value']).remove();
    
    \$('#category-tab').append('<div id=\"category-tab' + item['value'] + '\"><i class=\"fa fa-minus-circle\"></i> ' + item['label'] + '<input type=\"hidden\" name=\"category[]\" value=\"' + item['value'] + '\" /></div>'); 
  }
});
  
\$('#category-tab').delegate('.fa-minus-circle', 'click', function() {
  \$(this).parent().remove();
});


//--></script></div>
";
        // line 136
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "extension/wdcategorytab/admin/view/template/module/wdcategorytab.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  322 => 136,  292 => 109,  277 => 96,  272 => 94,  267 => 93,  262 => 91,  257 => 90,  255 => 89,  249 => 86,  244 => 83,  238 => 81,  236 => 80,  230 => 79,  225 => 77,  220 => 74,  214 => 72,  212 => 71,  206 => 70,  201 => 68,  192 => 64,  187 => 62,  177 => 54,  165 => 50,  160 => 49,  156 => 48,  151 => 45,  145 => 43,  143 => 42,  139 => 41,  132 => 39,  125 => 34,  119 => 32,  117 => 31,  111 => 30,  106 => 28,  101 => 26,  96 => 24,  93 => 23,  85 => 19,  83 => 18,  76 => 13,  65 => 11,  61 => 10,  56 => 8,  50 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/wdcategorytab/admin/view/template/module/wdcategorytab.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\wdcategorytab\\admin\\view\\template\\module\\wdcategorytab.twig");
    }
}
