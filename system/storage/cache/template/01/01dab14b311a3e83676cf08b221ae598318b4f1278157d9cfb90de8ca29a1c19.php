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

/* extension/workdonewsletter/catalog/view/template/module/workdonewsletter/default.twig */
class __TwigTemplate_1ab7ffb7ba3ef56b68f5b8f12294ff654d43d5ac3498a6da71cdc36061a3172d extends Template
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
        echo "<script src=\"extension/workdonewsletter/catalog/view/jquery/workdonewsletter.js\" type=\"text/javascript\"></script>
<div class=\"newsletter\">
\t<div class=\"container news\">
\t\t<div class=\"row\">
\t\t\t<div class=\"col-xs-12 news-ctn\">
\t\t\t\t<div class=\"workdo-newsletter ";
        // line 6
        echo ($context["prefix"] ?? null);
        echo " workdo-newsletter\" id=\"newsletter_";
        echo ($context["id"] ?? null);
        echo "\" data-mode=\"";
        echo ($context["mode"] ?? null);
        echo "\">
\t\t\t\t<form id=\"formNewLestter\" method=\"post\" action=\"";
        // line 7
        echo ($context["action"] ?? null);
        echo "\" class=\"formNewLestter newsletter-bg\" ";
        if ( !twig_test_empty(($context["banner"] ?? null))) {
            echo " style=\"background-image: url('";
            echo ($context["banner"] ?? null);
            echo "')\" ";
        }
        echo ">
\t\t\t<div class=\"inner\">
\t\t\t\t<div class=\"news-txt\">
\t\t\t\t\t<h2>";
        // line 10
        echo ($context["entry_sign_up_for_newsletter"] ?? null);
        echo "</h2>
\t\t\t\t\t
\t\t\t\t</div>
\t\t\t\t<div class=\"new-from\">
\t\t\t\t\t<div class=\"news-p\">";
        // line 14
        echo ($context["entry_sign_up_for_newsletter_desc"] ?? null);
        echo "</div>
\t\t\t\t<div class=\"field\">
\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t<input type=\"text\" class=\"form-control input-md inputNew\" ";
        // line 17
        if ( !array_key_exists("customer_email", $context)) {
            echo " onblur=\"javascript:if(this.value=='')this.value='";
            echo ($context["default_input_text"] ?? null);
            echo "';\" onfocus=\"javascript:if(this.value=='";
            echo ($context["default_input_text"] ?? null);
            echo "')this.value='';\"";
        }
        echo " value=\"";
        echo ((($context["customer_email"] ?? null)) ? (($context["customer_email"] ?? null)) : (($context["default_input_text"] ?? null)));
        echo "\" size=\"18\" name=\"email\">
\t\t\t\t</div>
\t\t\t\t<div class=\"button-submit\">
\t\t\t\t\t<button type=\"submit\" name=\"submitNewsletter\" class=\"btn btn-danger newsbtn\"><i class=\"fa fa-angle-double-right\"></i>";
        // line 20
        echo "</button>
\t\t\t\t</div>\t
\t\t\t\t</div>
\t\t\t\t<input type=\"hidden\" value=\"1\" name=\"action\">
\t\t\t\t<div class=\"valid\"></div>
\t\t\t\t</div>
\t\t\t\t";
        // line 29
        echo "\t\t\t\t
\t\t\t  </div>
\t\t</form>
</div>
\t\t\t</div>
\t\t</div>
</div>
</div>
<script type=\"text/javascript\"><!--
\$(\"#newsletter_";
        // line 38
        echo ($context["id"] ?? null);
        echo "\").workdoNewsletter().work(  '";
        echo ($context["valid_email"] ?? null);
        echo "' );
--></script>";
    }

    public function getTemplateName()
    {
        return "extension/workdonewsletter/catalog/view/template/module/workdonewsletter/default.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  110 => 38,  99 => 29,  91 => 20,  77 => 17,  71 => 14,  64 => 10,  52 => 7,  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/workdonewsletter/catalog/view/template/module/workdonewsletter/default.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\workdonewsletter\\catalog\\view\\template\\module\\workdonewsletter\\default.twig");
    }
}
