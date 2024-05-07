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

/* catalog/view/template/account/login.twig */
class __TwigTemplate_4ff5f84f546be545f88489bc1e5cca90 extends Template
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
        echo "<div class=\"login\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div class=\"pb-50\">
<div id=\"account-login\" class=\"container acpage\">
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
  ";
        // line 22
        if (($context["success"] ?? null)) {
            // line 23
            echo "    <div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-check\"></i> ";
            echo ($context["success"] ?? null);
            echo " <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>
  ";
        }
        // line 25
        echo "  ";
        if (($context["error_warning"] ?? null)) {
            // line 26
            echo "    <div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ";
            echo ($context["error_warning"] ?? null);
            echo " <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>
  ";
        }
        // line 28
        echo "  <div class=\"row\">";
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 29
        echo ($context["content_top"] ?? null);
        echo "
      <div class=\"row\">
        <div class=\"col-sm-6\">
          <div class=\"card mb-3\">
            <div class=\"card-body\">
              <h1>";
        // line 34
        echo ($context["text_new_customer"] ?? null);
        echo "</h1>
              <p><strong>";
        // line 35
        echo ($context["text_register"] ?? null);
        echo "</strong></p>
              <p>";
        // line 36
        echo ($context["text_register_account"] ?? null);
        echo "</p>
              <a href=\"";
        // line 37
        echo ($context["register"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_continue"] ?? null);
        echo "</a></div>
          </div>
        </div>
        <div class=\"col-sm-6\">
          <div class=\"card mb-3\">
            <div class=\"card-body\">
              <form id=\"form-login\" action=\"";
        // line 43
        echo ($context["login"] ?? null);
        echo "\" method=\"post\" data-oc-toggle=\"ajax\">
                <h1>";
        // line 44
        echo ($context["text_returning_customer"] ?? null);
        echo "</h1>
                <p><strong>";
        // line 45
        echo ($context["text_i_am_returning_customer"] ?? null);
        echo "</strong></p>
                <div class=\"mb-3\">
                  <label for=\"input-email\" class=\"col-form-label\">";
        // line 47
        echo ($context["entry_email"] ?? null);
        echo "</label>
                  <input type=\"text\" name=\"email\" value=\"";
        // line 48
        echo ($context["email"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_email"] ?? null);
        echo "\" id=\"input-email\" class=\"form-control\"/>
                </div>
                <div class=\"mb-3\">
                  <label for=\"input-password\" class=\"col-form-label\">";
        // line 51
        echo ($context["entry_password"] ?? null);
        echo "</label>
                  <input type=\"password\" name=\"password\" value=\"";
        // line 52
        echo ($context["password"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_password"] ?? null);
        echo "\" id=\"input-password\" class=\"form-control\"/>
                  <a href=\"";
        // line 53
        echo ($context["forgotten"] ?? null);
        echo "\">";
        echo ($context["text_forgotten"] ?? null);
        echo "</a>
                </div>
                <button type=\"submit\" class=\"btn btn-primary\">";
        // line 55
        echo ($context["button_login"] ?? null);
        echo "</button>
                ";
        // line 56
        if (($context["redirect"] ?? null)) {
            // line 57
            echo "                  <input type=\"hidden\" name=\"redirect\" value=\"";
            echo ($context["redirect"] ?? null);
            echo "\"/>
                ";
        }
        // line 59
        echo "              </form>
            </div>
          </div>
        </div>
      </div>
      ";
        // line 64
        echo ($context["content_bottom"] ?? null);
        echo "</div>
    ";
        // line 65
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
</div>
";
        // line 68
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/login.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  206 => 68,  200 => 65,  196 => 64,  189 => 59,  183 => 57,  181 => 56,  177 => 55,  170 => 53,  164 => 52,  160 => 51,  152 => 48,  148 => 47,  143 => 45,  139 => 44,  135 => 43,  124 => 37,  120 => 36,  116 => 35,  112 => 34,  104 => 29,  99 => 28,  93 => 26,  90 => 25,  84 => 23,  82 => 22,  76 => 18,  65 => 16,  61 => 15,  51 => 10,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/login.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/account/login.twig");
    }
}
