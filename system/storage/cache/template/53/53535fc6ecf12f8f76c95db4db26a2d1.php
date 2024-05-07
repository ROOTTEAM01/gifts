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

/* catalog/view/template/account/password.twig */
class __TwigTemplate_12c09ce4afe4244d0f1d5316f8c1bcd9 extends Template
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
        echo "<div class=\"password\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div class=\"pb-50\">
<div id=\"account-password\" class=\"container acpage\">
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
<div class=\"container\">
  <div class=\"row\">";
        // line 23
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 24
        echo ($context["content_top"] ?? null);
        echo "
      <h1>";
        // line 25
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <form id=\"form-password\" action=\"";
        // line 26
        echo ($context["save"] ?? null);
        echo "\" method=\"post\" data-oc-toggle=\"ajax\">
        <fieldset>
          <legend>";
        // line 28
        echo ($context["text_password"] ?? null);
        echo "</legend>
          <div class=\"row mb-3 required\">
            <label for=\"input-password\" class=\"col-md-3 col-form-label\">";
        // line 30
        echo ($context["entry_password"] ?? null);
        echo "</label>
            <div class=\"col-md-9\">
              <input type=\"password\" name=\"password\" value=\"";
        // line 32
        echo ($context["password"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_password"] ?? null);
        echo "\" id=\"input-password\" class=\"form-control\" autocomplete=\"new-password\"/>
              <div id=\"error-password\" class=\"invalid-feedback\"></div>
            </div>
          </div>
          <div class=\"row mb-3 required\">
            <label for=\"input-confirm\" class=\"col-md-3 col-form-label\">";
        // line 37
        echo ($context["entry_confirm"] ?? null);
        echo "</label>
            <div class=\"col-md-9\">
              <input type=\"password\" name=\"confirm\" value=\"";
        // line 39
        echo ($context["confirm"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_confirm"] ?? null);
        echo "\" id=\"input-confirm\" class=\"form-control\"/>
              <div id=\"error-confirm\" class=\"invalid-feedback\"></div>
            </div>
          </div>
        </fieldset>
        <div class=\"d-inline-block pt-2 pd-2 w-100\">
          <div class=\"float-start\"><a href=\"";
        // line 45
        echo ($context["back"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_back"] ?? null);
        echo "</a></div>
          <div class=\"float-end\">
            <button type=\"submit\" class=\"btn btn-primary\">";
        // line 47
        echo ($context["button_continue"] ?? null);
        echo "</button>
          </div>
        </div>
      </form>
      ";
        // line 51
        echo ($context["content_bottom"] ?? null);
        echo "
    </div>
    ";
        // line 53
        echo ($context["column_right"] ?? null);
        echo "
  </div>
</div>
</div>
</div>
";
        // line 58
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/password.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  163 => 58,  155 => 53,  150 => 51,  143 => 47,  136 => 45,  125 => 39,  120 => 37,  110 => 32,  105 => 30,  100 => 28,  95 => 26,  91 => 25,  87 => 24,  83 => 23,  76 => 18,  65 => 16,  61 => 15,  51 => 10,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/password.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/account/password.twig");
    }
}
