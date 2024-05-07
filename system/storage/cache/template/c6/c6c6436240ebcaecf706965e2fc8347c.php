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

/* catalog/view/template/checkout/checkout.twig */
class __TwigTemplate_b37c771fd4e2fc155c03a3fc03dd2a87 extends Template
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
        echo "<div class=\"checkout-page\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div class=\"pb-50\">
<div id=\"checkout-checkout\" class=\"container\">
<!-- Breadcrumb -->
<div class=\"d-flex justify-content-between align-items-center back-page\">
  <div class=\"\">
  <div class=\"back-to-home\">
      <a href=\"";
        // line 10
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
   </div>  
  </div>
 <div class=\"\">
    <ul class=\"breadcrumb \">
      ";
        // line 15
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 16
            echo "        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 16);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 16);
            echo "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 18
        echo "    </ul>  
  </div>
</div>
<!-- Breadcrumb end -->
  <div class=\"row\">";
        // line 22
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 23
        echo ($context["content_top"] ?? null);
        echo "
      <h1 class=\"checkout-heading\">";
        // line 24
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <div class=\"row\">
        <div class=\"col-md-7 mb-3\">

          ";
        // line 28
        if (($context["register"] ?? null)) {
            // line 29
            echo "            <div id=\"checkout-register\">";
            echo ($context["register"] ?? null);
            echo "</div>
          ";
        }
        // line 31
        echo "
          ";
        // line 32
        if (($context["payment_address"] ?? null)) {
            // line 33
            echo "            <div id=\"checkout-payment-address\">";
            echo ($context["payment_address"] ?? null);
            echo "</div>
          ";
        }
        // line 35
        echo "
          ";
        // line 36
        if (($context["shipping_address"] ?? null)) {
            // line 37
            echo "            <div id=\"checkout-shipping-address\">";
            echo ($context["shipping_address"] ?? null);
            echo "</div>
          ";
        }
        // line 39
        echo "
        </div>
        <div class=\"col-md-5\">
          ";
        // line 42
        if (($context["shipping_method"] ?? null)) {
            // line 43
            echo "            <div id=\"checkout-shipping-method\" class=\"mb-3\">";
            echo ($context["shipping_method"] ?? null);
            echo "</div>
          ";
        }
        // line 45
        echo "          <div id=\"checkout-payment-method\" class=\"mb-4\">";
        echo ($context["payment_method"] ?? null);
        echo "</div>

          <div id=\"checkout-confirm\">";
        // line 47
        echo ($context["confirm"] ?? null);
        echo "</div>

        </div>
      </div>
    </div>
    ";
        // line 52
        echo ($context["content_bottom"] ?? null);
        echo "
  </div>
  ";
        // line 54
        echo ($context["column_right"] ?? null);
        echo "
</div>
</div>
";
        // line 57
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/checkout/checkout.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  165 => 57,  159 => 54,  154 => 52,  146 => 47,  140 => 45,  134 => 43,  132 => 42,  127 => 39,  121 => 37,  119 => 36,  116 => 35,  110 => 33,  108 => 32,  105 => 31,  99 => 29,  97 => 28,  90 => 24,  86 => 23,  82 => 22,  76 => 18,  65 => 16,  61 => 15,  51 => 10,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/checkout/checkout.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/checkout/checkout.twig");
    }
}
