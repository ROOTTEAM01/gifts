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

/* catalog/view/template/account/order_info.twig */
class __TwigTemplate_4dd63fe4d082f2ee67f4a7f3729d713f extends Template
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
<div id=\"account-order\" class=\"container \">
<!-- Breadcrumb -->
<div class=\"d-flex justify-content-between align-items-center back-page\">
  <div class=\"\">
  <div class=\"back-to-home\">
      <a href=\"";
        // line 8
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
   </div>  
  </div>
  <div class=\"\">
    <ul class=\"breadcrumb \">
      ";
        // line 13
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 14
            echo "        <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 14);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 14);
            echo "</a></li>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 16
        echo "    </ul>  
  </div> 
</div>
<!-- Breadcrumb end -->
  <div class=\"row\">";
        // line 20
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 21
        echo ($context["content_top"] ?? null);
        echo "
      <h1>";
        // line 22
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <table class=\"table table-bordered table-hover\">
        <thead>
          <tr>
            <td class=\"text-start\" colspan=\"2\">";
        // line 26
        echo ($context["text_order_detail"] ?? null);
        echo "</td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class=\"text-start\" style=\"width: 50%;\">";
        // line 31
        if (($context["invoice_no"] ?? null)) {
            echo " <b>";
            echo ($context["text_invoice_no"] ?? null);
            echo "</b> ";
            echo ($context["invoice_no"] ?? null);
            echo "
                <br/>
              ";
        }
        // line 33
        echo " <b>";
        echo ($context["text_order_id"] ?? null);
        echo "</b> #";
        echo ($context["order_id"] ?? null);
        echo "
              <br/>
              <b>";
        // line 35
        echo ($context["text_date_added"] ?? null);
        echo "</b> ";
        echo ($context["date_added"] ?? null);
        echo "</td>
            <td class=\"text-start\" style=\"width: 50%;\">";
        // line 36
        if (($context["payment_method"] ?? null)) {
            echo " <b>";
            echo ($context["text_payment_method"] ?? null);
            echo "</b> ";
            echo ($context["payment_method"] ?? null);
            echo "
                <br/>
              ";
        }
        // line 39
        echo "              ";
        if (($context["shipping_method"] ?? null)) {
            echo " <b>";
            echo ($context["text_shipping_method"] ?? null);
            echo "</b> ";
            echo ($context["shipping_method"] ?? null);
        }
        echo "</td>
          </tr>
        </tbody>
      </table>
      <table class=\"table table-bordered table-hover\">
        <thead>
          <tr>
            <td class=\"text-start\" style=\"width: 50%; vertical-align: top;\">";
        // line 46
        echo ($context["text_payment_address"] ?? null);
        echo "</td>
            ";
        // line 47
        if (($context["shipping_address"] ?? null)) {
            // line 48
            echo "              <td class=\"text-start\" style=\"width: 50%; vertical-align: top;\">";
            echo ($context["text_shipping_address"] ?? null);
            echo "</td>
            ";
        }
        // line 49
        echo " </tr>
        </thead>
        <tbody>
          <tr>
            <td class=\"text-start\">";
        // line 53
        echo ($context["payment_address"] ?? null);
        echo "</td>
            ";
        // line 54
        if (($context["shipping_address"] ?? null)) {
            // line 55
            echo "              <td class=\"text-start\">";
            echo ($context["shipping_address"] ?? null);
            echo "</td>
            ";
        }
        // line 56
        echo " </tr>
        </tbody>
      </table>
      <div class=\"table-responsive\">
        <table class=\"table table-bordered table-hover\">
          <thead>
            <tr>
              <td class=\"text-start\">";
        // line 63
        echo ($context["column_name"] ?? null);
        echo "</td>
              <td class=\"text-start\">";
        // line 64
        echo ($context["column_model"] ?? null);
        echo "</td>
              <td class=\"text-end\">";
        // line 65
        echo ($context["column_quantity"] ?? null);
        echo "</td>
              <td class=\"text-end\">";
        // line 66
        echo ($context["column_price"] ?? null);
        echo "</td>
              <td class=\"text-end\">";
        // line 67
        echo ($context["column_total"] ?? null);
        echo "</td>
              ";
        // line 68
        if (($context["products"] ?? null)) {
            // line 69
            echo "                <td style=\"width: 20px;\"></td>
              ";
        }
        // line 70
        echo " </tr>
          </thead>
          <tbody>
            ";
        // line 73
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 74
            echo "              <tr>
                <td class=\"text-start\">";
            // line 75
            echo twig_get_attribute($this->env, $this->source, $context["product"], "name", [], "any", false, false, false, 75);
            echo "
                  ";
            // line 76
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["product"], "option", [], "any", false, false, false, 76));
            foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                // line 77
                echo "                    <br/>
                    &nbsp;
                    <small> - ";
                // line 79
                echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 79);
                echo ": ";
                echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 79);
                echo "</small> ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</td>
                <td class=\"text-start\">";
            // line 80
            echo twig_get_attribute($this->env, $this->source, $context["product"], "model", [], "any", false, false, false, 80);
            echo "</td>
                <td class=\"text-end\">";
            // line 81
            echo twig_get_attribute($this->env, $this->source, $context["product"], "quantity", [], "any", false, false, false, 81);
            echo "</td>
                <td class=\"text-end\">";
            // line 82
            echo twig_get_attribute($this->env, $this->source, $context["product"], "price", [], "any", false, false, false, 82);
            echo "</td>
                <td class=\"text-end\">";
            // line 83
            echo twig_get_attribute($this->env, $this->source, $context["product"], "total", [], "any", false, false, false, 83);
            echo "</td>
                <td class=\"text-end\" style=\"white-space: nowrap;\">";
            // line 84
            if (twig_get_attribute($this->env, $this->source, $context["product"], "reorder", [], "any", false, false, false, 84)) {
                echo " <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["product"], "reorder", [], "any", false, false, false, 84);
                echo "\" data-bs-toggle=\"tooltip\" title=\"";
                echo ($context["button_reorder"] ?? null);
                echo "\" class=\"btn btn-primary\"><i class=\"fa-solid fa-cart-shopping\"></i></a> ";
            }
            echo " <a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["product"], "return", [], "any", false, false, false, 84);
            echo "\" data-bs-toggle=\"tooltip\" title=\"";
            echo ($context["button_return"] ?? null);
            echo "\" class=\"btn btn-danger\"><i class=\"fa-solid fa-reply\"></i></a></td>
              </tr>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 87
        echo "            ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["vouchers"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["voucher"]) {
            // line 88
            echo "              <tr>
                <td class=\"text-start\">";
            // line 89
            echo twig_get_attribute($this->env, $this->source, $context["voucher"], "description", [], "any", false, false, false, 89);
            echo "</td>
                <td class=\"text-start\"></td>
                <td class=\"text-end\">1</td>
                <td class=\"text-end\">";
            // line 92
            echo twig_get_attribute($this->env, $this->source, $context["voucher"], "amount", [], "any", false, false, false, 92);
            echo "</td>
                <td class=\"text-end\">";
            // line 93
            echo twig_get_attribute($this->env, $this->source, $context["voucher"], "amount", [], "any", false, false, false, 93);
            echo "</td>
                ";
            // line 94
            if (($context["products"] ?? null)) {
                // line 95
                echo "                  <td></td>
                ";
            }
            // line 96
            echo " </tr>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['voucher'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 98
        echo "          </tbody>
          <tfoot>
            ";
        // line 100
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["totals"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["total"]) {
            // line 101
            echo "              <tr>
                <td colspan=\"3\"></td>
                <td class=\"text-end\"><b>";
            // line 103
            echo twig_get_attribute($this->env, $this->source, $context["total"], "title", [], "any", false, false, false, 103);
            echo "</b></td>
                <td class=\"text-end\">";
            // line 104
            echo twig_get_attribute($this->env, $this->source, $context["total"], "text", [], "any", false, false, false, 104);
            echo "</td>
                ";
            // line 105
            if (($context["products"] ?? null)) {
                // line 106
                echo "                  <td></td>
                ";
            }
            // line 107
            echo " </tr>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['total'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 109
        echo "          </tfoot>
        </table>
      </div>
      ";
        // line 112
        if (($context["comment"] ?? null)) {
            // line 113
            echo "        <table class=\"table table-bordered table-hover\">
          <thead>
            <tr>
              <td class=\"text-start\">";
            // line 116
            echo ($context["text_comment"] ?? null);
            echo "</td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class=\"text-start\">";
            // line 121
            echo ($context["comment"] ?? null);
            echo "</td>
            </tr>
          </tbody>
        </table>
      ";
        }
        // line 126
        echo "      ";
        if (($context["histories"] ?? null)) {
            // line 127
            echo "        <h3>";
            echo ($context["text_history"] ?? null);
            echo "</h3>
        <table class=\"table table-bordered table-hover\">
          <thead>
            <tr>
              <td class=\"text-start\">";
            // line 131
            echo ($context["column_date_added"] ?? null);
            echo "</td>
              <td class=\"text-start\">";
            // line 132
            echo ($context["column_status"] ?? null);
            echo "</td>
              <td class=\"text-start\">";
            // line 133
            echo ($context["column_comment"] ?? null);
            echo "</td>
            </tr>
          </thead>
          <tbody>
            ";
            // line 137
            if (($context["histories"] ?? null)) {
                // line 138
                echo "              ";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["histories"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["history"]) {
                    // line 139
                    echo "                <tr>
                  <td class=\"text-start\">";
                    // line 140
                    echo twig_get_attribute($this->env, $this->source, $context["history"], "date_added", [], "any", false, false, false, 140);
                    echo "</td>
                  <td class=\"text-start\">";
                    // line 141
                    echo twig_get_attribute($this->env, $this->source, $context["history"], "status", [], "any", false, false, false, 141);
                    echo "</td>
                  <td class=\"text-start\">";
                    // line 142
                    echo twig_get_attribute($this->env, $this->source, $context["history"], "comment", [], "any", false, false, false, 142);
                    echo "</td>
                </tr>
              ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['history'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 145
                echo "            ";
            } else {
                // line 146
                echo "              <tr>
                <td colspan=\"3\" class=\"text-center\">";
                // line 147
                echo ($context["text_no_results"] ?? null);
                echo "</td>
              </tr>
            ";
            }
            // line 150
            echo "          </tbody>
        </table>
      ";
        }
        // line 153
        echo "      <div class=\"d-inline-block pt-2 pd-2 w-100\">
        <div class=\"float-end\"><a href=\"";
        // line 154
        echo ($context["continue"] ?? null);
        echo "\" class=\"btn btn-primary\">";
        echo ($context["button_continue"] ?? null);
        echo "</a></div>
      </div>
      ";
        // line 156
        echo ($context["content_bottom"] ?? null);
        echo "</div>
    ";
        // line 157
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
</div>
";
        // line 160
        echo ($context["footer"] ?? null);
    }

    public function getTemplateName()
    {
        return "catalog/view/template/account/order_info.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  472 => 160,  466 => 157,  462 => 156,  455 => 154,  452 => 153,  447 => 150,  441 => 147,  438 => 146,  435 => 145,  426 => 142,  422 => 141,  418 => 140,  415 => 139,  410 => 138,  408 => 137,  401 => 133,  397 => 132,  393 => 131,  385 => 127,  382 => 126,  374 => 121,  366 => 116,  361 => 113,  359 => 112,  354 => 109,  347 => 107,  343 => 106,  341 => 105,  337 => 104,  333 => 103,  329 => 101,  325 => 100,  321 => 98,  314 => 96,  310 => 95,  308 => 94,  304 => 93,  300 => 92,  294 => 89,  291 => 88,  286 => 87,  267 => 84,  263 => 83,  259 => 82,  255 => 81,  251 => 80,  240 => 79,  236 => 77,  232 => 76,  228 => 75,  225 => 74,  221 => 73,  216 => 70,  212 => 69,  210 => 68,  206 => 67,  202 => 66,  198 => 65,  194 => 64,  190 => 63,  181 => 56,  175 => 55,  173 => 54,  169 => 53,  163 => 49,  157 => 48,  155 => 47,  151 => 46,  135 => 39,  125 => 36,  119 => 35,  111 => 33,  101 => 31,  93 => 26,  86 => 22,  82 => 21,  78 => 20,  72 => 16,  61 => 14,  57 => 13,  47 => 8,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/account/order_info.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/catalog/view/template/account/order_info.twig");
    }
}
