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

/* catalog/view/template/product/thumb.twig */
class __TwigTemplate_8db70610e93ad2fc2bc046dde945938fe19ebad7d325ef84e50b1cbea4abee44 extends Template
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
    <div class=\"image\">
      <!-- Save Price start -->
      <!-- ";
        // line 6
        if (($context["price"] ?? null)) {
            // line 7
            echo "          ";
            if (($context["special"] ?? null)) {
                echo "            
            <span class=\"you-save\">";
                // line 8
                echo ($context["save"] ?? null);
                echo "</span> 
        ";
            }
            // line 10
            echo "      ";
        }
        echo " -->
      <!-- Save Price end --> 
        <!-- discount % start -->
      <!-- ";
        // line 13
        if (($context["price"] ?? null)) {
            // line 14
            echo "          ";
            if (($context["special"] ?? null)) {
                // line 15
                echo "          <span class=\"discount-onprice\">";
                echo ($context["discount"] ?? null);
                echo "%</span>            
        ";
            }
            // line 17
            echo "      ";
        }
        echo " -->
      <!-- discount % end -->
    <a href=\"";
        // line 19
        echo ($context["href"] ?? null);
        echo "\">
      ";
        // line 21
        echo "      ";
        if (($context["images"] ?? null)) {
            // line 22
            echo "        ";
            // line 23
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["images"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                // line 24
                echo "          <div class=\"second-image\">
            <img src=\"";
                // line 25
                echo twig_get_attribute($this->env, $this->source, $context["image"], "additional", [], "any", false, false, false, 25);
                echo "\" title=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" alt=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" class=\"img-fluid\"/>
            ";
                // line 27
                echo "          </div>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 29
            echo "      ";
        }
        // line 30
        echo "    </a>
    </div>
    <div class=\"caption\">
      <div class=\"button-group\">
        <button class=\"wish\" type=\"submit\" formaction=\"";
        // line 34
        echo ($context["add_to_wishlist"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["button_wishlist"] ?? null);
        echo "\"><span>add to wishlist</span>
        <img src=\"image/catalog/wishlist.svg\" alt=\"\"></button>
        <button class=\"compare\" type=\"submit\" formaction=\"";
        // line 36
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
        // line 42
        echo ($context["manufacturer_id"] ?? null);
        echo "\" class=\"textdeb\">";
        echo ($context["manufacturer"] ?? null);
        echo "</a></span>
        </div>
        <h4 class=\"protitle\"><a href=\"";
        // line 44
        echo ($context["href"] ?? null);
        echo "\">";
        echo ($context["name"] ?? null);
        echo "</a></h4>
      </div>
      <!-- ";
        // line 46
        if (($context["review_status"] ?? null)) {
            // line 47
            echo "      <div class=\"rating\">
        ";
            // line 48
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, 5));
            foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                // line 49
                echo "            ";
                if ((($context["rating"] ?? null) < $context["i"])) {
                    // line 50
                    echo "            <span class=\"fa-stack\"><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
          ";
                } else {
                    // line 52
                    echo "            <span class=\"fa-stack\"><i class=\"fa-solid fa-star fa-stack-1x\"></i><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
          ";
                }
                // line 54
                echo "          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "               
          <span class=\"rate-tot\">(";
            // line 55
            echo ($context["tab_review"] ?? null);
            echo ")</span>
      </div>
    ";
        }
        // line 57
        echo "  -->
        <!-- discount % start -->
        <!-- ";
        // line 59
        if (($context["price"] ?? null)) {
            // line 60
            echo "            ";
            if (($context["special"] ?? null)) {
                // line 61
                echo "            <span class=\"discount-onprice\">";
                echo ($context["discount"] ?? null);
                echo "%</span>            
          ";
            }
            // line 63
            echo "        ";
        }
        echo " -->
        <!-- discount % end -->
        
        <p class=\"catlist-des\">";
        // line 66
        echo ($context["description"] ?? null);
        echo "</p>
        ";
        // line 68
        echo "        <div class=\"web_option\">
          ";
        // line 69
        if (($context["options"] ?? null)) {
            // line 70
            echo "            ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["options"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                // line 71
                echo "              ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 71) == "select")) {
                    // line 72
                    echo "              <div class=\"form-group\">
                  <div class=\"";
                    // line 73
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 73)) {
                        echo " required";
                    }
                    echo " select\">
                  <label for=\"input-option-";
                    // line 74
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 74);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 74);
                    echo "</label><select name=\"option[";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 74);
                    echo "]\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 74);
                    echo "\" class=\"form-select\">
                    <option value=\"\">";
                    // line 75
                    echo ($context["text_select"] ?? null);
                    echo "</option>
                    ";
                    // line 76
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 76));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 77
                        echo "                      <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 77);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 77);
                        echo "
                       ";
                        // line 78
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 78)) {
                            // line 79
                            echo "                          (";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 79);
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 79);
                            echo ")
                        ";
                        }
                        // line 81
                        echo "                      </option> 
                    ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 83
                    echo "                  </select>
                  <div id=\"error-option-";
                    // line 84
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 84);
                    echo "\" class=\"invalid-feedback\"></div>
                </div>
              </div>
              ";
                }
                // line 88
                echo "              ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 88) == "radio")) {
                    // line 89
                    echo "                <div class=\"mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 89)) {
                        echo " required";
                    }
                    echo "\">
                  <label class=\"form-label\">";
                    // line 90
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 90);
                    echo "</label>
                  <div id=\"input-option-";
                    // line 91
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 91);
                    echo "\" class=\"custom-radio\">
                    ";
                    // line 92
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 92));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 93
                        echo "                      <div class=\"form-check\">
                        <label class=\"color-option\">
                          <input type=\"radio\" name=\"option[";
                        // line 95
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 95);
                        echo "]\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 95);
                        echo "\" id=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 95);
                        echo "\" class=\"form-check-input\"/> 
                          <span>";
                        // line 96
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 96)) {
                            echo "</span><img src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 96);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 96);
                            echo " ";
                            if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 96)) {
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 96);
                                echo " ";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 96);
                            }
                            echo "\" class=\"img-thumbnail\"/>";
                        }
                        // line 97
                        echo "                          ";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 97);
                        echo "
                          ";
                        // line 101
                        echo "                        </label>
                      </div>
                    ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 104
                    echo "                  </div>
                  <div id=\"error-option-";
                    // line 105
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 105);
                    echo "\" class=\"invalid-feedback\"></div>
                </div>
              ";
                }
                // line 108
                echo "              ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 108) == "checkbox")) {
                    // line 109
                    echo "                <div class=\"mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 109)) {
                        echo " required";
                    }
                    echo "\">
                  <label class=\"form-label\">";
                    // line 110
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 110);
                    echo "</label>
                  <div id=\"input-option-";
                    // line 111
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 111);
                    echo "\">
                    ";
                    // line 112
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 112));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 113
                        echo "                      <div class=\"form-check\">
                        <input type=\"checkbox\" name=\"option[";
                        // line 114
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 114);
                        echo "][]\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 114);
                        echo "\" id=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 114);
                        echo "\" class=\"form-check-input\"/> <label for=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 114);
                        echo "\" class=\"form-check-label\">
                          ";
                        // line 115
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 115)) {
                            // line 116
                            echo "                            <img src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 116);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 116);
                            echo " ";
                            if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 116)) {
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 116);
                                echo " ";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 116);
                            }
                            echo "\" class=\"img-thumbnail\"/>";
                        }
                        // line 117
                        echo "                          ";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 117);
                        echo "
                          ";
                        // line 118
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 118)) {
                            // line 119
                            echo "                            (";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 119);
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 119);
                            echo ")
                          ";
                        }
                        // line 120
                        echo "</label>
                      </div>
                    ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 123
                    echo "                  </div>
                  <div id=\"error-option-";
                    // line 124
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 124);
                    echo "\" class=\"invalid-feedback\"></div>
                </div>
              ";
                }
                // line 127
                echo "              ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 127) == "text")) {
                    // line 128
                    echo "                <div class=\"mb-3";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 128)) {
                        echo " required";
                    }
                    echo "\">
                  <label for=\"input-option-";
                    // line 129
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 129);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 129);
                    echo "</label> <input type=\"text\" name=\"option[";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 129);
                    echo "]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 129);
                    echo "\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 129);
                    echo "\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 129);
                    echo "\" class=\"form-control\"/>
                  <div id=\"error-option-";
                    // line 130
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 130);
                    echo "\" class=\"invalid-feedback\"></div>
                </div>
              ";
                }
                // line 133
                echo "            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 134
            echo "          ";
        }
        // line 135
        echo "        </div>
        ";
        // line 137
        echo "        <div class=\"pro-price\">
          ";
        // line 138
        if (($context["price"] ?? null)) {
            // line 139
            echo "          <div class=\"price\">
            ";
            // line 140
            if ( !($context["special"] ?? null)) {
                // line 141
                echo "              <span class=\"price-new\">";
                echo ($context["price"] ?? null);
                echo "</span>
            ";
            } else {
                // line 143
                echo "              <span class=\"price-new\">";
                echo ($context["special"] ?? null);
                echo "</span>
              <div class=\"wbfullprice\">
                <span class=\"price-old\">";
                // line 145
                echo ($context["price"] ?? null);
                echo "</span>
              </div>
            ";
            }
            // line 148
            echo "            ";
            // line 151
            echo "          </div>
          ";
        }
        // line 153
        echo "        </div>
      <div class=\"homeadd d-flex justify-content-left\">
       
        <!-- <div class=\"wrap input-group\">
          <button type=\"button\" id=\"sub\" class=\"sub btn\">-</button>
          <input name=\"quantity\" class=\"count form-control\" type=\"text\" id=\"1\" value=\"1\" min=\"1\" />
          <button type=\"button\" id=\"add\" class=\"add btn\">+</button>
        </div> -->
        <button type=\"submit\" formaction=\"";
        // line 161
        echo ($context["add_to_cart"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" class=\"cartb\"><span>";
        echo ($context["button_cart"] ?? null);
        echo "</span><img alt=\"stor-bg\" src=\"image/catalog/stor-bg.svg\">
        </button>
      </div>
    </div>
    
    
    <input type=\"hidden\" name=\"product_id\" value=\"";
        // line 167
        echo ($context["product_id"] ?? null);
        echo "\"/>
    ";
        // line 169
        echo "  </div>
  </div>
</form>

";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/product/thumb.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  540 => 169,  536 => 167,  525 => 161,  515 => 153,  511 => 151,  509 => 148,  503 => 145,  497 => 143,  491 => 141,  489 => 140,  486 => 139,  484 => 138,  481 => 137,  478 => 135,  475 => 134,  469 => 133,  463 => 130,  449 => 129,  442 => 128,  439 => 127,  433 => 124,  430 => 123,  422 => 120,  415 => 119,  413 => 118,  408 => 117,  395 => 116,  393 => 115,  383 => 114,  380 => 113,  376 => 112,  372 => 111,  368 => 110,  361 => 109,  358 => 108,  352 => 105,  349 => 104,  341 => 101,  336 => 97,  322 => 96,  314 => 95,  310 => 93,  306 => 92,  302 => 91,  298 => 90,  291 => 89,  288 => 88,  281 => 84,  278 => 83,  271 => 81,  264 => 79,  262 => 78,  255 => 77,  251 => 76,  247 => 75,  237 => 74,  231 => 73,  228 => 72,  225 => 71,  220 => 70,  218 => 69,  215 => 68,  211 => 66,  204 => 63,  198 => 61,  195 => 60,  193 => 59,  189 => 57,  183 => 55,  175 => 54,  171 => 52,  167 => 50,  164 => 49,  160 => 48,  157 => 47,  155 => 46,  148 => 44,  141 => 42,  130 => 36,  123 => 34,  117 => 30,  114 => 29,  107 => 27,  99 => 25,  96 => 24,  91 => 23,  89 => 22,  86 => 21,  82 => 19,  76 => 17,  70 => 15,  67 => 14,  65 => 13,  58 => 10,  53 => 8,  48 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/product/thumb.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\catalog\\view\\template\\product\\thumb.twig");
    }
}
