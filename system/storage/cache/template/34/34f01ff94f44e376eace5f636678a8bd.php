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

/* catalog/view/template/common/search.twig */
class __TwigTemplate_836f5f85551161f75f31322ecac22b29 extends Template
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
        echo "<ul>
<li id=\"search\" class=\"desktop-search d-inline-block\">
  <div class=\"d-search\">
  <button id=\"search_toggle\" class=\"search-toggle\" data-toggle=\"collapse\" onclick=\"openSearch()\">
    <img src=\"image/catalog/search.png\" alt=\"search\"><span>Search</span>
  </button>
</div>
<div id=\"search\" class=\"wbSearch\">
<div id=\"search_block_top\">
  <select id=\"workdo-search-category\">
      <option value=\"0\">";
        // line 11
        echo ($context["text_category"] ?? null);
        echo "</option>
      ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category_1"]) {
            // line 13
            echo "        ";
            if ((twig_get_attribute($this->env, $this->source, $context["category_1"], "category_id", [], "any", false, false, false, 13) == ($context["category_id"] ?? null))) {
                // line 14
                echo "          <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["category_1"], "category_id", [], "any", false, false, false, 14);
                echo "\" selected=\"selected\">";
                echo twig_get_attribute($this->env, $this->source, $context["category_1"], "name", [], "any", false, false, false, 14);
                echo "</option>
        ";
            } else {
                // line 16
                echo "          <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["category_1"], "category_id", [], "any", false, false, false, 16);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["category_1"], "name", [], "any", false, false, false, 16);
                echo "</option>
        ";
            }
            // line 18
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category_1"], "children", [], "any", false, false, false, 18));
            foreach ($context['_seq'] as $context["_key"] => $context["category_2"]) {
                // line 19
                echo "          ";
                if ((twig_get_attribute($this->env, $this->source, $context["category_2"], "category_id", [], "any", false, false, false, 19) == ($context["category_id"] ?? null))) {
                    // line 20
                    echo "            <option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category_2"], "category_id", [], "any", false, false, false, 20);
                    echo "\" selected=\"selected\">&nbsp;&nbsp;&nbsp;&nbsp;";
                    echo twig_get_attribute($this->env, $this->source, $context["category_2"], "name", [], "any", false, false, false, 20);
                    echo "</option>
          ";
                } else {
                    // line 22
                    echo "            <option value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category_2"], "category_id", [], "any", false, false, false, 22);
                    echo "\">&nbsp;&nbsp;&nbsp;&nbsp;";
                    echo twig_get_attribute($this->env, $this->source, $context["category_2"], "name", [], "any", false, false, false, 22);
                    echo "</option>
          ";
                }
                // line 24
                echo "          ";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["category_2"], "children", [], "any", false, false, false, 24));
                foreach ($context['_seq'] as $context["_key"] => $context["category_3"]) {
                    // line 25
                    echo "            ";
                    if ((twig_get_attribute($this->env, $this->source, $context["category_3"], "category_id", [], "any", false, false, false, 25) == ($context["category_id"] ?? null))) {
                        // line 26
                        echo "              <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["category_3"], "category_id", [], "any", false, false, false, 26);
                        echo "\" selected=\"selected\">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                        // line 27
                        echo twig_get_attribute($this->env, $this->source, $context["category_3"], "name", [], "any", false, false, false, 27);
                        echo "
              </option>
            ";
                    } else {
                        // line 30
                        echo "              <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["category_3"], "category_id", [], "any", false, false, false, 30);
                        echo "\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                        echo twig_get_attribute($this->env, $this->source, $context["category_3"], "name", [], "any", false, false, false, 30);
                        echo "</option>
            ";
                    }
                    // line 32
                    echo "          ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category_3'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 33
                echo "        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category_2'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 34
            echo "      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category_1'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 35
        echo "    </select>
<div class=\"input-group\">
  <input type=\"text\" name=\"search\" value=\"";
        // line 37
        echo ($context["search"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["text_search"] ?? null);
        echo "\" class=\"search_query form-control input-lg workdo-search\" />
    <div class=\"input-group-btn\">
      <button type=\"button\" class=\"btn btn-primary btn-lg\"><img src=\"image/catalog/search.png\" alt=\"search\">";
        // line 39
        echo "</button>
      <a href=\"javascript:void(0)\" class=\"closebtn close-nav\" onclick=\"closeSearch()\"><i class=\"fa fa-close\"></i></a>
    </div>
  <!-- workdo Search Start  -->
        <div class=\"workdo-search text-left\">
          <div class=\"workdo-search-loader\" style=\"display: none;\"><div class=\"loaders\"></div></div><!-- Add Loader -->
          <div class=\"workdo-search-result\"><!-- search results --></div>
        </div>
  <!-- workdo Search End  -->
</div>
</div>
</li></ul>";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/common/search.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  156 => 39,  149 => 37,  145 => 35,  139 => 34,  133 => 33,  127 => 32,  119 => 30,  113 => 27,  108 => 26,  105 => 25,  100 => 24,  92 => 22,  84 => 20,  81 => 19,  76 => 18,  68 => 16,  60 => 14,  57 => 13,  53 => 12,  49 => 11,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/common/search.twig", "C:\\wamp64\\www\\kuldeep\\opencart\\gift\\catalog\\view\\template\\common\\search.twig");
    }
}
