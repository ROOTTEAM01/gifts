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

/* catalog/view/template/information/information.twig */
class __TwigTemplate_0bb0379a463324ec7260ed3b1eb2fccb extends Template
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
        echo "<div class=\"contect\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div class=\"contact-top-bg pb-30\">
\t<div class=\"container\">
\t\t<div class=\"\">
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
\t\t\t<!-- Breadcrumb end -->
\t\t\t<h1 class=\"other-title mb-3\">";
        // line 23
        echo ($context["heading_title"] ?? null);
        echo "</h1> 
\t\t\t<div class=\"contact-desc\">
\t\t\t\t<p>";
        // line 25
        echo ($context["contact_desc"] ?? null);
        echo "</p>
\t\t\t</div>
\t\t</div>
\t</div>
</div>
<div class=\"information\">
<div id=\"information-information\" class=\"container\">
<!-- Breadcrumb -->
<!-- Breadcrumb end -->
  <div class=\"row\">";
        // line 34
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 35
        echo ($context["content_top"] ?? null);
        echo "
      <h1>";
        // line 36
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      ";
        // line 37
        echo ($context["description"] ?? null);
        echo ($context["content_bottom"] ?? null);
        echo "</div>
    ";
        // line 38
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
</div>
";
        // line 41
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "catalog/view/template/information/information.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  123 => 41,  117 => 38,  112 => 37,  108 => 36,  104 => 35,  100 => 34,  88 => 25,  83 => 23,  77 => 19,  66 => 17,  62 => 16,  52 => 11,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/information/information.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/information/information.twig");
    }
}
