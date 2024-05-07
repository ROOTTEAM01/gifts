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

/* catalog/view/template/account/account.twig */
class __TwigTemplate_7ba64ea1d8a43142aadacefe41d4a8894a676c0cd753e167967b1c80b49d31b0 extends Template
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
        echo "<div class=\"account\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div class=\"container\">
<div class=\"pb-50\">
<div id=\"account-account\" class=\"container acpage\">
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
<!-- Breadcrumb end -->
  ";
        // line 23
        if (($context["success"] ?? null)) {
            // line 24
            echo "    <div class=\"alert alert-success alert-dismissible\"><i class=\"fas fa-check-circle\"></i> ";
            echo ($context["success"] ?? null);
            echo "</div>
  ";
        }
        // line 26
        echo "  <div class=\"row\"> ";
        echo ($context["column_left"] ?? null);
        echo "
     ";
        // line 27
        if ((($context["column_left"] ?? null) && ($context["column_right"] ?? null))) {
            // line 28
            echo "    ";
            $context["class"] = "col-sm-12 col-md-6  col-xs-12 colright accw";
            // line 29
            echo "    ";
        } elseif ((($context["column_left"] ?? null) || ($context["column_right"] ?? null))) {
            // line 30
            echo "    ";
            $context["class"] = "col-sm-12 col-md-9 col-lg-9  col-xs-12 colright";
            // line 31
            echo "    ";
        } else {
            // line 32
            echo "    ";
            $context["class"] = "col-xs-12";
            // line 33
            echo "    ";
        }
        // line 34
        echo "    <div id=\"content\" class=\"";
        echo ($context["class"] ?? null);
        echo "\">
      <div class=\"acco\">
      ";
        // line 36
        echo ($context["content_top"] ?? null);
        echo "
      <h2 class=\"achead\">";
        // line 37
        echo ($context["text_my_account"] ?? null);
        echo "</h2>
      <div class=\"row accrow\">
        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
        <a href=\"";
        // line 40
        echo ($context["edit"] ?? null);
        echo "\">
          <span><img src=\"image/catalog/account/user.svg\" alt=\"user\"></span>
          <span>";
        // line 42
        echo ($context["text_edit"] ?? null);
        echo "<br><span>edit your account</span></span>
        </a>
         </div>
        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 46
        echo ($context["password"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/lock.svg\" alt=\"user\"></span>
            <span>";
        // line 48
        echo ($context["text_password"] ?? null);
        echo "<br><span>Change Your Passowrd</span></span>
          </a>
        </div>
        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 52
        echo ($context["address"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/route.svg\" alt=\"route\"></span>
            <span>";
        // line 54
        echo ($context["text_address"] ?? null);
        echo "<br><span>Edit your address</span></span>
          </a>
        </div>
       ";
        // line 58
        echo "        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 59
        echo ($context["newsletter"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/keyboard.svg\" alt=\"route\"></span>
            <span>";
        // line 61
        echo ($context["text_newsletter"] ?? null);
        echo "<br><span>subscribe for newsletter</span></span>
          </a>
        </div>
       
     </div>
      ";
        // line 66
        if (($context["credit_cards"] ?? null)) {
            // line 67
            echo "      <h2 class=\"achead\">";
            echo ($context["text_credit_card"] ?? null);
            echo "</h2>
      <ul class=\"list-unstyled accolor\">
        ";
            // line 69
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["credit_cards"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["credit_card"]) {
                // line 70
                echo "        <li><a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["credit_card"], "href", [], "any", false, false, false, 70);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["credit_card"], "name", [], "any", false, false, false, 70);
                echo "</a></li>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['credit_card'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 72
            echo "      </ul>
      ";
        }
        // line 74
        echo "      <h2 class=\"achead\">
        ";
        // line 75
        echo ($context["text_my_orders"] ?? null);
        echo "
      </h2>
     <div class=\"row accrow\">
        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 79
        echo ($context["order"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/box.svg\" alt=\"box\"></span>
            <span>";
        // line 81
        echo ($context["text_order"] ?? null);
        echo "<br><span>See your order history</span></span>
          </a>
        </div>
        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 85
        echo ($context["download"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/download.svg\" alt=\"download\"></span>
            <span>";
        // line 87
        echo ($context["text_download"] ?? null);
        echo "<br><span>Download Your Theme</span></span>
          </a>
        </div>
        ";
        // line 90
        if (($context["reward"] ?? null)) {
            // line 91
            echo "        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
            // line 92
            echo ($context["reward"] ?? null);
            echo "\">
            <span><img src=\"image/catalog/account/star.svg\" alt=\"star\"></span>
            <span>";
            // line 94
            echo ($context["text_reward"] ?? null);
            echo "<br><span>Count Reward Point</span></span>
          </a>
        </div>
        ";
        }
        // line 98
        echo "        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 99
        echo ($context["return"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/insert.svg\" alt=\"insert\"></span>
            <span>";
        // line 101
        echo ($context["text_return"] ?? null);
        echo "<br><span>See your Return</span></span>
          </a>
        </div>
        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 105
        echo ($context["transaction"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/cabinet.svg\" alt=\"cabinet\"></span>
            <span>";
        // line 107
        echo ($context["text_transaction"] ?? null);
        echo "<br><span>See your Transaction</span></span>
          </a>
        </div>
        <div class=\"col-lg-6 col-md-12 col-sm-12 col-xs-12\">
          <a href=\"";
        // line 111
        echo ($context["affiliate"] ?? null);
        echo "\">
            <span><img src=\"image/catalog/account/recurring.svg\" alt=\"recurring\"></span>
            <span>";
        // line 113
        echo ($context["text_recurring"] ?? null);
        echo "<br><span>See your Payment</span></span>
          </a>
        </div>
      </div>
      ";
        // line 136
        echo "      ";
        echo ($context["content_bottom"] ?? null);
        echo "
    </div>
  </div>
    ";
        // line 139
        echo ($context["column_right"] ?? null);
        echo "
  </div>
</div>
</div>
</div>
";
        // line 144
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/account.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  314 => 144,  306 => 139,  299 => 136,  292 => 113,  287 => 111,  280 => 107,  275 => 105,  268 => 101,  263 => 99,  260 => 98,  253 => 94,  248 => 92,  245 => 91,  243 => 90,  237 => 87,  232 => 85,  225 => 81,  220 => 79,  213 => 75,  210 => 74,  206 => 72,  195 => 70,  191 => 69,  185 => 67,  183 => 66,  175 => 61,  170 => 59,  167 => 58,  161 => 54,  156 => 52,  149 => 48,  144 => 46,  137 => 42,  132 => 40,  126 => 37,  122 => 36,  116 => 34,  113 => 33,  110 => 32,  107 => 31,  104 => 30,  101 => 29,  98 => 28,  96 => 27,  91 => 26,  85 => 24,  83 => 23,  77 => 19,  66 => 17,  62 => 16,  52 => 11,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/account.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\account\\account.twig");
    }
}
