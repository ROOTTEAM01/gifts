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
    <div id=\"account-relative-form\" class=\"container acpage\">
        <div class=\"back-to-home\">
            <a href=\"";
        // line 5
        echo ($context["home"] ?? null);
        echo "\">
                <img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\">
                &nbsp
                <span>";
        // line 8
        echo ($context["back_to_main"] ?? null);
        echo "</span>
            </a>
        </div>
        <div class=\"row pt-5\">
            <h3>";
        // line 12
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", false, false, false, 12)) ? (($context["text_edit_relative"] ?? null)) : (($context["text_add_relative"] ?? null)));
        echo "</h3>
            <form action=\"";
        // line 13
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" id=\"relative-form\">
                <input type=\"hidden\" name=\"id\" id=\"id\" value=\"";
        // line 14
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", true, true, false, 14)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", false, false, false, 14), "")) : (""));
        echo "\">

                <div class=\"mb-3 required\">
                    <label for=\"input-name\" class=\"col-form-label\">Name</label>
                    <div class=\"col-sm-12\">
                        <input type=\"text\" name=\"name\" value=\"";
        // line 19
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "name", [], "any", true, true, false, 19)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "name", [], "any", false, false, false, 19), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 19), "name", [], "any", false, false, false, 19))) : (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 19), "name", [], "any", false, false, false, 19)));
        echo "\" placeholder=\"Enter Name\" id=\"input-name\" class=\"form-control ";
        if ((($context["submitted"] ?? null) && ($context["error_name"] ?? null))) {
            echo "is-invalid";
        }
        echo "\"/>
                        ";
        // line 20
        if ((($context["submitted"] ?? null) && ($context["error_name"] ?? null))) {
            // line 21
            echo "                            <div id=\"error_name\" class=\"invalid-feedback\">";
            echo ($context["error_name"] ?? null);
            echo "</div>
                        ";
        }
        // line 23
        echo "                    </div>
                </div>

                <div class=\"mb-3 required\">
                    <label for=\"input-surname\" class=\"col-form-label\">Surname</label>
                    <div class=\"col-sm-12\">
                        <input type=\"text\" name=\"surname\" value=\"";
        // line 29
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "surname", [], "any", true, true, false, 29)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "surname", [], "any", false, false, false, 29), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 29), "surname", [], "any", false, false, false, 29))) : (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 29), "surname", [], "any", false, false, false, 29)));
        echo "\" placeholder=\"Enter Surname\" id=\"input-surname\" class=\"form-control ";
        if ((($context["submitted"] ?? null) && ($context["error_surname"] ?? null))) {
            echo "is-invalid";
        }
        echo "\"/>
                        ";
        // line 30
        if ((($context["submitted"] ?? null) && ($context["error_surname"] ?? null))) {
            // line 31
            echo "                            <div id=\"error_surname\" class=\"invalid-feedback\">";
            echo ($context["error_surname"] ?? null);
            echo "</div>
                        ";
        }
        // line 33
        echo "                    </div>
                </div>

                <div class=\"mb-3 required\">
                    <label for=\"input-description\" class=\"col-form-label\">Description</label>
                    <div class=\"col-sm-12\">
                        <input type=\"text\" name=\"description\" value=\"";
        // line 39
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "description", [], "any", true, true, false, 39)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "description", [], "any", false, false, false, 39), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 39), "description", [], "any", false, false, false, 39))) : (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 39), "description", [], "any", false, false, false, 39)));
        echo "\" placeholder=\"Enter Description\" id=\"input-description\" class=\"form-control ";
        if ((($context["submitted"] ?? null) && ($context["error_description"] ?? null))) {
            echo "is-invalid";
        }
        echo "\"/>
                        ";
        // line 40
        if ((($context["submitted"] ?? null) && ($context["error_description"] ?? null))) {
            // line 41
            echo "                            <div id=\"error_description\" class=\"invalid-feedback\">";
            echo ($context["error_description"] ?? null);
            echo "</div>
                        ";
        }
        // line 43
        echo "                    </div>
                </div>

                <div class=\"form-group\">
                    <label for=\"occasion_type\">Occasion Type</label>
                    <select name=\"occasion_type\" id=\"occasion_type\" class=\"form-control\">
                        ";
        // line 49
        $context["occasions"] = [0 => "Ծնունդ", 1 => "Կնունք", 2 => "Ամանոր", 3 => "Հարսանիք"];
        // line 50
        echo "                        ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["occasions"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["occasion"]) {
            // line 51
            echo "                            <option value=\"";
            echo $context["occasion"];
            echo "\" ";
            if (((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "occasion_type", [], "any", false, false, false, 51) == $context["occasion"]) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 51), "occasion_type", [], "any", false, false, false, 51) == $context["occasion"]))) {
                echo " selected ";
            }
            echo ">
                                ";
            // line 52
            echo ((array_key_exists("occasion", $context)) ? (_twig_default_filter($context["occasion"], "Ծնունդ")) : ("Ծնունդ"));
            echo "
                            </option>
                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['occasion'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 55
        echo "                    </select>
                </div>

                <div class=\"form-group\">
                    <label for=\"day\">Day</label>
                    <input type=\"date\" name=\"day\" id=\"day\" class=\"form-control\" value=\"";
        // line 60
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "day", [], "any", true, true, false, 60)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "day", [], "any", false, false, false, 60), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 60), "day", [], "any", false, false, false, 60))) : (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 60), "day", [], "any", false, false, false, 60)));
        echo "\">
                </div>

                <div class=\"form-group\">
                    <label for=\"delivery_time\">Delivery Time</label>
                    <input type=\"date\" name=\"delivery_time\" id=\"delivery_time\" class=\"form-control\" value=\"";
        // line 65
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "delivery_time", [], "any", true, true, false, 65)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "delivery_time", [], "any", false, false, false, 65), twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 65), "delivery_time", [], "any", false, false, false, 65))) : (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 65), "delivery_time", [], "any", false, false, false, 65)));
        echo "\">
                </div>

                <div class=\"form-group\">
                    <label for=\"remember_me_week\">Remember Me Week</label>
                    <select name=\"remember_me_week\" id=\"remember_me_week\" class=\"form-control\">
                        ";
        // line 71
        $context["remember_weeks"] = [0 => "Remember me 1 week later", 1 => "Remember me 2 weeks later", 2 => "Remember me 3 weeks later", 3 => "Remember me 1 month later"];
        // line 72
        echo "                        ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["remember_weeks"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["week"]) {
            // line 73
            echo "                            <option value=\"";
            echo $context["week"];
            echo "\" ";
            if (((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "remember_me_week", [], "any", false, false, false, 73) == $context["week"]) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 73), "remember_me_week", [], "any", false, false, false, 73) == $context["week"]))) {
                echo " selected ";
            }
            echo ">
                                ";
            // line 74
            echo ((array_key_exists("type", $context)) ? (_twig_default_filter(($context["type"] ?? null), "Remember me 1 week later")) : ("Remember me 1 week later"));
            echo "
                            </option>
                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['week'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 77
        echo "                    </select>
                </div>

                <div class=\"form-group\">
                    <label for=\"remember_type\">Remember Type</label>
                    <select name=\"remember_type\" id=\"remember_type\" class=\"form-control\" required>
                        ";
        // line 83
        $context["remember_types"] = [0 => "Gmail", 1 => "SMS", 2 => "Call"];
        // line 84
        echo "                        ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["remember_types"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["type"]) {
            // line 85
            echo "                            <option value=\"";
            echo $context["type"];
            echo "\" ";
            if (((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "remember_type", [], "any", false, false, false, 85) == $context["type"]) || (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["request"] ?? null), "post", [], "any", false, false, false, 85), "remember_type", [], "any", false, false, false, 85) == $context["type"]))) {
                echo " selected ";
            }
            echo ">
                                ";
            // line 86
            echo ((array_key_exists("type", $context)) ? (_twig_default_filter($context["type"], "Gmail")) : ("Gmail"));
            echo "
                            </option>
                        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['type'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 89
        echo "                    </select>
                </div>

                <button type=\"submit\" class=\"btn btn-primary\">";
        // line 92
        echo ((twig_get_attribute($this->env, $this->source, ($context["relative"] ?? null), "id", [], "any", false, false, false, 92)) ? (($context["button_edit"] ?? null)) : (($context["button_add"] ?? null)));
        echo "</button>
            </form>
        </div>
    </div>
</div>
";
        // line 97
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
        return array (  265 => 97,  257 => 92,  252 => 89,  243 => 86,  234 => 85,  229 => 84,  227 => 83,  219 => 77,  210 => 74,  201 => 73,  196 => 72,  194 => 71,  185 => 65,  177 => 60,  170 => 55,  161 => 52,  152 => 51,  147 => 50,  145 => 49,  137 => 43,  131 => 41,  129 => 40,  121 => 39,  113 => 33,  107 => 31,  105 => 30,  97 => 29,  89 => 23,  83 => 21,  81 => 20,  73 => 19,  65 => 14,  61 => 13,  57 => 12,  50 => 8,  44 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/relative_form.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\account\\relative_form.twig");
    }
}
