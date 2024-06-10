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

/* catalog/view/template/account/relative.twig */
class __TwigTemplate_df0a41d700cca0ed4c44c894de040854e164f2bfe4f9398a73173349d430f8f3 extends Template
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
<div class=\"pb-50\">
    <div id=\"account-relative\" class=\"container acpage\">
        <div class=\"d-flex justify-content-between align-items-center back-page\">
            <div class=\"\">
                <div class=\"back-to-home\">
                    <a href=\"";
        // line 7
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span>";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
                </div>
            </div>
            <div class=\"\">
                <ul class=\"breadcrumb \">
                    ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 13
            echo "                        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 13);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 13);
            echo "</a></li>
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 15
        echo "                </ul>
            </div>
        </div>
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"d-flex justify-content-between pb-50\">
                    <h3>";
        // line 21
        echo ($context["heading_title"] ?? null);
        echo "</h3>
                    <a href=\"";
        // line 22
        echo ($context["add_relative"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_add"] ?? null);
        echo "</a>
                </div>
                <table class=\"table table-bordered\">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Surname</th>
                            <th>Description</th>
                            <th>Occasion Type</th>
                            <th>Day</th>
                            <th>Delivery Time</th>
                            <th>Remember Me Week</th>
                            <th>Remember Type</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        ";
        // line 39
        if (($context["relatives"] ?? null)) {
            // line 40
            echo "                            ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["relatives"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["relative"]) {
                // line 41
                echo "                                <tr>
                                    <td>";
                // line 42
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "name", [], "any", false, false, false, 42);
                echo "</td>
                                    <td>";
                // line 43
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "surname", [], "any", false, false, false, 43);
                echo "</td>
                                    <td>";
                // line 44
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "description", [], "any", false, false, false, 44);
                echo "</td>
                                    <td>";
                // line 45
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "occasion_type", [], "any", false, false, false, 45);
                echo "</td>
                                    <td>";
                // line 46
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "day", [], "any", false, false, false, 46);
                echo "</td>
                                    <td>";
                // line 47
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "delivery_time", [], "any", false, false, false, 47);
                echo "</td>
                                    <td>";
                // line 48
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "remember_me_week", [], "any", false, false, false, 48);
                echo "</td>
                                    <td>";
                // line 49
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "remember_type", [], "any", false, false, false, 49);
                echo "</td>
                                    <td>
                                        <a href=\"";
                // line 51
                echo ($context["edit_relative"] ?? null);
                echo "&id=";
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "id", [], "any", false, false, false, 51);
                echo "\" class=\"btn btn-primary btn-edit mb-3\">Edit</a>
                                        <a href=\"";
                // line 52
                echo ($context["action"] ?? null);
                echo "&delete=1&id=";
                echo twig_get_attribute($this->env, $this->source, $context["relative"], "id", [], "any", false, false, false, 52);
                echo "\" class=\"btn btn-primary btn-delete bg-danger text-white\">Delete</a>
                                    </td>
                                </tr>
                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['relative'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 56
            echo "                        ";
        } else {
            // line 57
            echo "                            <tr>
                                <td colspan=\"9\">";
            // line 58
            echo ($context["text_no_relatives"] ?? null);
            echo "</td>
                            </tr>
                        ";
        }
        // line 61
        echo "                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script type=\"text/javascript\">
document.addEventListener('DOMContentLoaded', function () {
    const deleteButtons = document.querySelectorAll('.btn-delete');
    deleteButtons.forEach(function (button) {
        button.addEventListener('click', function (event) {
            event.preventDefault();
            const confirmDelete = confirm(\"Are you sure you want to delete this item?\");
            if (confirmDelete) {
                window.location.href = button.href;
            }
        });
    });
});
</script>
";
        // line 82
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/relative.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  201 => 82,  178 => 61,  172 => 58,  169 => 57,  166 => 56,  154 => 52,  148 => 51,  143 => 49,  139 => 48,  135 => 47,  131 => 46,  127 => 45,  123 => 44,  119 => 43,  115 => 42,  112 => 41,  107 => 40,  105 => 39,  83 => 22,  79 => 21,  71 => 15,  60 => 13,  56 => 12,  46 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/relative.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\account\\relative.twig");
    }
}
