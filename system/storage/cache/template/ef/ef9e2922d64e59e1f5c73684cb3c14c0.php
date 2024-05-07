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

/* catalog/view/template/account/download.twig */
class __TwigTemplate_054ba2b2535a0821dad4ef920e6d36dc extends Template
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
<div id=\"account-download\" class=\"container acpage\">
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
      ";
        // line 23
        if (($context["downloads"] ?? null)) {
            // line 24
            echo "        <div class=\"table-responsive\">
          <table class=\"table table-bordered table-hover\">
            <thead>
              <tr>
                <td class=\"text-end\">";
            // line 28
            echo ($context["column_order_id"] ?? null);
            echo "</td>
                <td class=\"text-start\">";
            // line 29
            echo ($context["column_name"] ?? null);
            echo "</td>
                <td class=\"text-start\">";
            // line 30
            echo ($context["column_size"] ?? null);
            echo "</td>
                <td class=\"text-start\">";
            // line 31
            echo ($context["column_date_added"] ?? null);
            echo "</td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              ";
            // line 36
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["downloads"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["download"]) {
                // line 37
                echo "                <tr>
                  <td class=\"text-end\">";
                // line 38
                echo twig_get_attribute($this->env, $this->source, $context["download"], "order_id", [], "any", false, false, false, 38);
                echo "</td>
                  <td class=\"text-start\">";
                // line 39
                echo twig_get_attribute($this->env, $this->source, $context["download"], "name", [], "any", false, false, false, 39);
                echo "</td>
                  <td class=\"text-start\">";
                // line 40
                echo twig_get_attribute($this->env, $this->source, $context["download"], "size", [], "any", false, false, false, 40);
                echo "</td>
                  <td class=\"text-start\">";
                // line 41
                echo twig_get_attribute($this->env, $this->source, $context["download"], "date_added", [], "any", false, false, false, 41);
                echo "</td>
                  <td><a href=\"";
                // line 42
                echo twig_get_attribute($this->env, $this->source, $context["download"], "href", [], "any", false, false, false, 42);
                echo "\" data-bs-toggle=\"tooltip\" title=\"";
                echo ($context["button_download"] ?? null);
                echo "\" class=\"btn btn-primary\"><i class=\"fa-solid fa-cloud-arrow-down\"></i></a></td>
                </tr>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['download'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 45
            echo "            </tbody>
          </table>
        </div>
        <div class=\"row\">
          <div class=\"col-sm-6 text-start\">";
            // line 49
            echo ($context["pagination"] ?? null);
            echo "</div>
          <div class=\"col-sm-6 text-end\">";
            // line 50
            echo ($context["results"] ?? null);
            echo "</div>
        </div>
      ";
        } else {
            // line 53
            echo "        <p>";
            echo ($context["text_no_results"] ?? null);
            echo "</p>
      ";
        }
        // line 55
        echo "      <div class=\"d-inline-block pt-2 pd-2 w-100\">
        <div class=\"float-end\"><a href=\"";
        // line 56
        echo ($context["continue"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_continue"] ?? null);
        echo "</a></div>
      </div>
      ";
        // line 58
        echo ($context["content_bottom"] ?? null);
        echo "</div>
    ";
        // line 59
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
</div>
";
        // line 62
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/download.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  194 => 62,  188 => 59,  184 => 58,  177 => 56,  174 => 55,  168 => 53,  162 => 50,  158 => 49,  152 => 45,  141 => 42,  137 => 41,  133 => 40,  129 => 39,  125 => 38,  122 => 37,  118 => 36,  110 => 31,  106 => 30,  102 => 29,  98 => 28,  92 => 24,  90 => 23,  86 => 22,  82 => 21,  78 => 20,  72 => 16,  61 => 14,  57 => 13,  47 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/download.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/account/download.twig");
    }
}
