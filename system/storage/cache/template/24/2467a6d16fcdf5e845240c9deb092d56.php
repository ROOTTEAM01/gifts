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

/* extension/blogger/catalog/view/template/module/blogger.twig */
class __TwigTemplate_02d3bcecb85ba4420dab10b76c4a0515 extends Template
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
        echo "<div class=\"blog-bg\">
<div class=\"container\">
    <div class=\"secheading\">
        <div class=\"blog-ctn\">
            <h3>Gifts</h3>
            <h1 class=\"heading text-left\"><span>blgos</span></h1>
        </div>
        <a class=\"btn btn-primary btn-section\" href=\"#\" tabindex=\"0\">show more products</a>
    </div>
    <div class=\"row\">
    <div class=\"col-xs-12 box-content\">
        <div class=\"box-product\">
            <div class=\"wbblog\">
            ";
        // line 14
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["blogs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["blog"]) {
            // line 15
            echo "                <div class=\"product-block cless\">
                     <div class=\"blogshadow blog-thumbnail\">
                    ";
            // line 17
            if (twig_get_attribute($this->env, $this->source, $context["blog"], "image", [], "any", false, false, false, 17)) {
                // line 18
                echo "                        <div class=\"blog-left\">
                            <div class=\"workdo-blog-image\">
                                <img src=\"";
                // line 20
                echo twig_get_attribute($this->env, $this->source, $context["blog"], "image", [], "any", false, false, false, 20);
                echo "\" alt=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" title=\"";
                echo ($context["heading_title"] ?? null);
                echo "\" class=\"img-fluid\" />
                                <div class=\"blog-post-image-hover\"> </div>
                                ";
                // line 28
                echo "                            </div>
                        </div>
                    ";
            }
            // line 31
            echo "                    <div class=\"blog-right\">
                        <p class=\"name\">@johndoe</p>
                        <h4><a href=\"";
            // line 33
            echo twig_get_attribute($this->env, $this->source, $context["blog"], "href", [], "any", false, false, false, 33);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["blog"], "title", [], "any", false, false, false, 33);
            echo "</a> </h4>
                        <div class=\"workdo-post-author\">
                            ";
            // line 36
            echo "                        </div>
                        <div class=\"blog-desc\">";
            // line 37
            echo twig_get_attribute($this->env, $this->source, $context["blog"], "description", [], "any", false, false, false, 37);
            echo "</div>
                        <div class=\"date-time blogdt\">
                            <span class=\"date-time\">";
            // line 39
            echo twig_get_attribute($this->env, $this->source, $context["blog"], "date_added", [], "any", false, false, false, 39);
            echo "</span>
                        </div> 
                        <div class=\"blog-date blog-bottom\">
                            <div class=\"read_link\"> 
                           <a class=\"btn btn-primary read_more\" href=\"";
            // line 43
            echo twig_get_attribute($this->env, $this->source, $context["blog"], "href", [], "any", false, false, false, 43);
            echo "\">";
            echo ($context["text_read_more"] ?? null);
            echo "</a>
                            </div>
                            
                        </div>
                        
                        
                          ";
            // line 55
            echo " 
                    </div>
                    ";
            // line 60
            echo "                </div>
            </div>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['blog'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 63
        echo "            </div>
            
        </div>
    </div>
</div>
       
</div>
</div>
</div>";
    }

    public function getTemplateName()
    {
        return "extension/blogger/catalog/view/template/module/blogger.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  129 => 63,  121 => 60,  117 => 55,  106 => 43,  99 => 39,  94 => 37,  91 => 36,  84 => 33,  80 => 31,  75 => 28,  66 => 20,  62 => 18,  60 => 17,  56 => 15,  52 => 14,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/blogger/catalog/view/template/module/blogger.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\blogger\\catalog\\view\\template\\module\\blogger.twig");
    }
}
