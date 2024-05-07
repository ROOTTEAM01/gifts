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

/* catalog/view/template/product/onsalethumb.twig */
class __TwigTemplate_837ec44010c223af999e6f29c671edf6214c3a7903ed3f5e9f39c2327feae522 extends Template
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
        echo "<form method=\"post\" data-oc-toggle=\"ajax\" data-oc-load=\"";
        echo ($context["cart"] ?? null);
        echo "\" data-oc-target=\"#header-cart\">
  <div class=\"product-thumb\">
    <div class=\"product-bg\">
      <div class=\"caption\">
        <div class=\"button-group\">
          <button class=\"wish\" type=\"submit\" formaction=\"";
        // line 6
        echo ($context["add_to_wishlist"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["button_wishlist"] ?? null);
        echo "\"><span>add to wishlist</span>
          <img src=\"image/catalog/wishlist.svg\" alt=\"\"></button>
          <button class=\"compare\" type=\"submit\" formaction=\"";
        // line 8
        echo ($context["add_to_compare"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["button_compare"] ?? null);
        echo "\">
            <img src=\"image/catalog/compare.svg\" alt=\"compare\">
          </button>
        </div>
        <div class=\"product-caption\">
          <div class=\"bran\">
            <span><a href=\"";
        // line 14
        echo ($context["manufacturer_id"] ?? null);
        echo "\" class=\"textdeb\">";
        echo ($context["manufacturer"] ?? null);
        echo "</a></span>
          </div>
          <h4 class=\"protitle\"><a href=\"";
        // line 16
        echo ($context["href"] ?? null);
        echo "\">";
        echo ($context["name"] ?? null);
        echo "</a></h4>
        </div>
        <!-- ";
        // line 18
        if (($context["review_status"] ?? null)) {
            // line 19
            echo "        <div class=\"rating\">
          ";
            // line 20
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, 5));
            foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                // line 21
                echo "              ";
                if ((($context["rating"] ?? null) < $context["i"])) {
                    // line 22
                    echo "              <span class=\"fa-stack\"><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
            ";
                } else {
                    // line 24
                    echo "              <span class=\"fa-stack\"><i class=\"fa-solid fa-star fa-stack-1x\"></i><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
            ";
                }
                // line 26
                echo "            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "               
            <span class=\"rate-tot\">(";
            // line 27
            echo ($context["tab_review"] ?? null);
            echo ")</span>
        </div>
      ";
        }
        // line 29
        echo "  -->
          <!-- discount % start -->
          <!-- ";
        // line 31
        if (($context["price"] ?? null)) {
            // line 32
            echo "              ";
            if (($context["special"] ?? null)) {
                // line 33
                echo "              <span class=\"discount-onprice\">";
                echo ($context["discount"] ?? null);
                echo "%</span>            
            ";
            }
            // line 35
            echo "          ";
        }
        echo " -->
          <!-- discount % end -->
          
          <p class=\"catlist-des\">";
        // line 38
        echo ($context["description"] ?? null);
        echo "</p>
          ";
        // line 40
        echo "          <div class=\"web_option\">
            ";
        // line 41
        if (($context["options"] ?? null)) {
            // line 42
            echo "              ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["options"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                // line 43
                echo "                ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 43) == "select")) {
                    // line 44
                    echo "                <div class=\"form-group\">
                    <div class=\"";
                    // line 45
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 45)) {
                        echo " required";
                    }
                    echo " select\">
                    <label for=\"input-option-";
                    // line 46
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 46);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 46);
                    echo "</label><select name=\"option[";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 46);
                    echo "]\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 46);
                    echo "\" class=\"form-select\">
                      <option value=\"\">";
                    // line 47
                    echo ($context["text_select"] ?? null);
                    echo "</option>
                      ";
                    // line 48
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 48));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 49
                        echo "                        <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 49);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 49);
                        echo "
                         ";
                        // line 50
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 50)) {
                            // line 51
                            echo "                            (";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 51);
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 51);
                            echo ")
                          ";
                        }
                        // line 53
                        echo "                        </option> 
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 55
                    echo "                    </select>
                    <div id=\"error-option-";
                    // line 56
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 56);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                </div>
                ";
                }
                // line 60
                echo "                ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 60) == "radio")) {
                    // line 61
                    echo "                  <div class=\"mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 61)) {
                        echo " required";
                    }
                    echo "\">
                    <label class=\"form-label\">";
                    // line 62
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 62);
                    echo "</label>
                    <div id=\"input-option-";
                    // line 63
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 63);
                    echo "\" class=\"custom-radio\">
                      ";
                    // line 64
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 64));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 65
                        echo "                        <div class=\"form-check\">
                          <label class=\"color-option\">
                            <input type=\"radio\" name=\"option[";
                        // line 67
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 67);
                        echo "]\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 67);
                        echo "\" id=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 67);
                        echo "\" class=\"form-check-input\"/> 
                            <span>";
                        // line 68
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 68)) {
                            echo "</span><img src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 68);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 68);
                            echo " ";
                            if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 68)) {
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 68);
                                echo " ";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 68);
                            }
                            echo "\" class=\"img-thumbnail\"/>";
                        }
                        // line 69
                        echo "                            ";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 69);
                        echo "
                            ";
                        // line 73
                        echo "                          </label>
                        </div>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 76
                    echo "                    </div>
                    <div id=\"error-option-";
                    // line 77
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 77);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                ";
                }
                // line 80
                echo "                ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 80) == "checkbox")) {
                    // line 81
                    echo "                  <div class=\"mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 81)) {
                        echo " required";
                    }
                    echo "\">
                    <label class=\"form-label\">";
                    // line 82
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 82);
                    echo "</label>
                    <div id=\"input-option-";
                    // line 83
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 83);
                    echo "\">
                      ";
                    // line 84
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 84));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 85
                        echo "                        <div class=\"form-check\">
                          <input type=\"checkbox\" name=\"option[";
                        // line 86
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 86);
                        echo "][]\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 86);
                        echo "\" id=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 86);
                        echo "\" class=\"form-check-input\"/> <label for=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 86);
                        echo "\" class=\"form-check-label\">
                            ";
                        // line 87
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 87)) {
                            // line 88
                            echo "                              <img src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 88);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 88);
                            echo " ";
                            if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 88)) {
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 88);
                                echo " ";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 88);
                            }
                            echo "\" class=\"img-thumbnail\"/>";
                        }
                        // line 89
                        echo "                            ";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 89);
                        echo "
                            ";
                        // line 90
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 90)) {
                            // line 91
                            echo "                              (";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 91);
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 91);
                            echo ")
                            ";
                        }
                        // line 92
                        echo "</label>
                        </div>
                      ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 95
                    echo "                    </div>
                    <div id=\"error-option-";
                    // line 96
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 96);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                ";
                }
                // line 99
                echo "                ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 99) == "text")) {
                    // line 100
                    echo "                  <div class=\"mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 100)) {
                        echo " required";
                    }
                    echo "\">
                    <label for=\"input-option-";
                    // line 101
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 101);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 101);
                    echo "</label> <input type=\"text\" name=\"option[";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 101);
                    echo "]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 101);
                    echo "\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 101);
                    echo "\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 101);
                    echo "\" class=\"form-control\"/>
                    <div id=\"error-option-";
                    // line 102
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 102);
                    echo "\" class=\"invalid-feedback\"></div>
                  </div>
                ";
                }
                // line 105
                echo "              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 106
            echo "            ";
        }
        // line 107
        echo "          </div>
          ";
        // line 109
        echo "          <div class=\"pro-price\">
            ";
        // line 110
        if (($context["price"] ?? null)) {
            // line 111
            echo "            <div class=\"price\">
              ";
            // line 112
            if ( !($context["special"] ?? null)) {
                // line 113
                echo "                <span class=\"price-new\">";
                echo ($context["price"] ?? null);
                echo "</span>
              ";
            } else {
                // line 115
                echo "                <span class=\"price-new\">";
                echo ($context["special"] ?? null);
                echo "</span>
                <div class=\"wbfullprice\">
                  <span class=\"price-old\">";
                // line 117
                echo ($context["price"] ?? null);
                echo "</span>
                </div>
              ";
            }
            // line 120
            echo "              ";
            // line 123
            echo "            </div>
            ";
        }
        // line 125
        echo "          </div>
        <div class=\"homeadd d-flex justify-content-left\">
         
          <!-- <div class=\"wrap input-group\">
            <button type=\"button\" id=\"sub\" class=\"sub btn\">-</button>
            <input name=\"quantity\" class=\"count form-control\" type=\"text\" id=\"1\" value=\"1\" min=\"1\" />
            <button type=\"button\" id=\"add\" class=\"add btn\">+</button>
          </div> -->
          <button type=\"submit\" formaction=\"";
        // line 133
        echo ($context["add_to_cart"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" class=\"cartb\"><span>";
        echo ($context["button_cart"] ?? null);
        echo "</span><img alt=\"stor-bg\" src=\"image/catalog/stor-bg.svg\">
          </button>
        </div>
      </div>
      <div class=\"image\">
        <!-- Save Price start -->
        <!-- ";
        // line 139
        if (($context["price"] ?? null)) {
            // line 140
            echo "           ";
            if (($context["special"] ?? null)) {
                echo "            
             <span class=\"you-save\">";
                // line 141
                echo ($context["save"] ?? null);
                echo "</span> 
          ";
            }
            // line 143
            echo "        ";
        }
        echo " -->
        <!-- Save Price end --> 
         <!-- discount % start -->
        <!-- ";
        // line 146
        if (($context["price"] ?? null)) {
            // line 147
            echo "           ";
            if (($context["special"] ?? null)) {
                // line 148
                echo "            <span class=\"discount-onprice\">";
                echo ($context["discount"] ?? null);
                echo "%</span>            
          ";
            }
            // line 150
            echo "        ";
        }
        echo " -->
        <!-- discount % end -->
      <a href=\"";
        // line 152
        echo ($context["href"] ?? null);
        echo "\">
        ";
        // line 154
        echo "        ";
        if (($context["images"] ?? null)) {
            // line 155
            echo "          ";
            // line 156
            echo "          ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["images"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 157
                echo "            <div class=\"second-image\">
              <img src=\"";
                // line 158
                echo twig_get_attribute($this->env, $this->source, $context["image"], "additional", [], "any", false, false, false, 158);
                echo "\" title=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" alt=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" class=\"img-fluid\"/>
              ";
                // line 160
                echo "            </div>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 162
            echo "        ";
        }
        // line 163
        echo "      </a>
      </div>
    <input type=\"hidden\" name=\"product_id\" value=\"";
        // line 165
        echo ($context["product_id"] ?? null);
        echo "\"/>
    ";
        // line 167
        echo "  </div>
  </div>
</form>";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/product/onsalethumb.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  538 => 167,  534 => 165,  530 => 163,  527 => 162,  520 => 160,  512 => 158,  509 => 157,  504 => 156,  502 => 155,  499 => 154,  495 => 152,  489 => 150,  483 => 148,  480 => 147,  478 => 146,  471 => 143,  466 => 141,  461 => 140,  459 => 139,  448 => 133,  438 => 125,  434 => 123,  432 => 120,  426 => 117,  420 => 115,  414 => 113,  412 => 112,  409 => 111,  407 => 110,  404 => 109,  401 => 107,  398 => 106,  392 => 105,  386 => 102,  372 => 101,  365 => 100,  362 => 99,  356 => 96,  353 => 95,  345 => 92,  338 => 91,  336 => 90,  331 => 89,  318 => 88,  316 => 87,  306 => 86,  303 => 85,  299 => 84,  295 => 83,  291 => 82,  284 => 81,  281 => 80,  275 => 77,  272 => 76,  264 => 73,  259 => 69,  245 => 68,  237 => 67,  233 => 65,  229 => 64,  225 => 63,  221 => 62,  214 => 61,  211 => 60,  204 => 56,  201 => 55,  194 => 53,  187 => 51,  185 => 50,  178 => 49,  174 => 48,  170 => 47,  160 => 46,  154 => 45,  151 => 44,  148 => 43,  143 => 42,  141 => 41,  138 => 40,  134 => 38,  127 => 35,  121 => 33,  118 => 32,  116 => 31,  112 => 29,  106 => 27,  98 => 26,  94 => 24,  90 => 22,  87 => 21,  83 => 20,  80 => 19,  78 => 18,  71 => 16,  64 => 14,  53 => 8,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/product/onsalethumb.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\product\\onsalethumb.twig");
    }
}
