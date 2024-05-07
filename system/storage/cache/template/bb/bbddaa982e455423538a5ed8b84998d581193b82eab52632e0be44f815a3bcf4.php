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

/* extension/opencart/catalog/view/template/module/account.twig */
class __TwigTemplate_32b8b406b344837a40039295740a16e4756ced3620ab401e299c002237aba12e extends Template
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
        echo "<div class=\"list-group accolumn\">
  <h3><svg class=\"\" width=\"20px\" height=\"20px\"> <use xlink:href=\"#acluser\"></use> </svg>ACCOUNT SETTINGS</h3>
  ";
        // line 3
        if ( !($context["logged"] ?? null)) {
            // line 4
            echo "    <a href=\"";
            echo ($context["login"] ?? null);
            echo "\" class=\"list-group-item\">";
            echo ($context["text_login"] ?? null);
            echo "</a> <a href=\"";
            echo ($context["register"] ?? null);
            echo "\" class=\"list-group-item\">";
            echo ($context["text_register"] ?? null);
            echo "</a> <a href=\"";
            echo ($context["forgotten"] ?? null);
            echo "\" class=\"list-group-item\">";
            echo ($context["text_forgotten"] ?? null);
            echo "</a>
  ";
        }
        // line 6
        echo "  <a href=\"";
        echo ($context["account"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_account"] ?? null);
        echo "</a>
  ";
        // line 7
        if (($context["logged"] ?? null)) {
            // line 8
            echo "    <a href=\"";
            echo ($context["edit"] ?? null);
            echo "\" class=\"list-group-item\">";
            echo ($context["text_edit"] ?? null);
            echo "</a> <a href=\"";
            echo ($context["password"] ?? null);
            echo "\" class=\"list-group-item\">";
            echo ($context["text_password"] ?? null);
            echo "</a>
  ";
        }
        // line 10
        echo "  <a href=\"";
        echo ($context["address"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_address"] ?? null);
        echo "</a>
  <hr>
  <h3><svg class=\"\" width=\"20px\" height=\"20px\"> <use xlink:href=\"#aclorder\"></use> </svg>MY ORDERS </h3>
   <a href=\"";
        // line 13
        echo ($context["order"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_order"] ?? null);
        echo "</a> 
    <a href=\"";
        // line 14
        echo ($context["download"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_download"] ?? null);
        echo "</a>
    <a href=\"";
        // line 15
        echo ($context["return"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_return"] ?? null);
        echo "</a> 
    <a href=\"";
        // line 16
        echo ($context["transaction"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_transaction"] ?? null);
        echo "</a>
    <hr>
    <h3><svg class=\"\" width=\"20px\" height=\"20px\"> <use xlink:href=\"#aclufolder\"></use> </svg>MY STUFF</h3>
     <a href=\"";
        // line 19
        echo ($context["wishlist"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_wishlist"] ?? null);
        echo "</a>
    ";
        // line 21
        echo "    <a href=\"";
        echo ($context["reward"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_reward"] ?? null);
        echo "</a>
    <a href=\"";
        // line 22
        echo ($context["newsletter"] ?? null);
        echo "\" class=\"list-group-item\">";
        echo ($context["text_newsletter"] ?? null);
        echo "</a>
     <hr>
  ";
        // line 24
        if (($context["logged"] ?? null)) {
            // line 25
            echo "    <h3 class=\"acl\"><svg class=\"\" width=\"20px\" height=\"20px\"> <use xlink:href=\"#aclogout\"></use> </svg><a href=\"";
            echo ($context["logout"] ?? null);
            echo "\" class=\"list-group-item logu\">";
            echo ($context["text_logout"] ?? null);
            echo "</a></h3>
  ";
        }
        // line 27
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "extension/opencart/catalog/view/template/module/account.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  145 => 27,  137 => 25,  135 => 24,  128 => 22,  121 => 21,  115 => 19,  107 => 16,  101 => 15,  95 => 14,  89 => 13,  80 => 10,  68 => 8,  66 => 7,  59 => 6,  43 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/opencart/catalog/view/template/module/account.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\opencart\\catalog\\view\\template\\module\\account.twig");
    }
}
