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

/* extension/wdcategory/catalog/view/template/module/wdcategory.twig */
class __TwigTemplate_eaadcf3794d356fc3b4cb41149337e9eaa21a9505508ee3f7370c8303a7f10e9 extends Template
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
        echo "<div class=\"category-bg\">
\t<div class=\"container top-category\">
\t\t<div class=\"row\">
\t\t\t\t<div class=\"category_secheading\">
\t\t\t\t\t<h3>Gifts for <b>all occasions</b></h3>
\t\t\t\t\t<a class=\"btn btn-primary btn-section\" href=\"#\" tabindex=\"0\"><span>check more product</span></a>
\t\t\t\t</div>
<div class=\"col-xs-12\">
<div class=\"wdcategory\">
";
        // line 10
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["items"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 11
            echo "\t<div class=\"wd-item-layout\">
\t\t<div class=\"wd-item-img\">
\t\t\t<a href=\"";
            // line 13
            echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 13);
            echo "\">
\t\t\t\t<img src=\"";
            // line 14
            echo twig_get_attribute($this->env, $this->source, $context["item"], "thumb", [], "any", false, false, false, 14);
            echo "\" alt=\"";
            echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 14);
            echo "\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 14);
            echo "\" class=\"img-fluid img-responsive\"/>
\t\t\t</a>
\t\t</div>
\t\t<h4 class=\"wd-item-title\">
\t\t\t<div class=\"catbr\">
\t\t\t\t<a href=\"";
            // line 19
            echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 19);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["item"], "title", [], "any", false, false, false, 19);
            echo "</a>
\t\t\t\t<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.</p>
\t\t\t</div>
\t\t<div class=\"wd-item-caption\">
\t\t\t<a href=\"";
            // line 23
            echo twig_get_attribute($this->env, $this->source, $context["item"], "href", [], "any", false, false, false, 23);
            echo "\" class=\"btn btn-primary\">show more</a>
\t\t\t";
            // line 25
            echo "\t\t</div>
\t\t</h4>
\t</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 29
        echo "</div>
</div>
</div>
</div>
</div>";
    }

    public function getTemplateName()
    {
        return "extension/wdcategory/catalog/view/template/module/wdcategory.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  94 => 29,  85 => 25,  81 => 23,  72 => 19,  60 => 14,  56 => 13,  52 => 11,  48 => 10,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/wdcategory/catalog/view/template/module/wdcategory.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\wdcategory\\catalog\\view\\template\\module\\wdcategory.twig");
    }
}
