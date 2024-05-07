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

/* catalog/view/template/information/contact.twig */
class __TwigTemplate_2ee380d5720283113a3cd8c3f9748097 extends Template
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
\t";
        // line 2
        echo ($context["header"] ?? null);
        echo "
\t</div>
\t<div class=\"\">
\t<div class=\"contact-top-bg pb-30\">
\t\t<div class=\"container\">
\t\t\t<div class=\"\">
\t<!-- Breadcrumb -->
\t<div class=\"d-flex justify-content-between align-items-center back-page\">
\t  <div class=\"\">
\t  <div class=\"back-to-home\">
\t\t  <a href=\"";
        // line 12
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
\t   </div>  
\t  </div>
\t  <div class=\"\">
\t\t<ul class=\"breadcrumb \">
\t\t  ";
        // line 17
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 18
            echo "\t\t\t<li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 18);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 18);
            echo "</a></li>
\t\t  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 20
        echo "\t\t</ul>  
\t  </div> 
\t</div>
\t\t\t\t<!-- Breadcrumb end -->
\t\t\t\t<h1 class=\"other-title mb-3\">";
        // line 24
        echo ($context["heading_title"] ?? null);
        echo "</h1> 
\t\t\t\t<div class=\"contact-desc\">
\t\t\t\t\t<p>";
        // line 26
        echo ($context["contact_desc"] ?? null);
        echo "</p>
\t\t\t\t</div>
\t\t\t</div>
\t\t</div>
\t</div>
\t<div id=\"information-contact\" class=\"container\">
\t\t<div class=\"row\">
\t\t\t";
        // line 33
        echo ($context["column_left"] ?? null);
        echo "
\t\t\t<div id=\"content\" class=\"col\">";
        // line 34
        echo ($context["content_top"] ?? null);
        echo "
\t\t\t\t
\t\t\t\t";
        // line 37
        echo "\t\t\t\t<div class=\"row\">
\t\t\t\t\t<div class=\"col-md-6 col-xs-12 wbcntleft\">\t\t\t\t
\t\t\t\t\t\t<div class=\"card\">
\t\t\t\t\t\t\t<div class=\"card-body\">\t
\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t<div class=\"col-md-6 col-xs-12\">
\t\t\t\t\t\t\t\t\t<div class=\"contact-store-information\">
\t\t\t\t\t\t\t\t\t\t<h4>";
        // line 44
        echo ($context["text_telephone"] ?? null);
        echo "</h4>
\t\t\t\t\t\t\t\t\t\t<div class=\"store-inf\">
\t\t\t\t\t\t\t\t\t\t\t";
        // line 46
        echo ($context["telephone"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t<div class=\"contact-store-information\">
\t\t\t\t\t\t\t\t\t\t<h4>";
        // line 50
        echo ($context["text_mail"] ?? null);
        echo "</h4>
\t\t\t\t\t\t\t\t\t\t<div class=\"store-inf\">
\t\t\t\t\t\t\t\t\t\t\t";
        // line 52
        echo ($context["store_mail"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"col-md-6 col-xs-12 store-add\">
\t\t\t\t\t\t\t\t\t<div class=\"contact-store-information\">
\t\t\t\t\t\t\t\t\t\t<h4>";
        // line 58
        echo ($context["store_add"] ?? null);
        echo "</h4>
\t\t\t\t\t\t\t\t\t\t<div class=\"store-inf\">
\t\t\t\t\t\t\t\t\t\t\t";
        // line 60
        echo ($context["store"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t<address>
\t\t\t\t\t\t\t\t\t\t\t\t";
        // line 62
        echo ($context["address"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t\t\t</address>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>\t\t
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t";
        // line 71
        echo "\t\t\t\t\t\t\t\t<div>
\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t\t";
        // line 74
        if (($context["geocode"] ?? null)) {
            // line 75
            echo "\t\t\t\t\t\t\t\t\t\t<a href=\"https://maps.google.com/maps?q=";
            echo twig_urlencode_filter(($context["geocode"] ?? null));
            echo "&hl=";
            echo ($context["geocode_hl"] ?? null);
            echo "&t=m&z=15\" target=\"_blank\" class=\"btn btn-info\"><i class=\"fas fa-map-marker\"></i> ";
            echo ($context["button_map"] ?? null);
            echo "</a>
\t\t\t\t\t\t\t\t\t";
        }
        // line 77
        echo "\t\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t
\t\t\t\t\t\t\t\t<div class=\"col-sm-3\"><strong>";
        // line 78
        echo ($context["text_email"] ?? null);
        echo "</strong>
\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t";
        // line 80
        echo ($context["store_email"] ?? null);
        echo "
\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"col-sm-3\">
\t\t\t\t\t\t\t\t\t";
        // line 85
        if (($context["open"] ?? null)) {
            // line 86
            echo "\t\t\t\t\t\t\t\t\t\t<strong>";
            echo ($context["text_open"] ?? null);
            echo "</strong>
\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t";
            // line 88
            echo ($context["open"] ?? null);
            echo "
\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t";
        }
        // line 92
        echo "\t\t\t\t\t\t\t\t\t";
        if (($context["comment"] ?? null)) {
            // line 93
            echo "\t\t\t\t\t\t\t\t\t\t<strong>";
            echo ($context["text_comment"] ?? null);
            echo "</strong>
\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t";
            // line 95
            echo ($context["comment"] ?? null);
            echo "
\t\t\t\t\t\t\t\t\t";
        }
        // line 97
        echo "\t\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t<div class=\"contact col-md-6 col-xs-12\">
\t\t\t\t";
        // line 102
        if (($context["locations"] ?? null)) {
            // line 103
            echo "\t\t\t\t\t<h2 class=\"other-title\">";
            echo ($context["text_store"] ?? null);
            echo "</h2>
\t\t\t\t\t<div id=\"accordion\" class=\"card-group\">
\t\t\t\t\t\t";
            // line 105
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["locations"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["location"]) {
                // line 106
                echo "\t\t\t\t\t\t\t<div class=\"card\">
\t\t\t\t\t\t\t\t<div class=\"card-header\">
\t\t\t\t\t\t\t\t\t<h4 class=\"card-title pt-2\"><a href=\"#collapse-location-";
                // line 108
                echo twig_get_attribute($this->env, $this->source, $context["location"], "location_id", [], "any", false, false, false, 108);
                echo "\" class=\"accordion-toggle\" data-bs-toggle=\"collapse\" data-bs-parent=\"#accordion\">";
                echo twig_get_attribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 108);
                echo " <i class=\"fas fa-caret-down\"></i></a></h4>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t<div class=\"card-collapse collapse\" id=\"collapse-location-";
                // line 110
                echo twig_get_attribute($this->env, $this->source, $context["location"], "location_id", [], "any", false, false, false, 110);
                echo "\">
\t\t\t\t\t\t\t\t\t<div class=\"card-body\">
\t\t\t\t\t\t\t\t\t\t<div class=\"row\">
\t\t\t\t\t\t\t\t\t\t\t";
                // line 113
                if (twig_get_attribute($this->env, $this->source, $context["location"], "image", [], "any", false, false, false, 113)) {
                    // line 114
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-3\"><img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["location"], "image", [], "any", false, false, false, 114);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 114);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 114);
                    echo "\" class=\"img-thumbnail\"/></div>
\t\t\t\t\t\t\t\t\t\t\t";
                }
                // line 116
                echo "\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-3\"><strong>";
                echo twig_get_attribute($this->env, $this->source, $context["location"], "name", [], "any", false, false, false, 116);
                echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t\t\t<address>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
                // line 119
                echo twig_get_attribute($this->env, $this->source, $context["location"], "address", [], "any", false, false, false, 119);
                echo "
\t\t\t\t\t\t\t\t\t\t\t\t</address>
\t\t\t\t\t\t\t\t\t\t\t\t";
                // line 121
                if (twig_get_attribute($this->env, $this->source, $context["location"], "geocode", [], "any", false, false, false, 121)) {
                    // line 122
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"https://maps.google.com/maps?q=";
                    echo twig_urlencode_filter(twig_get_attribute($this->env, $this->source, $context["location"], "geocode", [], "any", false, false, false, 122));
                    echo "&hl=";
                    echo ($context["geocode_hl"] ?? null);
                    echo "&t=m&z=15\" target=\"_blank\" class=\"btn btn-info\"><i class=\"fas fa-map-marker\"></i> ";
                    echo ($context["button_map"] ?? null);
                    echo "</a>
\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                // line 124
                echo "\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-3\"><strong>";
                // line 125
                echo ($context["text_telephone"] ?? null);
                echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t<br>
\t\t\t\t\t\t\t\t\t\t\t\t";
                // line 127
                echo twig_get_attribute($this->env, $this->source, $context["location"], "telephone", [], "any", false, false, false, 127);
                echo "
\t\t\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-sm-3\">
\t\t\t\t\t\t\t\t\t\t\t\t";
                // line 132
                if (twig_get_attribute($this->env, $this->source, $context["location"], "open", [], "any", false, false, false, 132)) {
                    // line 133
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<strong>";
                    echo ($context["text_open"] ?? null);
                    echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
                    // line 135
                    echo twig_get_attribute($this->env, $this->source, $context["location"], "open", [], "any", false, false, false, 135);
                    echo "
\t\t\t\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                // line 139
                echo "\t\t\t\t\t\t\t\t\t\t\t\t";
                if (twig_get_attribute($this->env, $this->source, $context["location"], "comment", [], "any", false, false, false, 139)) {
                    // line 140
                    echo "\t\t\t\t\t\t\t\t\t\t\t\t\t<strong>";
                    echo ($context["text_comment"] ?? null);
                    echo "</strong>
\t\t\t\t\t\t\t\t\t\t\t\t\t<br/>
\t\t\t\t\t\t\t\t\t\t\t\t\t";
                    // line 142
                    echo twig_get_attribute($this->env, $this->source, $context["location"], "comment", [], "any", false, false, false, 142);
                    echo "
\t\t\t\t\t\t\t\t\t\t\t\t";
                }
                // line 144
                echo "\t\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['location'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 150
            echo "\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t";
        }
        // line 154
        echo "\t\t\t\t<h3 class=\"other-title\">";
        echo ($context["text_contact"] ?? null);
        echo "</h3>
\t\t\t\t<form id=\"form-contact\" action=\"";
        // line 155
        echo ($context["send"] ?? null);
        echo "\" method=\"post\" data-oc-toggle=\"ajax\">
\t\t\t\t\t<fieldset>\t\t\t\t\t
\t\t\t\t\t\t<div class=\"mb-3 required\">
\t\t\t\t\t\t\t<label for=\"input-name\" class=\"col-form-label\">";
        // line 158
        echo ($context["entry_name"] ?? null);
        echo "</label>
\t\t\t\t\t\t
\t\t\t\t\t\t\t\t<input type=\"text\" name=\"name\" value=\"";
        // line 160
        echo ($context["name"] ?? null);
        echo "\" id=\"input-name\" class=\"form-control\"/>
\t\t\t\t\t\t\t\t<div id=\"error-name\" class=\"invalid-feedback\"></div>
\t\t\t\t\t\t\t
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"mb-3 required\">
\t\t\t\t\t\t\t<label for=\"input-email\" class=\"col-form-label\">";
        // line 165
        echo ($context["entry_email"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t<input type=\"text\" name=\"email\" value=\"";
        // line 166
        echo ($context["email"] ?? null);
        echo "\" id=\"input-email\" class=\"form-control\"/>
\t\t\t\t\t\t\t\t<div id=\"error-email\" class=\"invalid-feedback\"></div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t<div class=\"mb-3 required\">
\t\t\t\t\t\t\t<label for=\"input-enquiry\" class=\"col-form-label\">";
        // line 170
        echo ($context["entry_enquiry"] ?? null);
        echo "</label>
\t\t\t\t\t\t\t\t<textarea name=\"enquiry\" rows=\"10\" id=\"input-enquiry\" class=\"form-control\"></textarea>
\t\t\t\t\t\t\t\t<div id=\"error-enquiry\" class=\"invalid-feedback\"></div>
\t\t\t\t\t\t</div>
\t\t\t\t\t\t";
        // line 174
        echo ($context["captcha"] ?? null);
        echo "
\t\t\t\t\t</fieldset>
\t\t\t\t\t<div class=\"d-inline-block pt-2 pd-2 w-100\">
\t\t\t\t\t\t<div class=\"text-end\">
\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-primary\">";
        // line 178
        echo ($context["button_submit"] ?? null);
        echo "</button>
\t\t\t\t\t\t</div>
\t\t\t\t\t</div>
\t\t\t\t</form>
\t\t\t\t";
        // line 182
        echo ($context["content_bottom"] ?? null);
        echo "</div>
\t\t\t";
        // line 183
        echo ($context["column_right"] ?? null);
        echo "</div>
\t</div>
\t</div>
\t</div>
\t";
        // line 187
        echo ($context["footer"] ?? null);
        echo "
\t";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/information/contact.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  425 => 187,  418 => 183,  414 => 182,  407 => 178,  400 => 174,  393 => 170,  386 => 166,  382 => 165,  374 => 160,  369 => 158,  363 => 155,  358 => 154,  352 => 150,  341 => 144,  336 => 142,  330 => 140,  327 => 139,  320 => 135,  314 => 133,  312 => 132,  304 => 127,  299 => 125,  296 => 124,  286 => 122,  284 => 121,  279 => 119,  272 => 116,  262 => 114,  260 => 113,  254 => 110,  247 => 108,  243 => 106,  239 => 105,  233 => 103,  231 => 102,  224 => 97,  219 => 95,  213 => 93,  210 => 92,  203 => 88,  197 => 86,  195 => 85,  187 => 80,  182 => 78,  179 => 77,  169 => 75,  167 => 74,  162 => 71,  153 => 62,  148 => 60,  143 => 58,  134 => 52,  129 => 50,  122 => 46,  117 => 44,  108 => 37,  103 => 34,  99 => 33,  89 => 26,  84 => 24,  78 => 20,  67 => 18,  63 => 17,  53 => 12,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/information/contact.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/information/contact.twig");
    }
}
