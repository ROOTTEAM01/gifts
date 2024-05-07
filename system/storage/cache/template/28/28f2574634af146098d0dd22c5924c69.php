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

/* extension/wdofferbanner/catalog/view/template/module/wdofferbanner.twig */
class __TwigTemplate_d69096e44c18345c0c9ff17c32a583e7 extends Template
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
        echo "<div class=\"offer-banner\">
  <div class=\"container\">
    <div class=\"row offer_bnr\">
    ";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["banners"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["banner"]) {
            // line 5
            echo "    <div class=\"col-md-6 col-xs-12 offer-dec\">
      <div class=\"offerdesc\">
        ";
            // line 7
            echo twig_get_attribute($this->env, $this->source, $context["banner"], "description", [], "any", false, false, false, 7);
            echo " 
      </div>
    </div>
    <div class=\"col-md-6 col-xs-12\">
      <div class=\"beffect\">
        ";
            // line 12
            if (twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 12)) {
                // line 13
                echo "          <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 13);
                echo "\"><img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 13);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 13);
                echo "\" class=\"mx-auto img-fluid\"/></a>
        ";
            } else {
                // line 15
                echo "          <img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 15);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 15);
                echo "\" class=\"mx-auto img-fluid\"/>
        ";
            }
            // line 16
            echo " 
      </div>
    </div>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['banner'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 20
        echo "  </div>
  </div>
</div>";
    }

    public function getTemplateName()
    {
        return "extension/wdofferbanner/catalog/view/template/module/wdofferbanner.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 20,  78 => 16,  70 => 15,  60 => 13,  58 => 12,  50 => 7,  46 => 5,  42 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/wdofferbanner/catalog/view/template/module/wdofferbanner.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\wdofferbanner\\catalog\\view\\template\\module\\wdofferbanner.twig");
    }
}
