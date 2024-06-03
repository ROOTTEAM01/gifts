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

/* catalog/view/template/account/relative_form.twig */
class __TwigTemplate_77ee564291343cfa4da5db84996f698845e4bb298f6869203b51fe67f6ce84fb extends Template
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
<div class=\"pt-50\">
\t<div id=\"account-relative-form\" class=\"container acpage\">
\t\t<div class=\"back-to-home\">
\t\t\t<a href=\"";
        // line 5
        echo ($context["home"] ?? null);
        echo "\">
\t\t\t\t<img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\">
\t\t\t\t&nbsp
\t\t\t\t<span>";
        // line 8
        echo ($context["back_to_main"] ?? null);
        echo "</span>
\t\t\t</a>
\t\t</div>
\t\t<div class=\"row pt-5\">
\t\t\t<h3>";
        // line 12
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", false, false, false, 12)) ? (($context["text_edit_relative"] ?? null)) : (($context["text_add_relative"] ?? null)));
        echo "</h3>
\t\t\t<form action=\"";
        // line 13
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" id=\"relative-form\">
\t\t\t\t<input type=\"hidden\" name=\"id\" id=\"id\" value=\"";
        // line 14
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", true, true, false, 14)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", false, false, false, 14), "")) : (""));
        echo "\">

\t\t\t\t";
        // line 16
        $context["fields"] = [0 => ["label" => "Name", "id" => "name", "type" => "text", "value" => ((twig_get_attribute($this->env, $this->source,         // line 17
($context["relative"] ?? null), "name", [], "any", true, true, false, 17)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "name", [], "any", false, false, false, 17), "")) : ("")), "placeholder" => ($context["text_name_placeholder"] ?? null)], 1 => ["label" => "Surname", "id" => "surname", "type" => "text", "value" => ((twig_get_attribute($this->env, $this->source,         // line 18
($context["relative"] ?? null), "surname", [], "any", true, true, false, 18)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "surname", [], "any", false, false, false, 18), "")) : ("")), "placeholder" => ($context["text_surname_placeholder"] ?? null)], 2 => ["label" => "Description", "id" => "description", "type" => "textarea", "value" => ((twig_get_attribute($this->env, $this->source,         // line 19
($context["relative"] ?? null), "description", [], "any", true, true, false, 19)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "description", [], "any", false, false, false, 19), "")) : ("")), "placeholder" => ($context["text_description_placeholder"] ?? null)]];
        // line 21
        echo "
\t\t\t\t";
        // line 22
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["field"]) {
            // line 23
            echo "\t\t\t\t\t<div class=\"form-group required\">
\t\t\t\t\t\t<label for=\"";
            // line 24
            echo twig_get_attribute($this->env, $this->source, $context["field"], "id", [], "any", false, false, false, 24);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["field"], "label", [], "any", false, false, false, 24);
            echo "</label>
\t\t\t\t\t\t";
            // line 25
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "type", [], "any", false, false, false, 25) == "textarea")) {
                // line 26
                echo "\t\t\t\t\t\t\t<textarea name=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "id", [], "any", false, false, false, 26);
                echo "\" id=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "id", [], "any", false, false, false, 26);
                echo "\" class=\"form-control\"  placeholder=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "placeholder", [], "any", false, false, false, 26);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "value", [], "any", false, false, false, 26);
                echo "</textarea>
\t\t\t\t\t\t";
            } else {
                // line 28
                echo "\t\t\t\t\t\t\t<input type=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "type", [], "any", false, false, false, 28);
                echo "\" name=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "id", [], "any", false, false, false, 28);
                echo "\" id=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "id", [], "any", false, false, false, 28);
                echo "\" class=\"form-control\" required placeholder=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "placeholder", [], "any", false, false, false, 28);
                echo "\" value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["field"], "value", [], "any", false, false, false, 28);
                echo "\">
\t\t\t\t\t\t";
            }
            // line 30
            echo "\t\t\t\t\t\t";
            if ((twig_get_attribute($this->env, $this->source, $context["field"], "id", [], "any", false, false, false, 30) == "name")) {
                // line 31
                echo "\t\t\t\t\t\t\t<div id=\"error-name\" class=\"invalid-feedback\">";
                echo ($context["error_name_required"] ?? null);
                echo "</div>
\t\t\t\t\t\t";
            } elseif ((twig_get_attribute($this->env, $this->source,             // line 32
$context["field"], "id", [], "any", false, false, false, 32) == "surname")) {
                // line 33
                echo "\t\t\t\t\t\t\t<div id=\"error-surname\" class=\"invalid-feedback\">";
                echo ($context["error_surname_required"] ?? null);
                echo "</div>
\t\t\t\t\t\t";
            } elseif ((twig_get_attribute($this->env, $this->source,             // line 34
$context["field"], "id", [], "any", false, false, false, 34) == "description")) {
                // line 35
                echo "\t\t\t\t\t\t\t<div id=\"error-description\" class=\"invalid-feedback\">";
                echo ($context["error_description_required"] ?? null);
                echo "</div>
\t\t\t\t\t\t";
            }
            // line 37
            echo "\t\t\t\t\t</div>
\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 39
        echo "
\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t<label for=\"occasion_type\">Occasion Type</label>
\t\t\t\t\t<select name=\"occasion_type\" id=\"occasion_type\" class=\"form-control\" required>
\t\t\t\t\t\t";
        // line 43
        $context["occasions"] = [0 => "Ծնունդ", 1 => "Կնունք", 2 => "Ամանոր", 3 => "Հարսանիք", 4 => ""];
        // line 44
        echo "\t\t\t\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["occasions"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["occasion"]) {
            // line 45
            echo "\t\t\t\t\t\t\t<option value=\"";
            echo $context["occasion"];
            echo "\" ";
            if ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "occasion_type", [], "any", false, false, false, 45) == $context["occasion"])) {
                echo " selected ";
            }
            echo ">
\t\t\t\t\t\t\t\t";
            // line 46
            echo ((array_key_exists("occasion", $context)) ? (_twig_default_filter($context["occasion"], "None")) : ("None"));
            echo "
\t\t\t\t\t\t\t</option>
\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['occasion'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 49
        echo "\t\t\t\t\t</select>
\t\t\t\t</div>

\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t<label for=\"day\">Day</label>
\t\t\t\t\t<input type=\"date\" name=\"day\" id=\"day\" class=\"form-control\" required value=\"";
        // line 54
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "day", [], "any", true, true, false, 54)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "day", [], "any", false, false, false, 54), "")) : (""));
        echo "\">
\t\t\t\t</div>

\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t<label for=\"delivery_time\">Delivery Time</label>
\t\t\t\t\t<input type=\"date\" name=\"delivery_time\" id=\"delivery_time\" class=\"form-control\" required value=\"";
        // line 59
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "delivery_time", [], "any", true, true, false, 59)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "delivery_time", [], "any", false, false, false, 59), "")) : (""));
        echo "\">
\t\t\t\t</div>

\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t<label for=\"remember_me_week\">Remember Me Week</label>
\t\t\t\t\t<select name=\"remember_me_week\" id=\"remember_me_week\" class=\"form-control\">
\t\t\t\t\t\t";
        // line 65
        $context["remember_weeks"] = [0 => "Remember me 1 week later", 1 => "Remember me 2 weeks later", 2 => "Remember me 3 weeks later", 3 => "Remember me 1 month later", 4 => "None"];
        // line 66
        echo "\t\t\t\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["remember_weeks"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["week"]) {
            // line 67
            echo "\t\t\t\t\t\t\t<option value=\"";
            echo $context["week"];
            echo "\" ";
            if ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "remember_me_week", [], "any", false, false, false, 67) == $context["week"])) {
                echo " selected ";
            }
            echo ">
\t\t\t\t\t\t\t\t";
            // line 68
            echo $context["week"];
            echo "
\t\t\t\t\t\t\t</option>
\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['week'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 71
        echo "\t\t\t\t\t</select>
\t\t\t\t</div>

\t\t\t\t<div class=\"form-group\">
\t\t\t\t\t<label for=\"remember_type\">Remember Type</label>
\t\t\t\t\t<select name=\"remember_type\" id=\"remember_type\" class=\"form-control\" required>
\t\t\t\t\t\t";
        // line 77
        $context["remember_types"] = [0 => "Gmail", 1 => "SMS", 2 => "Call", 3 => ""];
        // line 78
        echo "\t\t\t\t\t\t";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["remember_types"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["type"]) {
            // line 79
            echo "\t\t\t\t\t\t\t<option value=\"";
            echo $context["type"];
            echo "\" ";
            if ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "remember_type", [], "any", false, false, false, 79) == $context["type"])) {
                echo " selected ";
            }
            echo ">
\t\t\t\t\t\t\t\t";
            // line 80
            echo ((array_key_exists("type", $context)) ? (_twig_default_filter($context["type"], "None")) : ("None"));
            echo "
\t\t\t\t\t\t\t</option>
\t\t\t\t\t\t";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['type'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 83
        echo "\t\t\t\t\t</select>
\t\t\t\t</div>

\t\t\t\t<button type=\"submit\" class=\"btn btn-primary\">";
        // line 86
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", false, false, false, 86)) ? (($context["button_edit"] ?? null)) : (($context["button_add"] ?? null)));
        echo "</button>
\t\t\t</form>
\t\t</div>
\t</div>
</div>
";
        // line 91
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/relative_form.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  275 => 91,  267 => 86,  262 => 83,  253 => 80,  244 => 79,  239 => 78,  237 => 77,  229 => 71,  220 => 68,  211 => 67,  206 => 66,  204 => 65,  195 => 59,  187 => 54,  180 => 49,  171 => 46,  162 => 45,  157 => 44,  155 => 43,  149 => 39,  142 => 37,  136 => 35,  134 => 34,  129 => 33,  127 => 32,  122 => 31,  119 => 30,  105 => 28,  93 => 26,  91 => 25,  85 => 24,  82 => 23,  78 => 22,  75 => 21,  73 => 19,  72 => 18,  71 => 17,  70 => 16,  65 => 14,  61 => 13,  57 => 12,  50 => 8,  44 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/relative_form.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\account\\relative_form.twig");
    }
}
