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

/* catalog/view/template/account/newsletter.twig */
class __TwigTemplate_04107f86b739cefbac39e5c0a0896bf3 extends Template
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
        echo "<div class=\"newsletter\">
  ";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div class=\"pb-50\">
<div id=\"account-newsletter\" class=\"container acpage\">
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
    <ul class=\"breadcrumb\">
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
      <h1>";
        // line 24
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <form id=\"form-newsletter\" action=\"";
        // line 25
        echo ($context["save"] ?? null);
        echo "\" method=\"post\" data-oc-toggle=\"ajax\">
        <fieldset>
          <div class=\"row mb-3 mb-0\">
            <label class=\"col-md-3 col-form-label\">";
        // line 28
        echo ($context["entry_newsletter"] ?? null);
        echo "</label>
            <div class=\"col-md-9\">
              <div class=\"form-check form-check-inline\">
                <input type=\"radio\" name=\"newsletter\" value=\"1\" id=\"input-newsletter-yes\" class=\"form-check-input\"";
        // line 31
        if (($context["newsletter"] ?? null)) {
            echo " checked";
        }
        echo "/>
                <label for=\"input-newsletter-yes\" class=\"form-check-label\">";
        // line 32
        echo ($context["text_yes"] ?? null);
        echo "</label>
              </div>
              <div class=\"form-check form-check-inline\">
                <input type=\"radio\" name=\"newsletter\" value=\"0\" id=\"input-newsletter-no\" class=\"form-check-input\"";
        // line 35
        if ( !($context["newsletter"] ?? null)) {
            echo " checked";
        }
        echo "/>
                <label for=\"input-newsletter-no\" class=\"form-check-label\">";
        // line 36
        echo ($context["text_no"] ?? null);
        echo "</label>
              </div>
            </div>
          </div>
        </fieldset>
        <div class=\"d-inline-block pt-2 pd-2 w-100\">
          <div class=\"float-start\"><a href=\"";
        // line 42
        echo ($context["back"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_back"] ?? null);
        echo "</a></div>
          <div class=\"float-end\">
            <button type=\"submit\" class=\"btn btn-primary\">";
        // line 44
        echo ($context["button_continue"] ?? null);
        echo "</button>
          </div>
        </div>
      </form>
      ";
        // line 48
        echo ($context["content_bottom"] ?? null);
        echo "
    </div>
    ";
        // line 50
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
</div>
";
        // line 53
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/newsletter.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  158 => 53,  152 => 50,  147 => 48,  140 => 44,  133 => 42,  124 => 36,  118 => 35,  112 => 32,  106 => 31,  100 => 28,  94 => 25,  90 => 24,  86 => 23,  82 => 22,  76 => 18,  65 => 16,  61 => 15,  51 => 10,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/newsletter.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/account/newsletter.twig");
    }
}
