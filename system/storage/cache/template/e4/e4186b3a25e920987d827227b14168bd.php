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

/* catalog/view/template/product/product.twig */
class __TwigTemplate_27366c38b61a8d724078adcd899e05bc extends Template
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
        echo "<div class=\"product-header\">
  ";
        // line 2
        echo ($context["header"] ?? null);
        echo "
  </div>
  <!DOCTYPE html>
  <html>
  <head>
  <script src=\"catalog/view/javascript/workdo/jquery.ez-plus.js\" type=\"text/javascript\"></script>
  <script src=\"catalog/view/javascript/workdo/web.js\" type=\"text/javascript\"></script>
  </head>
  </html>
  <div class=\"\">
  <div id=\"product-info\">
    <div class=\"\">";
        // line 13
        echo ($context["column_left"] ?? null);
        echo "
      <div id=\"content\" class=\"col\">
        
        <div class=\"productbg p-bg\">
        <div class=\"container\">            
          <div class=\"row\">
  <!-- Breadcrumb -->
  <div class=\"d-flex justify-content-between align-items-center back-page\">
    <div class=\"\">
    <div class=\"back-to-home\">
        <a href=\"";
        // line 23
        echo ($context["home"] ?? null);
        echo "\"><img src=\"image/catalog/back-to-home.svg\" alt=\"Back to home\"> &nbsp <span> ";
        echo ($context["back_to_main"] ?? null);
        echo "</span></a>
     </div>  
    </div>
    <div class=\"\">
      <ul class=\"breadcrumb\">
        ";
        // line 28
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 29
            echo "          <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 29);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 29);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 31
        echo "      </ul>  
    </div> 
  </div>
  <!-- Breadcrumb end -->

  <div class=\"col-lg-6 col-md-6 col-xs-12 pro-content t-50\">
    <div class=\"pro-review\">
    <div class=\"prsubdec\">
        ";
        // line 39
        if (($context["review_status"] ?? null)) {
            // line 40
            echo "          <div class=\"rating\">
            <li>";
            // line 41
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(1, 5));
            foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                // line 42
                echo "                ";
                if ((($context["rating"] ?? null) < $context["i"])) {
                    // line 43
                    echo "                <span class=\"fa-stack\"><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
              ";
                } else {
                    // line 45
                    echo "                <span class=\"fa-stack\"><i class=\"fa-solid fa-star fa-stack-1x\"></i><i class=\"fa-regular fa-star fa-stack-1x\"></i></span>
              ";
                }
                // line 47
                echo "              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 48
            echo "               </li>
              <li class=\"proreview\">
                <a id=\"ratecount\" href=\"\" onclick=\"\$('a[href=\\'#tab-review\\']').trigger('click'); return false;\">0 reviews</a>
              </li>
              <li>
                <a id=\"ratep\" href=\"#rt\" onclick=\"\$('a[href=\\'#tab-review\\']').trigger('click'); return false;\">Write a review</a>
              </li>
          </div>
        ";
        }
        // line 57
        echo "        <div class=\"pro-btn\"> 
          <form method=\"post\" data-oc-toggle=\"ajax\" class=\"d-inline-flex wc-btn\">
            <button type=\"submit\" formaction=\"";
        // line 59
        echo ($context["add_to_wishlist"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" class=\"btn pcrt wish\" title=\"";
        echo ($context["button_wishlist"] ?? null);
        echo "\" onclick=\"wishlist.add('";
        echo ($context["product_id"] ?? null);
        echo "');\"><img src=\"image/catalog/wishlist.svg\" alt=\"wishlist\">";
        echo "</button>
            <button type=\"submit\" formaction=\"";
        // line 60
        echo ($context["add_to_compare"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" class=\"btn pcrt compare\" title=\"";
        echo ($context["button_compare"] ?? null);
        echo "\" onclick=\"compare.add('";
        echo ($context["product_id"] ?? null);
        echo "');\"><svg width=\"16px\" height=\"16px\"><use xlink:href=\"#compare\"></use></svg>";
        echo "</button>
            <input type=\"hidden\" name=\"product_id\" value=\"";
        // line 61
        echo ($context["product_id"] ?? null);
        echo "\"/>
          </form>  
        </div>
      </div>
    </div>
        ";
        // line 66
        if (($context["manufacturer"] ?? null)) {
            // line 67
            echo "        <a class=\"product-name\" href=\"";
            echo ($context["manufacturers"] ?? null);
            echo "\">";
            echo ($context["manufacturer"] ?? null);
            echo "</a>
      ";
        }
        // line 69
        echo "      <h1>";
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <div class=\"products-specific\">
        <span class=\"products-details\"> Products Details: </span>
             <ul class=\"list-unstyled\">
              ";
        // line 73
        if (($context["manufacturer"] ?? null)) {
            // line 74
            echo "                  <li><span class=\"text-decor\">";
            echo ($context["text_manufacturer"] ?? null);
            echo "</span><a href=\"";
            echo ($context["manufacturers"] ?? null);
            echo "\">";
            echo ($context["manufacturer"] ?? null);
            echo "</a></li>
                ";
        }
        // line 75
        echo " 
                <li><span class=\"text-decor\">";
        // line 76
        echo ($context["text_model"] ?? null);
        echo "</span>";
        echo ($context["model"] ?? null);
        echo "</li>                
              </ul>
            <ul class=\"list-unstyled\">
                ";
        // line 79
        if (($context["reward"] ?? null)) {
            // line 80
            echo "                <li><span class=\"text-decor\">";
            echo ($context["text_reward"] ?? null);
            echo "</span>";
            echo ($context["reward"] ?? null);
            echo "</li>
                ";
        }
        // line 82
        echo "                <li><span class=\"text-decor\">";
        echo ($context["text_stock"] ?? null);
        echo "</span>";
        echo ($context["stock"] ?? null);
        echo "</li>
              </ul> 
            <ul class=\"list-unstyled\">
              ";
        // line 85
        if (($context["tax"] ?? null)) {
            // line 86
            echo "                <li>";
            echo ($context["text_tax"] ?? null);
            echo " ";
            echo ($context["tax"] ?? null);
            echo "</li>
              ";
        }
        // line 87
        echo " 
              ";
        // line 88
        if (($context["points"] ?? null)) {
            // line 89
            echo "                <li>";
            echo ($context["text_points"] ?? null);
            echo " ";
            echo ($context["points"] ?? null);
            echo "</li>
              ";
        }
        // line 90
        echo "   
            </ul>
      </div>
    <div id=\"product\" class=\"clearfix\">
      <form id=\"form-product\">
        ";
        // line 95
        if (($context["options"] ?? null)) {
            // line 96
            echo "       ";
            // line 97
            echo "       
       ";
            // line 98
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["options"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                // line 99
                echo "       ";
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 99) == "select")) {
                    // line 100
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 100)) {
                        echo " required";
                    }
                    echo "\">
           <label for=\"input-option-";
                    // line 101
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 101);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 101);
                    echo "</label> <select name=\"option[";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 101);
                    echo "]\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 101);
                    echo "\" class=\"form-select\">
             <option value=\"\">";
                    // line 102
                    echo ($context["text_select"] ?? null);
                    echo "</option>
             ";
                    // line 103
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 103));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 104
                        echo "               <option value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 104);
                        echo "\">";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 104);
                        echo "
                 ";
                        // line 105
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 105)) {
                            // line 106
                            echo "                   (";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 106);
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 106);
                            echo ")
                 ";
                        }
                        // line 107
                        echo "</option>
             ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 109
                    echo "           </select>
           <div id=\"error-option-";
                    // line 110
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 110);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 113
                echo "
       <div class=\"web_option\">
         ";
                // line 115
                if (($context["options"] ?? null)) {
                    // line 116
                    echo "           ";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(($context["options"] ?? null));
                    foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                        // line 117
                        echo "           ";
                        if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 117) == "radio")) {
                            // line 118
                            echo "           <div class=\"mb-3";
                            if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 118)) {
                                echo " required";
                            }
                            echo "\">
             <label class=\"form-label\">";
                            // line 119
                            echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 119);
                            echo "</label>
             <div id=\"input-option-";
                            // line 120
                            echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 120);
                            echo "\" class=\"custom-radio\">
               ";
                            // line 121
                            $context['_parent'] = $context;
                            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 121));
                            foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                                // line 122
                                echo "                 <div class=\"form-check\">
                   <label class=\"color-option\">
                     <input type=\"radio\" name=\"option[";
                                // line 124
                                echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 124);
                                echo "]\" value=\"";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 124);
                                echo "\" id=\"input-option-value-";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 124);
                                echo "\" class=\"form-check-input\"/> 
                     <span>";
                                // line 125
                                if (twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 125)) {
                                    echo "</span><img src=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 125);
                                    echo "\" alt=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 125);
                                    echo " ";
                                    if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 125)) {
                                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 125);
                                        echo " ";
                                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 125);
                                    }
                                    echo "\" class=\"img-thumbnail\"/>";
                                }
                                // line 126
                                echo "                     ";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 126);
                                echo "
                     ";
                                // line 130
                                echo "                   </label>
                 </div>
               ";
                            }
                            $_parent = $context['_parent'];
                            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                            $context = array_intersect_key($context, $_parent) + $_parent;
                            // line 133
                            echo "             </div>
             <div id=\"error-option-";
                            // line 134
                            echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 134);
                            echo "\" class=\"invalid-feedback\"></div>
           </div>
         ";
                        }
                        // line 136
                        echo "   
           ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 138
                    echo "         ";
                }
                // line 139
                echo "       </div>
       ";
                // line 140
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 140) == "checkbox")) {
                    // line 141
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 141)) {
                        echo " required";
                    }
                    echo "\">
           <label class=\"form-label\">";
                    // line 142
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 142);
                    echo "</label>
           <div id=\"input-option-";
                    // line 143
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 143);
                    echo "\">

             ";
                    // line 145
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["option"], "product_option_value", [], "any", false, false, false, 145));
                    foreach ($context['_seq'] as $context["_key"] => $context["option_value"]) {
                        // line 146
                        echo "               <div class=\"form-check\">
                 <input type=\"checkbox\" name=\"option[";
                        // line 147
                        echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 147);
                        echo "][]\" value=\"";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 147);
                        echo "\" id=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 147);
                        echo "\" class=\"form-check-input\"/> <label for=\"input-option-value-";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "product_option_value_id", [], "any", false, false, false, 147);
                        echo "\" class=\"form-check-label\">
                   ";
                        // line 148
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 148)) {
                            // line 149
                            echo "                     <img src=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "image", [], "any", false, false, false, 149);
                            echo "\" alt=\"";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 149);
                            echo " ";
                            if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 149)) {
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 149);
                                echo " ";
                                echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 149);
                            }
                            echo "\" class=\"img-thumbnail\"/>";
                        }
                        // line 150
                        echo "                   ";
                        echo twig_get_attribute($this->env, $this->source, $context["option_value"], "name", [], "any", false, false, false, 150);
                        echo "
                   ";
                        // line 151
                        if (twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 151)) {
                            // line 152
                            echo "                     (";
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price_prefix", [], "any", false, false, false, 152);
                            echo twig_get_attribute($this->env, $this->source, $context["option_value"], "price", [], "any", false, false, false, 152);
                            echo ")
                   ";
                        }
                        // line 153
                        echo "</label>
               </div>
             ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option_value'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 156
                    echo "
           </div>
           <div id=\"error-option-";
                    // line 158
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 158);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 161
                echo "
       ";
                // line 162
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 162) == "text")) {
                    // line 163
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 163)) {
                        echo " required";
                    }
                    echo "\">
           <label for=\"input-option-";
                    // line 164
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 164);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 164);
                    echo "</label> <input type=\"text\" name=\"option[";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 164);
                    echo "]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 164);
                    echo "\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 164);
                    echo "\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 164);
                    echo "\" class=\"form-control\"/>
           <div id=\"error-option-";
                    // line 165
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 165);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 168
                echo "
       ";
                // line 169
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 169) == "textarea")) {
                    // line 170
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 170)) {
                        echo " required";
                    }
                    echo "\">
           <label for=\"input-option-";
                    // line 171
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 171);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 171);
                    echo "</label> <textarea name=\"option[";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 171);
                    echo "]\" rows=\"5\" placeholder=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 171);
                    echo "\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 171);
                    echo "\" class=\"form-control\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 171);
                    echo "</textarea>
           <div id=\"error-option-";
                    // line 172
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 172);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 175
                echo "
       ";
                // line 176
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 176) == "file")) {
                    // line 177
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 177)) {
                        echo " required";
                    }
                    echo "\">
           <label for=\"button-upload-";
                    // line 178
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 178);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 178);
                    echo "</label>
           <div>
             <button type=\"button\" id=\"button-upload-";
                    // line 180
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 180);
                    echo "\" data-oc-toggle=\"upload\" data-oc-size-max=\"";
                    echo ($context["config_file_max_size"] ?? null);
                    echo "\" data-oc-size-error=\"";
                    echo ($context["error_upload_size"] ?? null);
                    echo "\" data-oc-url=\"";
                    echo ($context["upload"] ?? null);
                    echo "\" data-oc-target=\"#input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 180);
                    echo "\" class=\"btn btn-light btn-block\"><i class=\"fas fa-upload\"></i> ";
                    echo ($context["button_upload"] ?? null);
                    echo "</button>
             <input type=\"hidden\" name=\"option[";
                    // line 181
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 181);
                    echo "]\" value=\"\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 181);
                    echo "\"/>
           </div>
           <div id=\"error-option-";
                    // line 183
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 183);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 186
                echo "
       ";
                // line 187
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 187) == "date")) {
                    // line 188
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 188)) {
                        echo " required";
                    }
                    echo "\">
           <label for=\"input-option-";
                    // line 189
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 189);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 189);
                    echo "</label>
           <div class=\"input-group\">
             <input type=\"text\" name=\"option[";
                    // line 191
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 191);
                    echo "]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 191);
                    echo "\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 191);
                    echo "\" class=\"form-control date\"/>
             <div class=\"input-group-text\"><i class=\"fas fa-calendar\"></i></div>
           </div>
           <div id=\"error-option-";
                    // line 194
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 194);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 197
                echo "
       ";
                // line 198
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 198) == "datetime")) {
                    // line 199
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 199)) {
                        echo " required";
                    }
                    echo "\">
           <label for=\"input-option-";
                    // line 200
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 200);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 200);
                    echo "</label>
           <div class=\"input-group\">
             <input type=\"text\" name=\"option[";
                    // line 202
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 202);
                    echo "]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 202);
                    echo "\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 202);
                    echo "\" class=\"form-control datetime\"/>
             <div class=\"input-group-text\"><i class=\"fas fa-calendar\"></i></div>
           </div>

           <div id=\"error-option-";
                    // line 206
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 206);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 209
                echo "
       ";
                // line 210
                if ((twig_get_attribute($this->env, $this->source, $context["option"], "type", [], "any", false, false, false, 210) == "time")) {
                    // line 211
                    echo "         <div class=\"";
                    if (twig_get_attribute($this->env, $this->source, $context["option"], "required", [], "any", false, false, false, 211)) {
                        echo " required";
                    }
                    echo "\">
           <label for=\"input-option-";
                    // line 212
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 212);
                    echo "\" class=\"form-label\">";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "name", [], "any", false, false, false, 212);
                    echo "</label>
           <div class=\"input-group\">
             <input type=\"text\" name=\"option[";
                    // line 214
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 214);
                    echo "]\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "value", [], "any", false, false, false, 214);
                    echo "\" id=\"input-option-";
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 214);
                    echo "\" class=\"form-control time\"/>
             <div class=\"input-group-text\"><i class=\"fas fa-calendar\"></i></div>
           </div>
           <div id=\"error-option-";
                    // line 217
                    echo twig_get_attribute($this->env, $this->source, $context["option"], "product_option_id", [], "any", false, false, false, 217);
                    echo "\" class=\"invalid-feedback\"></div>
         </div>
       ";
                }
                // line 220
                echo "
     ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 222
            echo "     ";
        }
        // line 223
        echo "
          ";
        // line 224
        if (($context["subscription_plans"] ?? null)) {
            // line 225
            echo "            <hr/>
            <h3>";
            // line 226
            echo ($context["text_subscription"] ?? null);
            echo "</h3>

            <div class=\"required\">
              <select name=\"subscription_plan_id\" id=\"input-subscription\" class=\"form-select\">
                <option value=\"\">";
            // line 230
            echo ($context["text_select"] ?? null);
            echo "</option>
                ";
            // line 231
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["subscription_plans"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["subscription_plan"]) {
                // line 232
                echo "                  <option value=\"";
                echo twig_get_attribute($this->env, $this->source, $context["subscription_plan"], "subscription_plan_id", [], "any", false, false, false, 232);
                echo "\">";
                echo twig_get_attribute($this->env, $this->source, $context["subscription_plan"], "name", [], "any", false, false, false, 232);
                echo "</option>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['subscription_plan'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 234
            echo "              </select>

              ";
            // line 236
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["subscription_plans"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["subscription_plan"]) {
                // line 237
                echo "                <div id=\"subscription-description-";
                echo twig_get_attribute($this->env, $this->source, $context["subscription_plan"], "subscription_plan_id", [], "any", false, false, false, 237);
                echo "\" class=\"form-text subscription d-none\">";
                echo twig_get_attribute($this->env, $this->source, $context["subscription_plan"], "description", [], "any", false, false, false, 237);
                echo "</div>
              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['subscription_plan'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 239
            echo "
              <div id=\"error-subscription\" class=\"invalid-feedback\"></div>

            </div>
          ";
        }
        // line 243
        echo "   
          <div class=\"pro-qut\">
            <label for=\"input-quantity\" class=\"form-label text-decorop\">";
        // line 245
        echo ($context["entry_qty"] ?? null);
        echo "</label>
              <div class=\"op-box qty-plus-minus\">
              <button type=\"button\" class=\"form-control pull-left btn-number btnminus\" disabled=\"disabled\" data-type=\"minus\" data-field=\"quantity\">
                <span class=\"fa fa-minus\"></span> 
              </button>
              <input id=\"input-quantity\" type=\"text\" name=\"quantity\" value=\"";
        // line 250
        echo ($context["minimum"] ?? null);
        echo "\" size=\"2\" id=\"input-quantity\" class=\"form-control input-number pull-left\" />
              <button type=\"button\" class=\"form-control pull-left btn-number btnplus\" data-type=\"plus\" data-field=\"quantity\">
                <span class=\"fa fa-plus\"></span>
              </button>
              <div id=\"error-quantity\" class=\"form-text\"></div> 
            </div>
          </div>    
          <div class=\"homeadd d-flex justify-content-left\">
            <div class=\"pro-price\">
            ";
        // line 259
        if (($context["price"] ?? null)) {
            // line 260
            echo "            <div class=\"price\">
              ";
            // line 261
            if ( !($context["special"] ?? null)) {
                // line 262
                echo "                <span class=\"price-new\">";
                echo ($context["price"] ?? null);
                echo "</span>
              ";
            } else {
                // line 264
                echo "                <span class=\"price-new\">";
                echo ($context["special"] ?? null);
                echo "</span>
                <div class=\"wbfullprice\">
                  <span class=\"price-old\">";
                // line 266
                echo ($context["price"] ?? null);
                echo "</span>
                </div>
              ";
            }
            // line 269
            echo "              ";
            // line 272
            echo "            </div>
            ";
        }
        // line 274
        echo "          </div>
            <!-- <div class=\"wrap input-group\">
              <button type=\"button\" id=\"sub\" class=\"sub btn\">-</button>
              <input name=\"quantity\" class=\"count form-control\" type=\"text\" id=\"1\" value=\"1\" min=\"1\" />
              <button type=\"button\" id=\"add\" class=\"add btn\">+</button>
            </div> -->
            <button type=\"submit\" id=\"button-cart\" class=\"btn btn-primary btn-lg btn-block\">";
        // line 280
        echo ($context["button_cart"] ?? null);
        echo "<img alt=\"stor-bg\" src=\"image/catalog/stor-bg.svg\"></button>
            <input type=\"hidden\" name=\"product_id\" value=\"";
        // line 281
        echo ($context["product_id"] ?? null);
        echo "\"/>
          </div>
        </form>
          ";
        // line 284
        if ((($context["minimum"] ?? null) > 1)) {
            // line 285
            echo "            <div class=\"alert alert-info\"><i class=\"fas fa-info-circle\"></i>";
            echo ($context["text_minimum"] ?? null);
            echo "</div>
          ";
        }
        // line 287
        echo "       
      
           <!-- AddToAny BEGIN -->
          ";
        // line 298
        echo "            <script async src=\"https://static.addtoany.com/menu/page.js\"></script>
            <!-- AddToAny END -->
      
    </div>
   </div>
  
  <div class=\"col-lg-6 col-md-6 col-xs-12 zoom-left sticky t-50\">
    <div class=\"pro-bg\">
    ";
        // line 306
        if ((($context["thumb"] ?? null) || ($context["images"] ?? null))) {
            // line 307
            echo "<div class=\"image magnific-popup row\">
<div class=\"col-md-12 col-sm-12 col-xs-12 big-img\">
";
            // line 309
            if (($context["thumb"] ?? null)) {
                // line 310
                echo "<a href=\"";
                echo ($context["popup"] ?? null);
                echo "\" title=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" class=\"thumbnail\">
  <div class=\"zoomWrapper\">
  <img  id=\"img_01\" src=\"";
                // line 312
                echo ($context["thumb"] ?? null);
                echo "\" data-zoom-image=\"";
                echo ($context["popup"] ?? null);
                echo "\"  title=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" alt=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" class=\"img-thumbnail img-fluid\"/>
</div>
</a>
";
            }
            // line 315
            echo "   
</div>
<div class=\"col-md-12 col-sm-12 col-xs-12 gal-img\">
  ";
            // line 318
            if (($context["images"] ?? null)) {
                echo "                
<div id=\"gal1\" class=\"gallery_img\">
<a href=\"";
                // line 320
                echo ($context["popup"] ?? null);
                echo "\" class=\"elevatezoom-gallery img-fluid\" title=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" data-update=\"\" data-image=\"";
                echo ($context["thumb"] ?? null);
                echo "\"  data-zoom-image=\"";
                echo ($context["thumb"] ?? null);
                echo "\"><img  src=\"";
                echo ($context["thumb"] ?? null);
                echo "\" data-zoom-image=\"";
                echo ($context["popup"] ?? null);
                echo "\" id=\"img_01\" title=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" alt=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" class=\"img-thumbnail\"/></a>&nbsp;
      ";
                // line 321
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["images"] ?? null));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 322
                    echo "<a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["image"], "popup", [], "any", false, false, false, 322);
                    echo "\" title=\"";
                    echo ($context["heading_title"] ?? null);
                    echo "\" data-image=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["image"], "thumb", [], "any", false, false, false, 322);
                    echo "\"  data-zoom-image=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["image"], "thumb", [], "any", false, false, false, 322);
                    echo "\"><img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["image"], "thumb", [], "any", false, false, false, 322);
                    echo "\" title=\"";
                    echo ($context["heading_title"] ?? null);
                    echo "\" alt=\"";
                    echo ($context["heading_title"] ?? null);
                    echo "\" class=\"img-thumbnail elevatezoom-gallery img-fluid\"/></a>&nbsp;
      ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 324
                echo "</div>
  ";
            }
            // line 326
            echo "</div>
</div>
    ";
        }
        // line 329
        echo "  </div>
  </div>
  </div>
</div>
</div>
</div> 

        <div class=\"product-reviews\">
          <div class=\"container\">
            <div class=\"row\">
            </div>
              <div class=\"product-tab\">
                <ul class=\"nav nav-tabs\">
                  <li class=\"nav-item\"><a href=\"#tab-description\" id=\"description-tab\" class=\"nav-link active\" data-bs-toggle=\"tab\">";
        // line 342
        echo ($context["tab_description"] ?? null);
        echo "</a></li>
                  ";
        // line 343
        if (($context["attribute_groups"] ?? null)) {
            // line 344
            echo "                    <li class=\"nav-item\"><a href=\"#tab-specification\" id=\"specification-tab\" class=\"nav-link\" data-bs-toggle=\"tab\">";
            echo ($context["tab_attribute"] ?? null);
            echo "</a></li>
                  ";
        }
        // line 346
        echo "                  ";
        if (($context["review_status"] ?? null)) {
            // line 347
            echo "                    <li class=\"nav-item\"><a href=\"#tab-review\" id=\"review-tab\" class=\"nav-link\" data-bs-toggle=\"tab\">";
            echo ($context["tab_review"] ?? null);
            echo "</a></li>
                  ";
        }
        // line 349
        echo "                </ul>
                <div class=\"tab-content\">
                  <div id=\"tab-description\" class=\"tab-pane fade show active\" role=\"tabpanel\" aria-labelledby=\"description-tab\">
                    ";
        // line 352
        echo ($context["description"] ?? null);
        echo "
                </div>
                  </div>
                  ";
        // line 355
        if (($context["attribute_groups"] ?? null)) {
            // line 356
            echo "                    <div id=\"tab-specification\" class=\"tab-pane fade\" role=\"tabpanel\" aria-labelledby=\"specification-tab\">
                      <div class=\"table-responsive\">
                        <table class=\"table table-bordered\">
                          ";
            // line 359
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["attribute_groups"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["attribute_group"]) {
                // line 360
                echo "                            <thead>
                              <tr>
                                <td colspan=\"2\"><strong>";
                // line 362
                echo twig_get_attribute($this->env, $this->source, $context["attribute_group"], "name", [], "any", false, false, false, 362);
                echo "</strong></td>
                              </tr>
                            </thead>
                            <tbody>
                              ";
                // line 366
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["attribute_group"], "attribute", [], "any", false, false, false, 366));
                foreach ($context['_seq'] as $context["_key"] => $context["attribute"]) {
                    // line 367
                    echo "                                <tr>
                                  <td>";
                    // line 368
                    echo twig_get_attribute($this->env, $this->source, $context["attribute"], "name", [], "any", false, false, false, 368);
                    echo "</td>
                                  <td>";
                    // line 369
                    echo twig_get_attribute($this->env, $this->source, $context["attribute"], "text", [], "any", false, false, false, 369);
                    echo "</td>
                                </tr>
                              ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attribute'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 372
                echo "                            </tbody>
                          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attribute_group'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 374
            echo "                        </table>
                      </div>
                    </div>
                  ";
        }
        // line 378
        echo "                 ";
        if (($context["review_status"] ?? null)) {
            // line 379
            echo "                    <div id=\"tab-review\" class=\"tab-pane fade\">";
            echo ($context["review"] ?? null);
            echo "</div>
                  ";
        }
        // line 381
        echo "                </div>
              </div> 
            </div>
          </div>
        </div>

       ";
        // line 406
        echo "        </div>
        </div>
        </div>
  
        ";
        // line 410
        if (($context["tags"] ?? null)) {
            // line 411
            echo "          <p>";
            echo ($context["text_tags"] ?? null);
            echo "
            ";
            // line 412
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(range(0, twig_length_filter($this->env, ($context["tags"] ?? null))));
            foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                // line 413
                echo "              ";
                if (($context["i"] < (twig_length_filter($this->env, ($context["tags"] ?? null)) - 1))) {
                    // line 414
                    echo "                <a href=\"";
                    echo twig_get_attribute($this->env, $this->source, (($__internal_compile_0 = ($context["tags"] ?? null)) && is_array($__internal_compile_0) || $__internal_compile_0 instanceof ArrayAccess ? ($__internal_compile_0[$context["i"]] ?? null) : null), "href", [], "any", false, false, false, 414);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, (($__internal_compile_1 = ($context["tags"] ?? null)) && is_array($__internal_compile_1) || $__internal_compile_1 instanceof ArrayAccess ? ($__internal_compile_1[$context["i"]] ?? null) : null), "tag", [], "any", false, false, false, 414);
                    echo "</a>,
              ";
                } else {
                    // line 416
                    echo "                <a href=\"";
                    echo twig_get_attribute($this->env, $this->source, (($__internal_compile_2 = ($context["tags"] ?? null)) && is_array($__internal_compile_2) || $__internal_compile_2 instanceof ArrayAccess ? ($__internal_compile_2[$context["i"]] ?? null) : null), "href", [], "any", false, false, false, 416);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, (($__internal_compile_3 = ($context["tags"] ?? null)) && is_array($__internal_compile_3) || $__internal_compile_3 instanceof ArrayAccess ? ($__internal_compile_3[$context["i"]] ?? null) : null), "tag", [], "any", false, false, false, 416);
                    echo "</a>
              ";
                }
                // line 418
                echo "            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 419
            echo "          </p>
        ";
        }
        // line 421
        echo "  
        ";
        // line 422
        echo ($context["content_bottom"] ?? null);
        echo "
      </div>
      <div class=\"sub-product\">
        <div class=\"container\">
          <h1 class=\"heading text-left\"><span>Related Products</span></h1>
          <div class=\"\">
            ";
        // line 428
        if (($context["products"] ?? null)) {
            echo "                        
                <div class=\"rless related\">
                ";
            // line 430
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
                // line 431
                echo "                  <div class=\"col cless\">";
                echo $context["product"];
                echo "</div>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 432
            echo "              
              </div>
            ";
        }
        // line 435
        echo "          </div>
        </div>
      </div> 
      ";
        // line 438
        echo ($context["column_right"] ?? null);
        echo "
    </div>
  </div>
  </div>
  <script type=\"text/javascript\"><!--
  \$('#input-subscription').on('change', function (e) {
      var element = this;
  
      \$('.subscription').addClass('d-none');
  
      \$('#subscription-description-' + \$(element).val()).removeClass('d-none');
  });
  
  \$('#form-product').on('submit', function (e) {
      e.preventDefault();
      \$.ajax({
          url: 'index.php?route=checkout/cart|add&language=";
        // line 454
        echo ($context["language"] ?? null);
        echo "',
          type: 'post',
          data: \$('#form-product').serialize(),
          dataType: 'json',
          contentType: 'application/x-www-form-urlencoded',
          cache: false,
          processData: false,
          beforeSend: function () {
              \$('#button-cart').prop('disabled', true).addClass('loading');
          },
          complete: function () {
              \$('#button-cart').prop('disabled', false).removeClass('loading');
          },
          success: function (json) {
              \$('#form-product').find('.is-invalid').removeClass('is-invalid');
              \$('#form-product').find('.invalid-feedback').removeClass('d-block');
  
              if (json['error']) {
                  for (key in json['error']) {
                      \$('#input-' + key.replaceAll('_', '-')).addClass('is-invalid').find('.form-control, .form-select, .form-check-input, .form-check-label').addClass('is-invalid');
                      \$('#error-' + key.replaceAll('_', '-')).html(json['error'][key]).addClass('d-block');
                  }
              }
  
              if (json['success']) {
                  \$('#alert').prepend('<div class=\"a-one\"><div class=\"alert alert-success alert-dismissible\"><svg width=\"20px\" height=\"20px\"> <use xlink:href=\"#successi\"></use> </svg> ' + json['success'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div></div');
  
                  \$('#header-cart').load('index.php?route=common/cart|info');
              }
          },
          error: function (xhr, ajaxOptions, thrownError) {
              console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
          }
      });
  });
  
  
  \$('select[name=\\'recurring_id\\'], input[name=\"quantity\"]').change(function(){
    \$.ajax({
      url: 'index.php?route=product/product/getRecurringDescription',
      type: 'post',
      data: \$('input[name=\\'product_id\\'], input[name=\\'quantity\\'], select[name=\\'recurring_id\\']'),
      dataType: 'json',
      beforeSend: function() {
        \$('#recurring-description').html('');
      },
      success: function(json) {
        \$('.alert-dismissible, .text-danger').remove();
  
        if (json['success']) {
          \$('#recurring-description').html(json['success']);
        }
      }
    });
  });
  
  
  //plugin bootstrap minus and plus
      \$(document).ready(function() {
      \$('.btn-number').click(function(e){
      e.preventDefault();
      var fieldName = \$(this).attr('data-field');
      var type = \$(this).attr('data-type');
      var input = \$(\"input[name='\" + fieldName + \"']\");
      var currentVal = parseInt(input.val());
      if (!isNaN(currentVal)) {
      if (type == 'minus') {
      var minValue = parseInt(input.attr('min'));
      if (!minValue) minValue = 1;
      if (currentVal > minValue) {
      input.val(currentVal - 1).change();
      }
      if (parseInt(input.val()) == minValue) {
      \$(this).attr('disabled', true);
      }
  
      } else if (type == 'plus') {
      var maxValue = parseInt(input.attr('max'));
      if (!maxValue) maxValue = 999;
      if (currentVal < maxValue) {
      input.val(currentVal + 1).change();
      }
      if (parseInt(input.val()) == maxValue) {
      \$(this).attr('disabled', true);
      }
  
      }
      } else {
      input.val(0);
      }
      });
      \$('.input-number').focusin(function(){
      \$(this).data('oldValue', \$(this).val());
      });
      \$('.input-number').change(function() {
  
      var minValue = parseInt(\$(this).attr('min'));
      var maxValue = parseInt(\$(this).attr('max'));
      if (!minValue) minValue = 1;
      if (!maxValue) maxValue = 999;
      var valueCurrent = parseInt(\$(this).val());
      var name = \$(this).attr('name');
      if (valueCurrent >= minValue) {
      \$(\".btn-number[data-type='minus'][data-field='\" + name + \"']\").removeAttr('disabled')
      } else {
      alert('Sorry, the minimum value was reached');
      \$(this).val(\$(this).data('oldValue'));
      }
      if (valueCurrent <= maxValue) {
      \$(\".btn-number[data-type='plus'][data-field='\" + name + \"']\").removeAttr('disabled')
      } else {
      alert('Sorry, the maximum value was reached');
      \$(this).val(\$(this).data('oldValue'));
      }
      });
      \$(\".input-number\").keydown(function (e) {
      // Allow: backspace, delete, tab, escape, enter and .
      if (\$.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== - 1 ||
              // Allow: Ctrl+A
                      (e.keyCode == 65 && e.ctrlKey === true) ||
                      // Allow: home, end, left, right
                              (e.keyCode >= 35 && e.keyCode <= 39)) {
              // let it happen, don't do anything
              return;
              }
              // Ensure that it is a number and stop the keypress
              if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
              e.preventDefault();
              }
              });
      });
      //plugin bootstrap minus and plus

  \$(document).ready(function () {
      \$('.magnific-popup').magnificPopup({
          type: 'image',
          delegate: 'a',
          gallery: {
              enabled: true
          }
      });
  
      \$('.date').daterangepicker({
          singleDatePicker: true,
          autoApply: true,
          locale: {
              format: 'YYYY-MM-DD'
          }
      });
  
      \$('.time').daterangepicker({
          singleDatePicker: true,
          datePicker: false,
          autoApply: true,
          timePicker: true,
          timePicker24Hour: true,
          locale: {
              format: 'HH:mm'
          }
      }).on('show.daterangepicker', function (ev, picker) {
          picker.container.find('.calendar-table').hide();
      });
  
      \$('.datetime').daterangepicker({
          singleDatePicker: true,
          autoApply: true,
          timePicker: true,
          timePicker24Hour: true,
          locale: {
              format: 'YYYY-MM-DD HH:mm'
          }
      });
  });
  ";
        // line 628
        echo "    if (jQuery(window).width() >= 1200){
      //initiate the plugin and pass the id of the div containing gallery images
      \$(\"#zoom_03\").elevateZoom({gallery:'gallery_01', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: ''});
      //pass the images to Fancybox
      \$(\"#zoom_03\").bind(\"click\", function (e) {
        var ez = \$('#zoom_03').data('elevateZoom');
        \$.fancybox(ez.getGalleryList());
        return false;
      });
    };
    ";
        // line 639
        echo "  </script>
  <div class=\"cat-footer\">
  ";
        // line 641
        echo ($context["footer"] ?? null);
        echo "
  </div>";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/product/product.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  1395 => 641,  1391 => 639,  1379 => 628,  1203 => 454,  1184 => 438,  1179 => 435,  1174 => 432,  1165 => 431,  1161 => 430,  1156 => 428,  1147 => 422,  1144 => 421,  1140 => 419,  1134 => 418,  1126 => 416,  1118 => 414,  1115 => 413,  1111 => 412,  1106 => 411,  1104 => 410,  1098 => 406,  1090 => 381,  1084 => 379,  1081 => 378,  1075 => 374,  1068 => 372,  1059 => 369,  1055 => 368,  1052 => 367,  1048 => 366,  1041 => 362,  1037 => 360,  1033 => 359,  1028 => 356,  1026 => 355,  1020 => 352,  1015 => 349,  1009 => 347,  1006 => 346,  1000 => 344,  998 => 343,  994 => 342,  979 => 329,  974 => 326,  970 => 324,  949 => 322,  945 => 321,  927 => 320,  922 => 318,  917 => 315,  904 => 312,  896 => 310,  894 => 309,  890 => 307,  888 => 306,  878 => 298,  873 => 287,  867 => 285,  865 => 284,  859 => 281,  855 => 280,  847 => 274,  843 => 272,  841 => 269,  835 => 266,  829 => 264,  823 => 262,  821 => 261,  818 => 260,  816 => 259,  804 => 250,  796 => 245,  792 => 243,  785 => 239,  774 => 237,  770 => 236,  766 => 234,  755 => 232,  751 => 231,  747 => 230,  740 => 226,  737 => 225,  735 => 224,  732 => 223,  729 => 222,  722 => 220,  716 => 217,  706 => 214,  699 => 212,  692 => 211,  690 => 210,  687 => 209,  681 => 206,  670 => 202,  663 => 200,  656 => 199,  654 => 198,  651 => 197,  645 => 194,  635 => 191,  628 => 189,  621 => 188,  619 => 187,  616 => 186,  610 => 183,  603 => 181,  589 => 180,  582 => 178,  575 => 177,  573 => 176,  570 => 175,  564 => 172,  550 => 171,  543 => 170,  541 => 169,  538 => 168,  532 => 165,  518 => 164,  511 => 163,  509 => 162,  506 => 161,  500 => 158,  496 => 156,  488 => 153,  481 => 152,  479 => 151,  474 => 150,  461 => 149,  459 => 148,  449 => 147,  446 => 146,  442 => 145,  437 => 143,  433 => 142,  426 => 141,  424 => 140,  421 => 139,  418 => 138,  411 => 136,  405 => 134,  402 => 133,  394 => 130,  389 => 126,  375 => 125,  367 => 124,  363 => 122,  359 => 121,  355 => 120,  351 => 119,  344 => 118,  341 => 117,  336 => 116,  334 => 115,  330 => 113,  324 => 110,  321 => 109,  314 => 107,  307 => 106,  305 => 105,  298 => 104,  294 => 103,  290 => 102,  280 => 101,  273 => 100,  270 => 99,  266 => 98,  263 => 97,  261 => 96,  259 => 95,  252 => 90,  244 => 89,  242 => 88,  239 => 87,  231 => 86,  229 => 85,  220 => 82,  212 => 80,  210 => 79,  202 => 76,  199 => 75,  189 => 74,  187 => 73,  179 => 69,  171 => 67,  169 => 66,  161 => 61,  152 => 60,  143 => 59,  139 => 57,  128 => 48,  122 => 47,  118 => 45,  114 => 43,  111 => 42,  107 => 41,  104 => 40,  102 => 39,  92 => 31,  81 => 29,  77 => 28,  67 => 23,  54 => 13,  40 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/product/product.twig", "C:\\wamp64\\www\\kuldeep\\opencart\\gift\\catalog\\view\\template\\product\\product.twig");
    }
}
