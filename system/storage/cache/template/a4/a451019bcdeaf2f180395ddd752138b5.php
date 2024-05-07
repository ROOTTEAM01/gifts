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

/* catalog/view/template/product/category.twig */
class __TwigTemplate_95d14228a4e33c84aec40118b7c4c440 extends Template
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
        echo "<div class=\"pro-category\">
";
        // line 2
        echo ($context["header"] ?? null);
        echo "
</div>
<div id=\"product-category\">
  <div class=\"category-page\">
<div class=\"container\">
 <div class=\"\">
 <!-- Breadcrumb -->
 <div class=\"d-flex justify-content-between align-items-center back-page\">
  <div class=\"\">
  <div class=\"back-to-home\">
      <a href=\"";
        // line 12
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
   </div>  
  </div>
  <div class=\"\">
    <ul class=\"breadcrumb \">
      ";
        // line 17
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 18
            echo "        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 18);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 18);
            echo "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 20
        echo "    </ul>  
  </div> 
</div>
<!-- Breadcrumb end -->
   <div class=\"cate-top\">    
    <h2 class=\"cat-title\">";
        // line 25
        echo ($context["heading_title"] ?? null);
        echo "</h2>
    ";
        // line 26
        if ((($context["thumb"] ?? null) || ($context["description"] ?? null))) {
            // line 27
            echo "      <div class=\"cat-desc row\">
       ";
            // line 31
            echo "        ";
            if (($context["description"] ?? null)) {
                // line 32
                echo "          <div class=\"col-sm-12\">";
                echo ($context["description"] ?? null);
                echo "</div>
        ";
            }
            // line 34
            echo "      </div>
    ";
        }
        // line 36
        echo "    </div> 
 </div> 
</div>
</div>
<div class=\"pb-30\">
  <div class=\"container\">
  <div class=\"row\">";
        // line 42
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col colright\">";
        // line 43
        echo ($context["content_top"] ?? null);
        echo "
      ";
        // line 44
        if (($context["categories"] ?? null)) {
            // line 45
            echo "        <div class=\"refines\">
        <h3>";
            // line 46
            echo ($context["text_refine"] ?? null);
            echo "</h3>
        ";
            // line 47
            if ((twig_length_filter($this->env, ($context["categories"] ?? null)) <= 5)) {
                // line 48
                echo "          <div class=\"row\">
            <div class=\"col-sm-12\">
              <ul>
                ";
                // line 51
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 52
                    echo "                  <li><a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 52);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 52);
                    echo "</a></li>
                ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 54
                echo "              </ul>
            </div>
          </div>
        </div>
        ";
            } else {
                // line 59
                echo "          <div class=\"row row-cols-sm-2 row-cols-lg-4\">
            ";
                // line 60
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_array_batch(($context["categories"] ?? null), twig_round((twig_length_filter($this->env, ($context["categories"] ?? null)) / 4), 1, "ceil")));
                foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                    // line 61
                    echo "              <div class=\"col\">
                <ul>
                  ";
                    // line 63
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($context["category"]);
                    foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                        // line 64
                        echo "                    <li><a href=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 64);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 64);
                        echo "</a></li>
                  ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 66
                    echo "                </ul>
              </div>
            ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 69
                echo "          </div>
          <br/>
        ";
            }
            // line 72
            echo "      ";
        }
        // line 73
        echo "      ";
        if (($context["products"] ?? null)) {
            // line 74
            echo "        <div id=\"display-control\" class=\"row cate-border\">
          <div class=\"col-lg-2 col-md-2 col-sm-4 col-4 d-lg-block lgrid\">
            <div class=\"btn-group\">
              <button type=\"button\" id=\"button-list\" class=\"btn listgridbtn\" data-bs-toggle=\"tooltip\" title=\"";
            // line 77
            echo ($context["button_list"] ?? null);
            echo "\"><svg width=\"20px\" height=\"20px\"><use xlink:href=\"#clist\"></use> </svg></button>
              <button type=\"button\" id=\"button-grid\" class=\"btn listgridbtn\" data-bs-toggle=\"tooltip\" title=\"";
            // line 78
            echo ($context["button_grid"] ?? null);
            echo "\"><svg width=\"18px\" height=\"18px\"><use xlink:href=\"#cgrid\"></use> </svg></button>
            </div>
          </div>
          <div class=\"col-lg-3 col-md-3 col-sm-8 col-8\">
            <div class=\"mb-3\">
              <a href=\"";
            // line 83
            echo ($context["compare"] ?? null);
            echo "\" id=\"compare-total\" class=\"btn btn-link d-block\"><span class=\"d-xl-inline\">";
            echo ($context["text_compare"] ?? null);
            echo "</span></a>
            </div>
          </div>
          <div class=\"col-lg-3 col-md-4 col-12 catesort\">
            <div class=\"input-group mb-3\">
              <div class=\"input-group\">
                <label for=\"input-sort\" class=\"input-group-text\">";
            // line 89
            echo ($context["text_sort"] ?? null);
            echo "</label> <select id=\"input-sort\" class=\"form-select\" onchange=\"location = this.value;\">
                  ";
            // line 90
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($context["sorts"]);
            foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
                // line 91
                echo "                    <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 91);
                echo "\"";
                if ((twig_get_attribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 91) == twig_sprintf("%s-%s", ($context["sort"] ?? null), ($context["order"] ?? null)))) {
                    echo " selected";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 91);
                echo "</option>
                  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sorts'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 93
            echo "                </select>
              </div>
            </div>
          </div>
          <div class=\"col-lg-3 col-md-3 col-12 catesort\">
            <div class=\"input-group mb-3\">
              <div class=\"input-group\">
                <label for=\"input-limit\" class=\"input-group-text\">";
            // line 100
            echo ($context["text_limit"] ?? null);
            echo "</label> <select id=\"input-limit\" class=\"form-select\" onchange=\"location = this.value;\">
                  ";
            // line 101
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($context["limits"]);
            foreach ($context['_seq'] as $context["_key"] => $context["limits"]) {
                // line 102
                echo "                    <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["limits"], "href", [], "any", false, false, false, 102);
                echo "\"";
                if ((twig_get_attribute($this->env, $this->source, $context["limits"], "value", [], "any", false, false, false, 102) == ($context["limit"] ?? null))) {
                    echo " selected";
                }
                echo ">";
                echo twig_get_attribute($this->env, $this->source, $context["limits"], "text", [], "any", false, false, false, 102);
                echo "</option>
                  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['limits'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 104
            echo "                </select>
              </div>
            </div>
          </div>
        </div>
        <div id=\"product-list\" class=\"row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4\">
          ";
            // line 110
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 111
                echo "            <div class=\"col\">";
                echo $context["product"];
                echo "</div>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 113
            echo "        </div>
        <div class=\"row pagi\">
          <div class=\"col-sm-6 text-start\">";
            // line 115
            echo ($context["pagination"] ?? null);
            echo "</div>
          <div class=\"col-sm-6 text-end tot\">";
            // line 116
            echo ($context["results"] ?? null);
            echo "</div>
        </div>
      ";
        }
        // line 119
        echo "      ";
        if (( !($context["categories"] ?? null) &&  !($context["products"] ?? null))) {
            // line 120
            echo "        <p>";
            echo ($context["text_no_results"] ?? null);
            echo "</p>
        <div class=\"d-inline-block pt-2 pd-2 w-100\">
          <div class=\"float-end\"><a href=\"";
            // line 122
            echo ($context["continue"] ?? null);
            echo "\" class=\"btn btn-primary\">";
            echo ($context["button_continue"] ?? null);
            echo "</a></div>
        </div>
      ";
        }
        // line 125
        echo "      ";
        echo ($context["content_bottom"] ?? null);
        echo "
    </div>
    ";
        // line 127
        echo ($context["column_right"] ?? null);
        echo "
  </div>
</div>
</div>
</div>
<div class=\"\"></div>
";
        // line 133
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/product/category.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  356 => 133,  347 => 127,  341 => 125,  333 => 122,  327 => 120,  324 => 119,  318 => 116,  314 => 115,  310 => 113,  301 => 111,  297 => 110,  289 => 104,  274 => 102,  270 => 101,  266 => 100,  257 => 93,  242 => 91,  238 => 90,  234 => 89,  223 => 83,  215 => 78,  211 => 77,  206 => 74,  203 => 73,  200 => 72,  195 => 69,  187 => 66,  176 => 64,  172 => 63,  168 => 61,  164 => 60,  161 => 59,  154 => 54,  143 => 52,  139 => 51,  134 => 48,  132 => 47,  128 => 46,  125 => 45,  123 => 44,  119 => 43,  115 => 42,  107 => 36,  103 => 34,  97 => 32,  94 => 31,  91 => 27,  89 => 26,  85 => 25,  78 => 20,  67 => 18,  63 => 17,  53 => 12,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/product/category.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/product/category.twig");
    }
}
