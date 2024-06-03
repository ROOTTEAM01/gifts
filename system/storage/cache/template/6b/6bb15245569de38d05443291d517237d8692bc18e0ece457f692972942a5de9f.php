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

/* catalog/view/template/account/order_list.twig */
class __TwigTemplate_9e3448feb6696fb8c0f2f82b0f655928a661c29533c541ee5b3f9f18c78a1ba5 extends Template
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
<div id=\"account-order\" class=\"container acpage\">
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
        if (($context["orders"] ?? null)) {
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
            echo ($context["column_customer"] ?? null);
            echo "</td>
                <td class=\"text-end\">";
            // line 30
            echo ($context["column_product"] ?? null);
            echo "</td>
                <td class=\"text-start\">";
            // line 31
            echo ($context["column_status"] ?? null);
            echo "</td>
                <td class=\"text-end\">";
            // line 32
            echo ($context["column_total"] ?? null);
            echo "</td>
                <td class=\"text-start\">";
            // line 33
            echo ($context["column_date_added"] ?? null);
            echo "</td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              ";
            // line 38
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["orders"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["order"]) {
                // line 39
                echo "                <tr>
                  <td class=\"text-end\">#";
                // line 40
                echo twig_get_attribute($this->env, $this->source, $context["order"], "order_id", [], "any", false, false, false, 40);
                echo "</td>
                  <td class=\"text-start\">";
                // line 41
                echo twig_get_attribute($this->env, $this->source, $context["order"], "name", [], "any", false, false, false, 41);
                echo "</td>
                  <td class=\"text-end\">";
                // line 42
                echo twig_get_attribute($this->env, $this->source, $context["order"], "products", [], "any", false, false, false, 42);
                echo "</td>
                  <td class=\"text-start\">";
                // line 43
                echo twig_get_attribute($this->env, $this->source, $context["order"], "status", [], "any", false, false, false, 43);
                echo "</td>
                  <td class=\"text-end\">";
                // line 44
                echo twig_get_attribute($this->env, $this->source, $context["order"], "total", [], "any", false, false, false, 44);
                echo "</td>
                  <td class=\"text-start\">";
                // line 45
                echo twig_get_attribute($this->env, $this->source, $context["order"], "date_added", [], "any", false, false, false, 45);
                echo "</td>
                  <td class=\"text-end\"><a href=\"";
                // line 46
                echo twig_get_attribute($this->env, $this->source, $context["order"], "view", [], "any", false, false, false, 46);
                echo "\" data-bs-toggle=\"tooltip\" title=\"";
                echo ($context["button_view"] ?? null);
                echo "\" class=\"btn btn-info\"><i class=\"fa-solid fa-eye\"></i></a></td>
                </tr>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['order'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 49
            echo "            </tbody>
          </table>
        </div>
        <div class=\"row\">
          <div class=\"col-sm-6 text-start\">";
            // line 53
            echo ($context["pagination"] ?? null);
            echo "</div>
          <div class=\"col-sm-6 text-end\">";
            // line 54
            echo ($context["results"] ?? null);
            echo "</div>
        </div>
      ";
        } else {
            // line 57
            echo "        <p>";
            echo ($context["text_no_results"] ?? null);
            echo "</p>
      ";
        }
        // line 59
        echo "      <div class=\"d-inline-block pt-2 pd-2 w-100\">
        <div class=\"float-end\"><a href=\"";
        // line 60
        echo ($context["continue"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_continue"] ?? null);
        echo "</a></div>
      </div>
      ";
        // line 62
        echo ($context["content_bottom"] ?? null);
        echo "</div>
    ";
        // line 63
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
</div>
";
        // line 66
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/order_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  210 => 66,  204 => 63,  200 => 62,  193 => 60,  190 => 59,  184 => 57,  178 => 54,  174 => 53,  168 => 49,  157 => 46,  153 => 45,  149 => 44,  145 => 43,  141 => 42,  137 => 41,  133 => 40,  130 => 39,  126 => 38,  118 => 33,  114 => 32,  110 => 31,  106 => 30,  102 => 29,  98 => 28,  92 => 24,  90 => 23,  86 => 22,  82 => 21,  78 => 20,  72 => 16,  61 => 14,  57 => 13,  47 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/order_list.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\account\\order_list.twig");
    }
}
