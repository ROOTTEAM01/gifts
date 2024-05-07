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

/* catalog/view/template/common/menu.twig */
class __TwigTemplate_926ffb414a312f5f39d88b837891dc1a extends Template
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
        echo "<div class=\"container_wb_megamenu\">
<div id=\"stamenu\">
";
        // line 3
        if (($context["categories"] ?? null)) {
            // line 4
            echo "    <nav id=\"menu\" class=\"navbar\">
       <div class=\"navbar-expand-md\">
      <button type=\"button\" class=\"btn-navbar navbar-toggler\" onclick=\"openNav()\" data-bs-toggle=\"collapse\" data-bs-target=\".navbar-ex1-collapse\"><i class=\"fa fa-bars\"></i></button>
    </div> 
    <div id=\"wr-menu-icon \">
      
     <div class=\"wrmenu collapsed\" data-bs-toggle=\"collapse\" data-bs-target=\"#under-menu\" aria-expanded=\"false\" aria-controls=\"collapseExample\">
    ";
            // line 14
            echo "       ";
            // line 17
            echo "               ";
            // line 18
            echo "          </div>
        </div>
  <div id=\"mySidenav\" class=\"sidenav menu-vertical\">
  <div id=\"under-menu\" class=\"\">
       <div class=\"close-nav\">
          <span class=\"categories\">";
            // line 23
            echo ($context["text_category"] ?? null);
            echo "</span>
          <a href=\"javascript:void(0)\" class=\"closebtn float-end\" onclick=\"closeNav()\"><i class=\"fa fa-close\"></i></a>
        </div>     
      <div class=\"navbar-collapse navbar-ex1-collapse\">
        <ul class=\"nav navbar-nav\">
          ";
            // line 28
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
                // line 29
                echo "            ";
                if (twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 29)) {
                    // line 30
                    echo "              <li class=\"nav-item dropdown\"><a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 30);
                    echo "\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\"><!--<img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "image", [], "any", false, false, false, 30);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 30);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 30);
                    echo "\">--> ";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 30);
                    echo "<i class=\"fa fa-angle-down enaleng\"></i></a>
                <div class=\"dropdown-menu\">
                  <div class=\"dropdown-inner\">
                    ";
                    // line 33
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(twig_array_batch(twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 33), (twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, $context["category"], "children", [], "any", false, false, false, 33)) / twig_round(twig_get_attribute($this->env, $this->source, $context["category"], "column", [], "any", false, false, false, 33), 1, "ceil"))));
                    foreach ($context['_seq'] as $context["_key"] => $context["children"]) {
                        // line 34
                        echo "                      <ul class=\"list-unstyled\">
                        ";
                        // line 35
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable($context["children"]);
                        foreach ($context['_seq'] as $context["_key"] => $context["child"]) {
                            // line 36
                            echo "                         <!--3rd level-->
                          <li class=\"dropdown-submenu\"><a href=\"";
                            // line 37
                            echo twig_get_attribute($this->env, $this->source, $context["child"], "href", [], "any", false, false, false, 37);
                            echo "\" class=\"nav-link submenu-title\">";
                            echo twig_get_attribute($this->env, $this->source, $context["child"], "name", [], "any", false, false, false, 37);
                            echo "</a>
                            ";
                            // line 38
                            if (twig_get_attribute($this->env, $this->source, $context["child"], "grand_childs", [], "any", false, false, false, 38)) {
                                // line 39
                                echo "                            <ul class=\"list-unstyled grand-child\">
                              ";
                                // line 40
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, $context["child"], "grand_childs", [], "any", false, false, false, 40));
                                foreach ($context['_seq'] as $context["_key"] => $context["grand_child"]) {
                                    // line 41
                                    echo "                              <li> <a href=\"";
                                    echo twig_get_attribute($this->env, $this->source, $context["grand_child"], "href", [], "any", false, false, false, 41);
                                    echo "\"> ";
                                    echo twig_get_attribute($this->env, $this->source, $context["grand_child"], "name", [], "any", false, false, false, 41);
                                    echo " </a> </li>
                              ";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['grand_child'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 43
                                echo "                            </ul>
                            ";
                            }
                            // line 45
                            echo "                          </li>
                           <!--3rd level over-->
                        ";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['child'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 48
                        echo "                      </ul>
                    ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['children'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 50
                    echo "                  </div>
                  <a href=\"";
                    // line 51
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 51);
                    echo "\" class=\"see-all\">";
                    echo ($context["text_all"] ?? null);
                    echo " ";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 51);
                    echo "</a>
                </div>
              </li>
            ";
                } else {
                    // line 55
                    echo "              <li class=\"nav-item\"><a href=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 55);
                    echo "\" class=\"nav-link\"><!--<img src=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "image", [], "any", false, false, false, 55);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 55);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 55);
                    echo "\"> --> ";
                    echo twig_get_attribute($this->env, $this->source, $context["category"], "name", [], "any", false, false, false, 55);
                    echo "</a></li>
            ";
                }
                // line 57
                echo "          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 58
            echo "        </ul>
      </div>
    </div>
  </div>
    </nav>
";
        }
        // line 64
        echo "<div class=\"w3-overlay w3-animate-opacity\"  onclick=\"closeNav()\" style=\"cursor:pointer\" id=\"myOverlay\"></div>
</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/common/menu.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  194 => 64,  186 => 58,  180 => 57,  166 => 55,  155 => 51,  152 => 50,  145 => 48,  137 => 45,  133 => 43,  122 => 41,  118 => 40,  115 => 39,  113 => 38,  107 => 37,  104 => 36,  100 => 35,  97 => 34,  93 => 33,  78 => 30,  75 => 29,  71 => 28,  63 => 23,  56 => 18,  54 => 17,  52 => 14,  43 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/common/menu.twig", "C:\\wamp64\\www\\kuldeep\\opencart\\gift\\catalog\\view\\template\\common\\menu.twig");
    }
}
