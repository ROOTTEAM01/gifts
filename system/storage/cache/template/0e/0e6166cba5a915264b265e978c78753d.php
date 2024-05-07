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

/* extension/wbimgbanner/catalog/view/template/module/wbimgbanner.twig */
class __TwigTemplate_15c6456bcad4b06914837cd5525cd3fa extends Template
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
        echo "<div class=\"wbimg col-md-6 col-xs-12\"> 
    <div class=\"row\"> 
          ";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["banners"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["banner"]) {
            // line 4
            echo "          <div class=\"col-md-6 col-xs-12 cless imgdec\">
              <div class=\"beffect\">
              <div class=\"imgimg\">
              ";
            // line 7
            if (twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 7)) {
                // line 8
                echo "                <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 8);
                echo "\"><img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 8);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 8);
                echo "\" class=\"mx-auto img-fluid\"/></a>
              ";
            } else {
                // line 10
                echo "                <img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 10);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 10);
                echo "\" class=\"mx-auto img-fluid\"/>
              ";
            }
            // line 12
            echo "              </div>
            </div>
            <div class=\"imgtext\">
              <div class=\"imgdesc\">
                ";
            // line 16
            echo twig_get_attribute($this->env, $this->source, $context["banner"], "description", [], "any", false, false, false, 16);
            echo "
              </div>
            </div>
          </div>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['banner'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 21
        echo "  </div>
</div>
</div>
</div>
</div>";
    }

    public function getTemplateName()
    {
        return "extension/wbimgbanner/catalog/view/template/module/wbimgbanner.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 21,  76 => 16,  70 => 12,  62 => 10,  52 => 8,  50 => 7,  45 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/wbimgbanner/catalog/view/template/module/wbimgbanner.twig", "/var/www/html/opencart-1to5/oc-gifts-main/gifts-quickstart/extension/wbimgbanner/catalog/view/template/module/wbimgbanner.twig");
    }
}
