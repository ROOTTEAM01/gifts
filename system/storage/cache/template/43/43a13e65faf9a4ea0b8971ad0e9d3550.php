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

/* extension/wdimgslider/catalog/view/template/module/wdimgslider.twig */
class __TwigTemplate_0dab09a99251cec2960ded86d27e5345 extends Template
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
        echo "<div class=\"s-panel\">
";
        // line 3
        echo "    <div class=\"imgslider\">
      ";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["banners"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["banner"]) {
            // line 5
            echo "        <div class=\"sliderel\">
          ";
            // line 6
            if (twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 6)) {
                // line 7
                echo "            <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "link", [], "any", false, false, false, 7);
                echo "\"><img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 7);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 7);
                echo "\" class=\"mx-auto img-fluid\"/></a>
          ";
            } else {
                // line 9
                echo "            <img src=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "image", [], "any", false, false, false, 9);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["banner"], "title", [], "any", false, false, false, 9);
                echo "\" class=\"mx-auto img-fluid\"/>
          ";
            }
            // line 11
            echo "      <div class=\"slidertext\">
      <div class=\"slideff\">
        <div class=\"slidesmall\">
          ";
            // line 14
            echo twig_get_attribute($this->env, $this->source, $context["banner"], "description", [], "any", false, false, false, 14);
            echo "
        </div>
      </div>
      </div>
    </div>
      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['banner'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 20
        echo "    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "extension/wdimgslider/catalog/view/template/module/wdimgslider.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 20,  75 => 14,  70 => 11,  62 => 9,  52 => 7,  50 => 6,  47 => 5,  43 => 4,  40 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/wdimgslider/catalog/view/template/module/wdimgslider.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\wdimgslider\\catalog\\view\\template\\module\\wdimgslider.twig");
    }
}
