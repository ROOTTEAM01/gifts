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

/* catalog/view/template/common/cart.twig */
class __TwigTemplate_7134a98084c31960476bb0687adad24e2126c931423b259c143c6d7156f260f3 extends Template
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
        echo "<div id=\"cart\" class=\"dropdown btn-block\">
  <button type=\"button\" data-bs-toggle=\"dropdown\" class=\"btn btn-inverse dropdown-toggle\">
    <div class=\"xuser\">
      <img alt=\"stor\" src=\"image/catalog/stor.svg\">
    </div>
    ";
        // line 6
        echo ($context["text_items"] ?? null);
        echo "
  </button>
  <ul class=\"dropdown-menu dropdown-menu-right\">
    ";
        // line 9
        if ((($context["products"] ?? null) || ($context["vouchers"] ?? null))) {
            // line 10
            echo "      <li>
        <div>
          ";
            // line 12
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 13
                echo "            <div class=\"cartdrop\">
              <div class=\"pull-left\">";
                // line 14
                if (twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 14)) {
                    echo "<a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 14);
                    echo "\"><img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "thumb", [], "any", false, false, false, 14);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 14);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 14);
                    echo "\" class=\"img-thumbnail\"/></a>";
                }
                echo "</div>
              
              <div class=\"pull-left cartname\"><a href=\"";
                // line 16
                echo twig_get_attribute($this->env, $this->source, $context["product"], "href", [], "any", false, false, false, 16);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 16);
                echo "</a>
               <!--  ";
                // line 17
                if (twig_get_attribute($this->env, $this->source, $context["product"], "option", [], "any", false, false, false, 17)) {
                    // line 18
                    echo "                  ";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "option", [], "any", false, false, false, 18));
                    foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                        // line 19
                        echo "                    <br/>
                    <small> - ";
                        // line 20
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 20);
                        echo " ";
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 20);
                        echo "</small>
                  ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 22
                    echo "                ";
                }
                // line 23
                echo "                ";
                if (twig_get_attribute($this->env, $this->source, $context["product"], "subscription", [], "any", false, false, false, 23)) {
                    // line 24
                    echo "                  <br/>
                  <small> - ";
                    // line 25
                    echo ($context["text_subscription"] ?? null);
                    echo " ";
                    echo twig_get_attribute($this->env, $this->source, $context["product"], "subscription", [], "any", false, false, false, 25);
                    echo "</small>
                ";
                }
                // line 26
                echo " -->
              </div>
              <div class=\"pull-right\">
                <form action=\"";
                // line 29
                echo ($context["product_remove"] ?? null);
                echo "\" method=\"post\" data-oc-toggle=\"ajax\" data-oc-load=\"";
                echo ($context["list"] ?? null);
                echo "\" data-oc-target=\"#header-cart\">
                  <input type=\"hidden\" name=\"key\" value=\"";
                // line 30
                echo twig_get_attribute($this->env, $this->source, $context["product"], "cart_id", [], "any", false, false, false, 30);
                echo "\">
                  <button type=\"submit\" data-bs-toggle=\"tooltip\" title=\"";
                // line 31
                echo ($context["button_remove"] ?? null);
                echo "\" class=\"btn btn-danger\"><i class=\"fa fa-times\"></i></button>
                </form>
              </div>
               
              <div class=\"cartprice\">
              <span class=\"text-end\">";
                // line 36
                echo twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 36);
                echo " x</span>
              <span class=\"text-end\">";
                // line 37
                echo twig_get_attribute($this->env, $this->source, $context["product"], "total", [], "any", false, false, false, 37);
                echo "</span>
              </div>
              
            </div>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 42
            echo "          ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["vouchers"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["voucher"]) {
                // line 43
                echo "            <tr>
              <td class=\"text-center\"></td>
              <td class=\"text-start\">";
                // line 45
                echo twig_get_attribute($this->env, $this->source, $context["voucher"], "description", [], "any", false, false, false, 45);
                echo "</td>
              <td class=\"text-end\">x&nbsp;1</td>
              <td class=\"text-end\">";
                // line 47
                echo twig_get_attribute($this->env, $this->source, $context["voucher"], "amount", [], "any", false, false, false, 47);
                echo "</td>
              <td class=\"text-end\">
                <form action=\"";
                // line 49
                echo ($context["voucher_remove"] ?? null);
                echo "\" method=\"post\" data-oc-toggle=\"ajax\" data-oc-load=\"";
                echo ($context["list"] ?? null);
                echo "\" data-oc-target=\"#header-cart\">
                  <input type=\"hidden\" name=\"key\" value=\"";
                // line 50
                echo twig_get_attribute($this->env, $this->source, $context["voucher"], "key", [], "any", false, false, false, 50);
                echo "\"/>
                  <button type=\"submit\" data-bs-toggle=\"tooltip\" title=\"";
                // line 51
                echo ($context["button_remove"] ?? null);
                echo "\" class=\"btn btn-danger\"><i class=\"fa-solid fa-circle-xmark\"></i></button>
                </form>
              </td>
            </tr>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['voucher'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 56
            echo "        </div>
        <div>
          <table class=\"table table-sm table-bordered\">
            ";
            // line 59
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["totals"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["total"]) {
                // line 60
                echo "              <tr>
                <td class=\"text-end\"><strong>";
                // line 61
                echo twig_get_attribute($this->env, $this->source, $context["total"], "title", [], "any", false, false, false, 61);
                echo "</strong></td>
                <td class=\"text-end\">";
                // line 62
                echo twig_get_attribute($this->env, $this->source, $context["total"], "text", [], "any", false, false, false, 62);
                echo "</td>
              </tr>
            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['total'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 65
            echo "          </table>
          <p class=\"text-end\"><a href=\"";
            // line 66
            echo ($context["cart"] ?? null);
            echo "\" class=\"btn btn-primary\"><strong>";
            echo ($context["text_cart"] ?? null);
            echo "</strong></a>&nbsp;&nbsp;&nbsp;<a href=\"";
            echo ($context["checkout"] ?? null);
            echo "\" class=\"btn btn-primary\"><strong>";
            echo ($context["text_checkout"] ?? null);
            echo "</strong></a></p>
        </div>
      </li>
    ";
        } else {
            // line 70
            echo "      <li>
        <p class=\"text-center\">";
            // line 71
            echo ($context["text_no_results"] ?? null);
            echo "</p>
      </li>
    ";
        }
        // line 74
        echo "  </ul>
</div>
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/common/cart.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  248 => 74,  242 => 71,  239 => 70,  226 => 66,  223 => 65,  214 => 62,  210 => 61,  207 => 60,  203 => 59,  198 => 56,  187 => 51,  183 => 50,  177 => 49,  172 => 47,  167 => 45,  163 => 43,  158 => 42,  147 => 37,  143 => 36,  135 => 31,  131 => 30,  125 => 29,  120 => 26,  113 => 25,  110 => 24,  107 => 23,  104 => 22,  94 => 20,  91 => 19,  86 => 18,  84 => 17,  78 => 16,  63 => 14,  60 => 13,  56 => 12,  52 => 10,  50 => 9,  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/common/cart.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\common\\cart.twig");
    }
}
