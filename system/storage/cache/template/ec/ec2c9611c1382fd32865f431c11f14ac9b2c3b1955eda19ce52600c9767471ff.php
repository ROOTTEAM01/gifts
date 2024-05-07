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

/* extension/wdonsale/catalog/view/template/module/wdonsale.twig */
class __TwigTemplate_c806952eab9fd77557979acd0344beaa88546136c99e38efb5156427f2cc1f13 extends Template
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
        echo "<div class=\"onsale_pro\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"onsale-ctn\">
                <h2>Bestseller</h2>
                <a class=\"btn btn-primary btn-section\" href=\"#\" tabindex=\"0\">show more products</a>
            </div>
            <div class=\"col-xs-12 on-pro\">
<div class=\"wdonsale\">
";
        // line 10
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["products"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 11
            echo "<div class=\"col cless\">";
            echo $context["product"];
            echo "</div>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 13
        echo "</div>
</div>
</div>
</div>
</div>";
    }

    public function getTemplateName()
    {
        return "extension/wdonsale/catalog/view/template/module/wdonsale.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  61 => 13,  52 => 11,  48 => 10,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "extension/wdonsale/catalog/view/template/module/wdonsale.twig", "C:\\xampp\\htdocs\\gifts-quickstart\\extension\\wdonsale\\catalog\\view\\template\\module\\wdonsale.twig");
    }
}
